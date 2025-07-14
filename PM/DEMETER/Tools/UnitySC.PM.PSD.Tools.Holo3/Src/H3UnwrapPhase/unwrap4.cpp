/***************************************************************************
  Librairie   : UNWRAP4.C

  Fonction    : Module de demodulation hierarchique d'images phasees. (voir
				rapport de DEA E.COLON 1994)

  Compilation : Visual C++ v5.0

  Auteur      : Eric Colon

  Date        : 27/10/93

----------------------------------------------------------------------------
  Mise a jour											Vers  Par	Date
  Creation												1.00  EC	27/10/93
  Adaptation pour systeme 32bits VISUAL C++ v4.0 et		2.00  EC    15/07/96
  portage vers WINDOWS 95
  Portage vers MSVC 5.0									2.01  EC    24/04/98

----------------------------------------------------------------------------
  Fonctions	  : 
  Unwrap4					Demodulation hierarchique  

****************************************************************************/
#include "stdafx.h"

// == Librairies standards
#include <windows.h>      
#include <stdlib.h>
#include <math.h>
#include <stdlib.h>
#include <malloc.h>
#include <stdio.h>
#include <time.h>

// == Constantes locales 
#define BIAS_ERROR 		0xFFFF			// Niveau de gris d'une erreur de phase
#define BIAS_NOUNWRAP   0				// Niveau de gris d'un point non d�modul�
										// de traitement
#define BIAS_ZERO       0x7FFF			// Niveau de gris du zero dans le bias
#define PHASE_NOMASK    0				// Niveau de gris externe au masque
#define FOUND_LEFTRIGHT 3				// Zone non d�modul�e � gauche et � droite
#define FOUND_LEFT      2				// Zone non d�modul�e � gauche              
#define FOUND_RIGHT     1				// Zone non d�modul�e � droite  
#define NOTFOUND        0				// Pas de zone non d�modul�e 

// == D�finition de types
typedef unsigned short PIXELDEPTH;		// Profondeur d'un pixel
typedef PIXELDEPTH *MATRIXPTR;			// Matrice de pixels
typedef PIXELDEPTH *VECTORPTR;			// Vecteur de pixels
typedef struct MATRIXINFO{				// Structure de donn�es permettant la
	long x;								// gestion des coordonn�es de matrices
	long y;
	long Fiability;
	struct MATRIXINFO *Next;
} MatrixInfo;
                  
// == Variables globales priv�es
static long MatrixSize,HalfMatrixSize;	// Taille et demi taille de matrice
static long MatrixItems;				// Nombre d'elements dans la matrice
static long PhiNoise,PhiStep;			// Seuil de bruit et de saut de phase        
static long BMin,BMax;					// Niveaux extr�mes => echelle
static long NumberOfPass;				// Nombre de traitements sur une matrice
static MatrixInfo *Stack=NULL;

// == D�claration des fonctions 
// -- Op�rations sur les matrices
static long GetMatrixLine(MATRIXPTR M,long Li,VECTORPTR Line);
static long GetMatrixColumn(MATRIXPTR M,long Co,VECTORPTR Column);
static long PutMatrixLine(MATRIXPTR M,long Li,VECTORPTR Line);
static long PutMatrixColumn(MATRIXPTR M,long Co,VECTORPTR Column);
static long ClearMatrix(MATRIXPTR M,unsigned char Value);
static long CpyMatrix(MATRIXPTR M1,MATRIXPTR M2);
static long CompareMatrix(MATRIXPTR M1,MATRIXPTR M2);

// -- Fonctions de gestion de pile
static long PushMatrixStack(MatrixInfo *(*Head),MatrixInfo *Matrix);
static long PopMatrixStack(MatrixInfo *(*Head),MatrixInfo *Matrix);
static long RemoveMatrixStack(MatrixInfo *(*Head),MatrixInfo *Matrix);
static long PopMatrix(MatrixInfo *Matrix);
static long PushMatrix(MatrixInfo *Matrix);

// -- Fonctions de d�modulation
static long UnwrapVR(long Id,VECTORPTR VWPhi,VECTORPTR VB1,VECTORPTR VB2);
static long UnwrapVL(long Id,VECTORPTR VWPhi,VECTORPTR VB1,VECTORPTR VB2);
static long FindVectorUnwrap(long *Id,VECTORPTR VB1,VECTORPTR VB2,VECTORPTR VWPhi);
static long FindMatrixHUnwrap(long *Id,long *Jd,MATRIXPTR MH,MATRIXPTR MV,MATRIXPTR MWPhi);
static long FindMatrixVUnwrap(long *Id,long *Jd,MATRIXPTR MH,MATRIXPTR MV,MATRIXPTR MWPhi);
static long UnwrapMatrixH(MATRIXPTR MH,MATRIXPTR MV,MATRIXPTR MWPhi);
static long UnwrapMatrixV(MATRIXPTR MH,MATRIXPTR MV,MATRIXPTR MWPhi);
static long UnwrapMatrix(MATRIXPTR MWPhi,MATRIXPTR MB);
static long CheckMatrix(MATRIXPTR MB);
static long GetArea(PIXELDEPTH *image,long m,long n,long x,long y,long dx,long dy,PIXELDEPTH *buffer);
static long PutArea(PIXELDEPTH *image,long m,long n,long x,long y,long dx,long dy,PIXELDEPTH *buffer);
static long GetArea(unsigned char *image,long m,long n,long x,long y,long dx,long dy,PIXELDEPTH *buffer);
static long MatrixFiability(MATRIXPTR MB);
static long VectorFiability(VECTORPTR V);


/************************************************************************
  Fonction       : Unwrap4
  
  Syntaxe        : long Unwrap4(unsigned short *pDest,unsigned char *pSrc,unsigned char *pMask,
							long nLi,long nCo,long nStartLi,long nStartCo,
							long phasestep,long phasenoise,
							long matsize,long npass) 


  D�modulation de l'image phas�e modulo 2PI identifi�e par source. Le 
  param�tre masque d�finit la zone d'int�ret du traitement. L'image
  d�modul�e est stock�e en target.
  La phase modulo 2PI varie de 0 � 255 niveaux de gris.
  L'algorithme utilis� est une d�modulation hi�rarchique (voir rapport
  DEA Eric Colon 1994)
  
  Parametres       Description
  -----------------------------------------------------------------------
  pDest			   Pointeur vers la zone resultat
  pSrc	           Pointeur vers la phase codee modulo 255
  pMask			   Pointeur vers le masque de traitement
  nLi,nCo		   Dimensions des images
  nStartLi,nStartCo	Li,Co du point de depart
  phasestep        Seuil de d�tection d'un saut de phase
  phasenoise       Seuil de d�tection d'une discontinuit�
  matsize		   dimension du noyau de traitement
  npass			   nombre de passes
   
  Val retourn�es : 
  La fonction retourne -1 si une erreur s'est produite et 0 dans le cas
  contraire.
  
 ************************************************************************/
long Unwrap4(
	unsigned short *pDest16,
	unsigned char *pSrc,
	unsigned char *pMask,
	long nLi,long nCo,
    long nStartLi,long nStartCo,
	long phasestep,long phasenoise,
	long matsize,long MinFiability) 
{
	VECTORPTR VB1=NULL;
	MATRIXPTR MWPhi=NULL,MB=NULL,MB1=NULL,MMask=NULL;
	MatrixInfo MatInfo;
	long RetValue,x,y,i,size;
	long Iteration=0; 
	long UwFrameTop,UwFrameBottom;
	long UwFrameLeft,UwFrameRight;

	// -- Initialisation    
	BMin=10000;
	BMax=-10000;
	PhiStep=phasestep;
	PhiNoise=phasenoise;
	MatrixSize=matsize;
	HalfMatrixSize=(MatrixSize-1)/2;
	MatrixItems=MatrixSize*MatrixSize;
	NumberOfPass=2;
	size=nLi*nCo;
  
	// -- R�server de la m�moire pour les diff�rentes variables
	VB1=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
	MWPhi=(MATRIXPTR)malloc(MatrixSize*MatrixSize*sizeof(PIXELDEPTH));
	MB=(MATRIXPTR)malloc(MatrixSize*MatrixSize*sizeof(PIXELDEPTH));
	MB1=(MATRIXPTR)malloc(MatrixSize*MatrixSize*sizeof(PIXELDEPTH));
	MMask=(MATRIXPTR)malloc(MatrixSize*MatrixSize*sizeof(PIXELDEPTH));
	if((VB1==NULL)||(MWPhi==NULL)||(MB==NULL)||(MB1==NULL)||(MMask==NULL)) {
		free(VB1);free(MWPhi);free(MB);free(MB1);free(MMask);
		return(-1);
	}

	// -- Initialisations
	UwFrameTop=MatrixSize;
	UwFrameBottom=nLi-MatrixSize;
	UwFrameLeft=MatrixSize;
	UwFrameRight=nCo-MatrixSize;

	// -- Retravailler l'image phas�e en fonction du masque
	for(i=0;i<size;i++) {
		if (pMask[i]!=0) {
			if(pSrc[i]!=255) pSrc[i]++;
			else pSrc[i]=(unsigned char)255;
		}
		else pSrc[i]=0;
	}

	// Chercher le maxi dans le masque
	long MaskMax=0;
	for(i=0;i<size;i++) MaskMax=__max(MaskMax,pMask[i]);

	// -- Initialiser l'image des niveaux
	for(i=0;i<size;i++) pDest16[i]=BIAS_NOUNWRAP;
	
	// == Marquer le niveau de d�part dans l'image des niveaux
	pDest16[nStartLi*nCo+nStartCo]=BIAS_ZERO;

	// -- Empiler les coordonn�es de la surface de d�part
	MatInfo.x=nStartCo;MatInfo.y=nStartLi;MatInfo.Fiability=100;
	if(PushMatrix(&MatInfo)!=0) { 
		free(VB1);free(MWPhi);free(MB);free(MB1);free(MMask);
		return(-1);
	}

	// == Boucle de cr�ation de l'image des niveaux
	while(PopMatrix(&MatInfo)!=-1) 
	{
		// -- Lire la matrice phas�e et la matrice des niveaux
		GetArea(
			pDest16,
			nLi,nCo,
			MatInfo.x-HalfMatrixSize,
			MatInfo.y-HalfMatrixSize,
			MatrixSize,
			MatrixSize,
			MB);

		GetArea(
			pSrc,
			nLi,nCo,
			MatInfo.x-HalfMatrixSize,
			MatInfo.y-HalfMatrixSize,
			MatrixSize,
			MatrixSize,
			MWPhi);

		GetArea(
			pMask,
			nLi,nCo,
			MatInfo.x-HalfMatrixSize,
			MatInfo.y-HalfMatrixSize,
			MatrixSize,
			MatrixSize,
			MMask);

		// -- D�moduler la matrice
		RetValue=UnwrapMatrix(MWPhi,MB);
		if (RetValue!=0) {
			free(VB1);free(MWPhi);free(MB);free(MB1);free(MMask);
			return(-1);
		}

		// -- Stocker la matrice calcul�e dans l'image des niveaux  
		PutArea(
			pDest16,
			nLi,nCo,
			MatInfo.x-HalfMatrixSize,
			MatInfo.y-HalfMatrixSize,
			MatrixSize,
			MatrixSize,
			MB);

		// Chercher la valeur min !=0 dans MMask
		long MaskCoeff=0;
		if (MaskMax)
		{
			MaskCoeff=255;
			for (long i=0;i<MatrixSize*MatrixSize;i++)
				if (MMask[i])
					MaskCoeff=min(MMask[i],MaskCoeff);
			MaskCoeff=MaskCoeff*100/MaskMax;
		}
		else
		{
			MaskCoeff=100;
		}

		// -- Determiner la fiabilite de la matrice
		long MFiability=(MatInfo.Fiability+MaskCoeff+MatrixFiability(MB))/3;

		// -- Garder les coordonn�es de la derni�re matrice 
		x=MatInfo.x;
		y=MatInfo.y;

		// Les matrices dont la fiaibilite est inferieure a 75 n'engendrent pas
		// c'est pour eviter les "mongols"...
		if (true)
//		if (MFiability>=MinFiability*100)
		{
			// -- V�rifier la direction de d�modulation Nord
			if(y-MatrixSize>UwFrameTop) {
				GetMatrixLine(MB,0,VB1);
				MatInfo.x=x;
				MatInfo.y=y-MatrixSize+1;
				MatInfo.Fiability=MFiability;
				GetArea(
					pDest16,
					nLi,nCo,
					MatInfo.x-HalfMatrixSize,
					MatInfo.y-HalfMatrixSize,
					MatrixSize,
					MatrixSize,
					MB1);
				if(CheckMatrix(MB1)) 
				{
					if(PushMatrix(&MatInfo)!=0) {
						free(VB1);free(MWPhi);free(MB);free(MB1);free(MMask);
						return(-1);
					} 
				}
			}

			// -- V�rifier la direction de d�modulation Sud
			if(y+MatrixSize<UwFrameBottom) {
				GetMatrixLine(MB,MatrixSize-1,VB1);
				MatInfo.x=x;
				MatInfo.y=y+MatrixSize-1;
				MatInfo.Fiability=MFiability;
				GetArea(
					pDest16,
					nLi,nCo,
					MatInfo.x-HalfMatrixSize,
					MatInfo.y-HalfMatrixSize,
					MatrixSize,
					MatrixSize,
					MB1);
				if(CheckMatrix(MB1)) 
				{
					if(PushMatrix(&MatInfo)!=0) {
						free(VB1);free(MWPhi);free(MB);free(MB1);free(MMask);
						return(-1);
					} 
				}  
			}  

			// -- V�rifier la direction de d�modulation Ouest
			if(x-MatrixSize>UwFrameLeft) {
				GetMatrixColumn(MB,0,VB1);
				MatInfo.x=x-MatrixSize+1;
				MatInfo.y=y;
				MatInfo.Fiability=MFiability;
				GetArea(
					pDest16,
					nLi,nCo,
					MatInfo.x-HalfMatrixSize,
					MatInfo.y-HalfMatrixSize,
					MatrixSize,
					MatrixSize,
					MB1);
				if(CheckMatrix(MB1)) 
				{
					if(PushMatrix(&MatInfo)!=0) {
						free(VB1);free(MWPhi);free(MB);free(MB1);free(MMask);
						return(-1);
					} 
				} 
			}
		}  

		// -- V�rifier la direction de d�modulation Est
		if(x+MatrixSize<UwFrameRight) {
			GetMatrixColumn(MB,MatrixSize-1,VB1);
			MatInfo.x=x+MatrixSize-1;
			MatInfo.y=y;
			MatInfo.Fiability=MFiability;
			GetArea(
				pDest16,
				nLi,nCo,
				MatInfo.x-HalfMatrixSize,
				MatInfo.y-HalfMatrixSize,
				MatrixSize,
				MatrixSize,
				MB1);
			if(CheckMatrix(MB1)) 
			{
				if(PushMatrix(&MatInfo)!=0) 
				{
					free(VB1);free(MWPhi);free(MB);free(MB1);free(MMask);
					return(-1);
				} 
			}
		}
	    Iteration++; 
	}

	// -- image des niveaux
	for (i=0;i<size;i++) 
	{
		if((pDest16[i]!=BIAS_NOUNWRAP)&&
		   (pDest16[i]!=BIAS_ERROR)&&
		   (pDest16[i]!=PHASE_NOMASK))
		{
			pDest16[i]=pDest16[i]-(unsigned short)BMin+1;
		}
		else
		{
			pDest16[i]=0;
		}
	}

	// -- Fin de la demodulation
	free(VB1);free(MWPhi);free(MB);free(MB1);free(MMask);
	return(0);
}

/** MatrixFiability ******************************************************/
/* Fonction        : Compte le nombre de BIAS_ERROR et de BIAS_NOUNWRAP  */
/*                   dans une matrice de niveaux et retourne un coef     */
/*                   entre 0 et 10000 representant la fiabilite			 */
/* Version         : 1.0                                                 */
/* Date            : 11/02/02                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : M                      : matrice de niveau          */
/* Var globales    : MatrixSize,BIAS_NOUNWRAP,BIAS_ERROR                 */
/* Var Modifi�es   :                                                     */
/* Val retournee   : >=0                    : nombre de points erron�s   */
/*                                            ou non d�modul�s           */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long MatrixFiability(MATRIXPTR MB) {
  long n=0;
  for(long i=0;i<MatrixItems;i++) {
    if((MB[i]==BIAS_ERROR)||(MB[i]==BIAS_NOUNWRAP)) n++;
  }

  return 10000-10000*n/MatrixItems;
}


static long VectorFiability(VECTORPTR V) {
  long n=0;
  for(long i=0;i<MatrixSize;i++) {
    if((V[i]==BIAS_ERROR)||(V[i]==BIAS_NOUNWRAP)) n++;
  }
  return 10000-10000*n/MatrixSize;
}

/** CheckVector **********************************************************/
/* Fonction        : Compte le nombre de BIAS_ERROR et de BIAS_NOUNWRAP  */
/*                   dans un vecteur de niveaux                          */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : V                      : vecteur de niveau          */
/* Var globales    : MatrixSize,BIAS_NOUNWRAP,BIAS_ERROR                 */
/* Var Modifi�es   :                                                     */
/* Val retournee   : >=0                    : nombre de points erron�s   */
/*                                            ou non d�modul�s           */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long CheckVector(VECTORPTR V) {
  long n=0;
  for(long i=0;i<MatrixSize;i++) {
    if((V[i]==BIAS_ERROR)||(V[i]==BIAS_NOUNWRAP)) n++;
  }
  return(n);
}

/** UnwrapMatrix *********************************************************/
/* Fonction        : D�module une matrice et cr�er la matrice des niveaux*/
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : MB                     : Matrice des niveaux        */
/*                   MWPhi                  : Matrice de phase mod 2PI   */
/* Var globales    : MatrixSize,PIXELDEPTH,NumberOfPass,BIAS_ERROR       */
/*                   BIAS_NOUNWRAP,                                      */
/* Var Modifi�es   : MB,Bmax,Bmin                                        */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long UnwrapMatrix(MATRIXPTR MWPhi,MATRIXPTR MB) {
  long i,j;

  // -- R�server la place n�cessaire pour les matrices de travail
  MATRIXPTR MV=(MATRIXPTR)malloc(MatrixSize*MatrixSize*sizeof(PIXELDEPTH));
  MATRIXPTR MH=(MATRIXPTR)malloc(MatrixSize*MatrixSize*sizeof(PIXELDEPTH));
  MATRIXPTR MB1=(MATRIXPTR)malloc(MatrixSize*MatrixSize*sizeof(PIXELDEPTH));
  if((MV==NULL)||(MH==NULL)||(MB1==NULL)) {
    free(MV);free(MH);free(MB1);
    return(-1);
  }
  
  // -- Initialiser les matrices
  CpyMatrix(MB,MV);
  CpyMatrix(MB,MH);
  CpyMatrix(MB,MB1);
  
  // -- Boucle de d�modulation horizontale et verticale
  long pass=0;
  while(pass<NumberOfPass) {
    UnwrapMatrixH(MH,MV,MWPhi);
    UnwrapMatrixV(MH,MV,MWPhi);
    pass++;
  }
  
  for(j=0;j<MatrixSize;j++) {
    for(i=0;i<MatrixSize;i++) {
      if((MH[j*MatrixSize+i]==BIAS_ERROR)||(MV[j*MatrixSize+i]==BIAS_ERROR)) MB[j*MatrixSize+i]=BIAS_ERROR;
      else if((MH[j*MatrixSize+i]==BIAS_NOUNWRAP)&&(MV[j*MatrixSize+i]!=BIAS_NOUNWRAP)) MB[j*MatrixSize+i]=MV[j*MatrixSize+i];
           else if((MH[j*MatrixSize+i]!=BIAS_NOUNWRAP)&&(MV[j*MatrixSize+i]==BIAS_NOUNWRAP)) MB[j*MatrixSize+i]=MH[j*MatrixSize+i];
                else MB[j*MatrixSize+i]=MH[j*MatrixSize+i];
    }
  }
  
  if(CompareMatrix(MB,MB1)==0) {
    for(j=0;j<MatrixSize;j++) 
      for(i=0;i<MatrixSize;i++) 
        if(MB[j*MatrixSize+i]==BIAS_NOUNWRAP) MB[j*MatrixSize+i]=BIAS_ERROR;
  }
  free(MV);free(MH);free(MB1);
  return(0);
}
  
/** UnwrapMatrixV ********************************************************/
/* Fonction        : D�module une matrice dans le sens vertical   et     */
/*                   initialise la matrice des niveaux verticaux         */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : MH                     : Matrice niv horizontaux    */
/*                   MV                     : Matrice niv verticaux      */
/*                   MWPhi                  : Matrice de phase mod 2PI   */
/* Var globales    : MatrixSize,PIXELDEPTH                               */
/* Var Modifi�es   : MH,MV                                               */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long UnwrapMatrixV(MATRIXPTR MH,MATRIXPTR MV,MATRIXPTR MWPhi) {
  long j,i,RetValue,Direction;
  VECTORPTR VB1,VB2,VWPhi;

  // -- R�server la place n�cessaire pour les vecteurs de travail
  VB1=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  VB2=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  VWPhi=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  if((VB1==NULL)||(VB2==NULL)||(VWPhi==NULL)) {
    free(VB1);free(VB2);free(VWPhi);
    return(-1);
  }

  for(i=0;i<MatrixSize;i++) {
    Direction=FindMatrixVUnwrap(&i,&j,MH,MV,MWPhi);
    if (Direction==NOTFOUND) 
	{
        free(VB1);free(VB2);free(VWPhi);
		return(0);
	}
    RetValue=GetMatrixColumn(MV,i,VB1);
    RetValue=GetMatrixColumn(MH,i,VB2);
    RetValue=GetMatrixColumn(MWPhi,i,VWPhi);
    switch(Direction) {
      case FOUND_LEFT :      // D�modulation vers la droite
        RetValue=UnwrapVL(j,VWPhi,VB1,VB2);
        break;
      case FOUND_RIGHT :     // D�modulation vers la gauche
        RetValue=UnwrapVR(j,VWPhi,VB1,VB2);
        break;
      case FOUND_LEFTRIGHT : // D�modulation � gauche puis � droite
        RetValue=UnwrapVL(j,VWPhi,VB1,VB2);
        RetValue=UnwrapVR(j,VWPhi,VB1,VB2);
        break;     
      default :
        free(VB1);free(VB2);free(VWPhi);
        return(-1);
    }
    PutMatrixColumn(MV,i,VB1);
    PutMatrixColumn(MH,i,VB2);  
  } 

  free(VB1);free(VB2);free(VWPhi);
  return(0);
}

/** UnwrapMatrixH ********************************************************/
/* Fonction        : D�module une matrice dans le sens horizontal et     */
/*                   initialise la matrice des niveaux horizontaux       */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : MH                     : Matrice niv horizontaux    */
/*                   MV                     : Matrice niv verticaux      */
/*                   MWPhi                  : Matrice de phase mod 2PI   */
/* Var globales    : MatrixSize,PIXELDEPTH                               */
/* Var Modifi�es   : MH,MV                                               */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long UnwrapMatrixH(MATRIXPTR MH,MATRIXPTR MV,MATRIXPTR MWPhi) {
  long j,i,RetValue,Direction;
  VECTORPTR VB1,VB2,VWPhi;

  // -- R�server la place n�cessaire pour les vecteurs de travail
  VB1=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  VB2=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  VWPhi=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  if((VB1==NULL)||(VB2==NULL)||(VWPhi==NULL)) {
    free(VB1);free(VB2);free(VWPhi);
    return(-1);
  }


  i=0;
  for(j=0;j<MatrixSize;j++) {
    Direction=FindMatrixHUnwrap(&i,&j,MH,MV,MWPhi);
    if(Direction==NOTFOUND) 
	{
	    free(VB1);free(VB2);free(VWPhi);
		return(0);
	}
    RetValue=GetMatrixLine(MH,j,VB1);
    RetValue=GetMatrixLine(MV,j,VB2);
    RetValue=GetMatrixLine(MWPhi,j,VWPhi);
    switch(Direction) {
      case FOUND_LEFT :      // D�modulation vers la droite
        RetValue=UnwrapVL(i,VWPhi,VB1,VB2);
        break;
      case FOUND_RIGHT :     // D�modulation vers la gauche
        RetValue=UnwrapVR(i,VWPhi,VB1,VB2);
        break;
      case FOUND_LEFTRIGHT : // D�modulation � gauche puis � droite
        RetValue=UnwrapVR(i,VWPhi,VB1,VB2);
        RetValue=UnwrapVL(i,VWPhi,VB1,VB2);
        break;     
      default :
        free(VB1);free(VB2);free(VWPhi);
        return(-1);
    }
    PutMatrixLine(MH,j,VB1);
    PutMatrixLine(MV,j,VB2);  
  } 
  free(VB1);free(VB2);free(VWPhi);
  return(0);
}

/** FindMatrixHUnwrap ****************************************************/
/* Fonction        : Cherche une zone horizontale non d�modul�e dans une */
/*                   matrice de niveau et retourne les coordon�es de     */
/*                   de cette zone ainsi que la direction du traitement  */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : Id                     : Colonne contenant zone     */
/*                   Jd                     : Ligne contenant zone       */
/*                   MH                     : Matrice niveaux horizontaux*/
/*                   MV                     : Matrice niveaux verticaux  */
/*                   MWPhi                  : Matrice de phase mod 2PI   */
/* Var globales    : MatrixSize,PIXELDEPTH                               */
/* Var Modifi�es   : Id,Jd                                               */
/* Val retournee   : FOUND_LEFT             : trouv� zone � gauche       */
/*                   FOUND_RIGHT            : trouv� zone � droite       */
/*                   FOUND_LEFTRIGHT        : trouv� zone � G et � D     */
/*                   NOTFOUND               : pas de zone non d�modul�e  */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long FindMatrixHUnwrap(long *Id,long *Jd,MATRIXPTR MH,MATRIXPTR MV,MATRIXPTR MWPhi) {
  long j,RetValue;
  VECTORPTR VB1,VB2,VWPhi;

  // -- R�server la place n�cessaire pour les vecteurs de travail
  VB1=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  VB2=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  VWPhi=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  if((VB1==NULL)||(VB2==NULL)||(VWPhi==NULL)) {
    free(VB1);free(VB2);free(VWPhi);
    return(-1);
  }
  
  for(j=*Jd;j<MatrixSize;j++) {
    RetValue=GetMatrixLine(MH,j,VB1);
    RetValue=GetMatrixLine(MV,j,VB2);
    RetValue=GetMatrixLine(MWPhi,j,VWPhi);
    RetValue=FindVectorUnwrap(Id,VB1,VB2,VWPhi);
    if(RetValue!=NOTFOUND) {
      *Jd=j;
      PutMatrixLine(MH,j,VB1);
      free(VB1);free(VB2);free(VWPhi);
      return(RetValue);
    }
  }
  free(VB1);free(VB2);free(VWPhi);
  return(NOTFOUND);
}

/** FindMatrixVUnwrap ****************************************************/
/* Fonction        : Cherche une zone verticale non d�modul�e dans une   */
/*                   matrice de niveau et retourne les coordon�es de     */
/*                   de cette zone ainsi que la direction du traitement  */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : Id                     : Colonne contenant zone     */
/*                   Jd                     : Ligne contenant zone       */
/*                   MH                     : Matrice niveaux horizontaux*/
/*                   MV                     : Matrice niveaux verticaux  */
/*                   MWPhi                  : Matrice de phase mod 2PI   */
/* Var globales    : MatrixSize,PIXELDEPTH                               */
/* Var Modifi�es   : Id,Jd                                               */
/* Val retournee   : FOUND_LEFT             : trouv� zone � gauche       */
/*                   FOUND_RIGHT            : trouv� zone � droite       */
/*                   FOUND_LEFTRIGHT        : trouv� zone � G et � D     */
/*                   NOTFOUND               : pas de zone non d�modul�e  */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long FindMatrixVUnwrap(long *Id,long *Jd,MATRIXPTR MH,MATRIXPTR MV,MATRIXPTR MWPhi) {
  long i,RetValue;
  VECTORPTR VB1,VB2,VWPhi;          

  // -- R�server la place n�cessaire pour les vecteurs de travail
  VB1=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  VB2=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  VWPhi=(VECTORPTR)malloc(MatrixSize*sizeof(PIXELDEPTH));
  if((VB1==NULL)||(VB2==NULL)||(VWPhi==NULL)) {
    free(VB1);free(VB2);free(VWPhi);
    return(-1);
  }
  
  for(i=*Id;i<MatrixSize;i++) {
    RetValue=GetMatrixColumn(MV,i,VB1);
    RetValue=GetMatrixColumn(MH,i,VB2);
    RetValue=GetMatrixColumn(MWPhi,i,VWPhi);
    RetValue=FindVectorUnwrap(Jd,VB1,VB2,VWPhi);
    if(RetValue!=NOTFOUND) {
      *Id=i;
      PutMatrixColumn(MV,i,VB1);
      free(VB1);free(VB2);free(VWPhi);
      return(RetValue);
    }
  }
  free(VB1);free(VB2);free(VWPhi);
  return(NOTFOUND);
}

/** FindVectorUnwrap *****************************************************/
/* Fonction        : Cherche une zone non d�modul�e dans un vecteur et   */
/*                   renvoie le d�part de la zone avec une direction     */
/*                   de traitement                                       */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*---------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : Id                     : Point de d�part            */
/*                   VWPhi                  : Vecteur de la phase mod 2PI*/
/*                   VB1                    : Vect des niveaux           */
/*                   VB2                    : Vect des niveaux perpendi  */
/* Var globales    : MatrixSize,BIAS_ERROR,BIAS_NOUNWRAP,PHASE_NOMASK    */
/*                   FOUND_LEFT,FOUND_RIGHT,FOUND_LEFTRIGHT              */
/* Var Modifi�es   : Id                                                  */
/* Val retournee   : FOUND_LEFT             : trouv� zone � gauche       */
/*                   FOUND_RIGHT            : trouv� zone � droite       */
/*                   FOUND_LEFTRIGHT        : trouv� zone � G et � D     */
/*                   NOTFOUND               : pas de zone non d�modul�e  */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long FindVectorUnwrap(long *Id,VECTORPTR VB1,VECTORPTR VB2,VECTORPTR VWPhi) {
  long i;
  for(i=0;i<MatrixSize;i++) {  
    if((VB1[i]!=BIAS_ERROR)&&(VB2[i]!=BIAS_ERROR)&&(VWPhi[i]!=PHASE_NOMASK)) {
      if(VB1[i]!=BIAS_NOUNWRAP) {
        if((i>=1)&&(i<MatrixSize-1)&&(VB1[i-1]==BIAS_NOUNWRAP)&&(VB1[i+1]==BIAS_NOUNWRAP)&&(VWPhi[i-1]!=PHASE_NOMASK)&&(VWPhi[i+1]!=PHASE_NOMASK)) {*Id=i;return(FOUND_LEFTRIGHT);}
        if((i>=1)&&(VB1[i-1]==BIAS_NOUNWRAP)&&(VWPhi[i-1]!=PHASE_NOMASK)) {*Id=i;return(FOUND_LEFT);}
        if((i<MatrixSize-1)&&(VB1[i+1]==BIAS_NOUNWRAP)&&(VWPhi[i+1]!=PHASE_NOMASK)) {*Id=i;return(FOUND_RIGHT);}
      }    
      else if((VB1[i]==BIAS_NOUNWRAP)&&(VB2[i]!=BIAS_NOUNWRAP)) {
        if((i>=1)&&(i<MatrixSize-1)&&(VB1[i-1]==BIAS_NOUNWRAP)&&(VB1[i+1]==BIAS_NOUNWRAP)&&(VWPhi[i-1]!=PHASE_NOMASK)&&(VWPhi[i+1]!=PHASE_NOMASK)) {*Id=i;VB1[i]=VB2[i];return(FOUND_LEFTRIGHT);}  
        if((i>=1)&&(VB1[i-1]==BIAS_NOUNWRAP)&&(VWPhi[i-1]!=PHASE_NOMASK)) {*Id=i;VB1[i]=VB2[i];return(FOUND_LEFT);}
        if((i<MatrixSize-1)&&(VB1[i+1]==BIAS_NOUNWRAP)&&(VWPhi[i+1]!=PHASE_NOMASK)) {*Id=i;VB1[i]=VB2[i];return(FOUND_RIGHT);}
      }    
    }
  }
  return(NOTFOUND);
}

                        
/** UnwrapVR *************************************************************/
/* Fonction        : D�modulation d'un vecteur de gauche � droite        */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : Id                     : Point de d�part            */
/*                   VWPhi                  : Vecteur de la phase mod 2PI*/
/*                   VB1                    : Vect des niveaux           */
/*                   VB2                    : Vect des niveaux perpendi  */
/* Var globales    : MatrixSize,BIAS_ERROR,BIAS_NOUNWRAP,PHASE_NOMASK    */
/*                   BIAS_ZERO,PhiStep,PhiNoise,Bmax,Bmin                */
/* Var Modifi�es   : VB1,VB2                                             */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : d�tection d'un erreur de   */
/*                                            phase dans le vecteur      */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long UnwrapVR(long Id,VECTORPTR VWPhi,VECTORPTR VB1,VECTORPTR VB2) {
  long i,Phi1,Phi2;

  for(i=Id+1;i<MatrixSize;i++) {
    // -- V�rification pr�alable
    if((VB2[i]==BIAS_ERROR)||(VB1[i]!=BIAS_NOUNWRAP)) return(-1);
    if(VWPhi[i]==PHASE_NOMASK) return(-1);

    // -- D�tection des sauts de phase 
    if((VWPhi[i-1]-VWPhi[i])>PhiStep) VB1[i]=VB1[i-1]+1;
    else if ((VWPhi[i-1]-VWPhi[i])<-PhiStep) VB1[i]=VB1[i-1]-1;
         else VB1[i]=VB1[i-1];
                                      
    // -- V�rification de la continuit� de la phase en i-1 et i
#if 0//cv 23 01 13 (2pi=256...)
    Phi1=(VB1[i-1]-BIAS_ZERO)*255+VWPhi[i-1];
    Phi2=(VB1[i]-BIAS_ZERO)*255+VWPhi[i];
#else
    Phi1=(VB1[i-1]-BIAS_ZERO)*256+VWPhi[i-1];
    Phi2=(VB1[i]-BIAS_ZERO)*256+VWPhi[i];
#endif
    if(abs(Phi1-Phi2)>PhiNoise) {
      VB1[i]=BIAS_ERROR;
      return(-1);
    }
    
    // -- Comparaison du niveau calcul� en B1 avec l'�ventuel niveau B2
    if(VB2[i]!=BIAS_NOUNWRAP) {
      if(VB1[i]!=VB2[i]) {
        VB1[i]=BIAS_ERROR;
        VB2[i]=BIAS_ERROR;
        return(-1);
      }
    }
    
    // -- Enregistrer le maximum et le minimum de l'image des niveaux
    if(VB1[i]>BMax) BMax=VB1[i];
    if(VB1[i]<BMin) BMin=VB1[i];
  }
 return(0); 
}

/** UnwrapVL *************************************************************/
/* Fonction        : D�modulation d'un vecteur de droite � gauche        */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : Id                     : Point de d�part            */
/*                   VWPhi                  : Vecteur de la phase mod 2PI*/
/*                   VB1                    : Vect des niveaux           */
/*                   VB2                    : Vect des niveaux perpendi  */
/* Var globales    : MatrixSize,BIAS_ERROR,BIAS_NOUNWRAP,PHASE_NOMASK    */
/*                   BIAS_ZERO,PhiStep,PhiNoise,Bmax,Bmin                */
/* Var Modifi�es   : VB1,VB2                                             */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : d�tection d'un erreur de   */
/*                                            phase dans le vecteur      */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long UnwrapVL(long Id,VECTORPTR VWPhi,VECTORPTR VB1,VECTORPTR VB2) {
  long i,Phi1,Phi2;

  for(i=Id-1;i>=0;i--) {
    // -- V�rification pr�alable
    if((VB2[i]==BIAS_ERROR)||(VB1[i]!=BIAS_NOUNWRAP)) return(-1);
    if(VWPhi[i]==PHASE_NOMASK) return(-1);

    // -- D�tection des sauts de phase
    if((VWPhi[i+1]-VWPhi[i])>PhiStep) VB1[i]=VB1[i+1]+1;
    else if ((VWPhi[i+1]-VWPhi[i])<-PhiStep) VB1[i]=VB1[i+1]-1;
         else VB1[i]=VB1[i+1];
                                      
    // -- V�rification de la continuit� de la phase en i+1 et i 

    Phi1=(VB1[i+1]-BIAS_ZERO)*256+VWPhi[i+1];
    Phi2=(VB1[i]-BIAS_ZERO)*256+VWPhi[i];

    if(abs(Phi1-Phi2)>PhiNoise) {
      VB1[i]=BIAS_ERROR;
      return(-1);
    }
    
    // -- Comparaison du niveau calcul� en B1 avec l'�ventuel niveau B2
    if(VB2[i]!=BIAS_NOUNWRAP) {
      if(VB1[i]!=VB2[i]) {
        VB1[i]=BIAS_ERROR;
        VB2[i]=BIAS_ERROR;
        return(-1);
      }
    }

    // -- Enregistrer le maximum et le minimum de l'image des niveaux
    if(VB1[i]>BMax) BMax=VB1[i];
    if(VB1[i]<BMin) BMin=VB1[i];
  }
 return(0); 
}

/** CheckMatrix **********************************************************/
/* Fonction        : V�rifie s'il existe un point non trait� dans une    */
/*                   matrice de niveau                                   */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : MB                     : Pointeur sur la matrice    */
/* Var globales    : MatrixSize                                          */
/* Val retournee   : 0                      : Tous les pts sont trait�s  */
/*                   1                      : Pr�sence point non trait�  */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long CheckMatrix(MATRIXPTR MB) {
	for(long i=0;i<MatrixItems;i++)
		if(MB[i]==BIAS_NOUNWRAP) return(1);
	return(0);
}

/** GetMatrixLine ********************************************************/
/* Fonction        : Lit une ligne   d'une matrice                       */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : M                      : Pointeur sur la matrice    */
/*                   Li                     : Num�ro de la ligne         */
/*                   Line                   : Pointeur sur la ligne      */
/* Var globales    : MatrixSize                                          */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long GetMatrixLine(MATRIXPTR M,long Li,VECTORPTR Line) {
	for(long i=0;i<MatrixSize;i++)
		Line[i]=M[Li*MatrixSize+i];
	return(0);
}

/** GetMatrixColumn ******************************************************/
/* Fonction        : Lit une colonne d'une matrice                       */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : M                      : Pointeur sur la matrice    */
/*                   Co                     : Num�ro de la colonne       */
/*                   Column                 : Pointeur sur la colonne    */
/* Var globales    : MatrixSize                                          */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long GetMatrixColumn(MATRIXPTR M,long Co,VECTORPTR Column) {
	for(long j=0;j<MatrixSize;j++)
		Column[j]=M[j*MatrixSize+Co];
	return(0);
}

/** PutMatrixLine ********************************************************/
/* Fonction        : Ecrit une ligne   dans une matrice                  */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : M                      : Pointeur sur la matrice    */
/*                   Li                     : Num�ro de la ligne         */
/*                   Line                   : Pointeur sur la ligne      */
/* Var globales    : MatrixSize                                          */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long PutMatrixLine(MATRIXPTR M,long Li,VECTORPTR Line) {
	for(long i=0;i<MatrixSize;i++)
		M[Li*MatrixSize+i]=Line[i];
	return(0);
}

/** PutMatrixColumn ******************************************************/
/* Fonction        : Ecrit une colonne dans une matrice                  */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : M                      : Pointeur sur la matrice    */
/*                   Co                     : Num�ro de la colonne       */
/*                   Column                 : Pointeur sur la colonne    */
/* Var globales    : MatrixSize                                          */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long PutMatrixColumn(MATRIXPTR M,long Co,VECTORPTR Column) {
	for(long j=0;j<MatrixSize;j++)
		M[j*MatrixSize+Co]=Column[j];
	return(0);
}

/** ClearMatrix **********************************************************/
/* Fonction        : Initialise une surface de type MATRIXPTR avec une   */
/*                   valeur donn�e                                       */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : M                      : Pointeur sur la matrice    */
/*                   Value                  : Valeur d'initialisation    */
/* Var globales    : MatrixSize                                          */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long ClearMatrix(MATRIXPTR M,unsigned char Value) {
	register long i;
	for(i=0;i<MatrixItems;i++)
		M[i]=Value;
	return(0);
}

/** CopyMatrix ***********************************************************/
/* Fonction        : Copie une surface M1 dans une surface M2            */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : M1                     : Pointeur sur la source     */
/*                   M2                     : Pointeur sur la destination*/
/* Var globales    : MatrixSize                                          */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long CpyMatrix(MATRIXPTR M1,MATRIXPTR M2) {
	long i=MatrixItems;
	MATRIXPTR pDest=M2;
	MATRIXPTR pSrc=M1;
	while (i--)
	{
		*pDest++ = *pSrc++;
	}
	return 0 ;
}

/** CompareMatrix ********************************************************/
/* Fonction        : Compare deux matrices                               */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : M1                     : Pointeur sur la matrice 1  */
/*                   M2                     : Pointeur sur la matrice 2  */
/* Var globales    : MatrixSize                                          */
/* Val retournee   : 0                      : matrices identiques        */
/*                   1                      : matrices diff�rentes       */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long CompareMatrix(MATRIXPTR M1,MATRIXPTR M2) {
	long i=MatrixItems;
	MATRIXPTR pDest=M2;
	MATRIXPTR pSrc=M1;
	while (i--)
	{
		if (*pDest++ != *pSrc++)
			return 1;
	}
	return 0 ;
}

/** PopMatrix ************************************************************
 Fonction        : Extrait le meilleur �l�ment candidat au traitement  
                   des diff�rentes files d'attente                     
 Version         : 1.0                                                 
 Date            : 12/02/02                                            
 Auteur          : Eric Colon                                          
-----------------------------------------------------------------------
 Mise a jour     :                                                     
 Parametres      : M                      : structure contenant les    
                                            coordonn�es de la matrice  
 Var globales    :                                                     
 Val retournee   : 0                      : candidat trouv�            
                   -1                     : erreur ou plus de candidat 
                   1                      : super candidat             
 Exemple d'appel :                                                     
 *************************************************************************/
static long PopMatrix(MatrixInfo *Matrix) 
{
  if(PopMatrixStack(&Stack,Matrix)==0) 
  {
    RemoveMatrixStack(&Stack,Matrix);
	return 0;
  }

  return -1;
}

/** PushMatrix ***********************************************************/
/* Fonction        : Enfile un �l�ment dans la file d'attente sp�cifi�e  */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : M                      : structure contenant les    */
/*                                            coordonn�es de la matrice  */
/*                   StackId                : Num�ro de la file          */
/* Var globales    :                                                     */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long PushMatrix(MatrixInfo *Matrix) 
{
	return(PushMatrixStack(&Stack,Matrix)!=0);
}

/** PushMatrixStack*******************************************************/
/* Fonction        : Enfile un �l�ment dans la file d'attente sp�cifi�e  */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : *(*Head)               : Pointeur sur le d�but de   */
/*                                            la file                    */
/*                   *M                     : structure contenant les    */
/*                                            coordonn�es de la candidate*/
/* Var globales    :                                                     */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long PushMatrixStack(MatrixInfo *(*Head),MatrixInfo *Matrix) {
  MatrixInfo *Ptr1,*Ptr2;
  if(Ptr1=(MatrixInfo *)malloc(sizeof(MatrixInfo))) 
  {
    (*Ptr1).x=(*Matrix).x;
    (*Ptr1).y=(*Matrix).y;
    (*Ptr1).Fiability=(*Matrix).Fiability;
    (*Ptr1).Next=NULL;
    Ptr2=*Head;
    if(Ptr2==NULL) {
      *Head=Ptr1;
    }
    else 
	{
      while((*Ptr2).Next) Ptr2=(*Ptr2).Next;
      (*Ptr2).Next=Ptr1;
    }
    return(0);
  }
  else return(-1);
}


// Retourner l'element ayant la meilleure fiabilite
static long PopMatrixStack(MatrixInfo *(*Head),MatrixInfo *Matrix)
{
	if(*Head==NULL) 
	{
	  return -1;
	}

	// Rechercher l'element ayant la + grde fiabilite
	long FMax=-1;
	MatrixInfo *p1Max=NULL;
	MatrixInfo *p2Max=NULL;

	MatrixInfo *p1=*Head;
	MatrixInfo *p2=*Head;
	while (p1)
	{
	    if((*p1).Fiability>FMax)
		{
			FMax=(*p1).Fiability;
			p1Max=p1;
			p2Max=p2;
		}
		p2=p1;
		p1=(*p1).Next;
	}

	if (p1Max==NULL)
	{
		return -1;
	}

	(*Matrix).x=(*p1Max).x;
	(*Matrix).y=(*p1Max).y;
	(*Matrix).Fiability=(*p1Max).Fiability;
	return 0;
}  

/** RemoveMatrixStack ****************************************************/
/* Fonction        : Cherche toutes les structures sp�cifi�es et les     */
/*                   supprime de la file d'attente                       */
/* Version         : 1.0                                                 */
/* Date            : 08/02/94                                            */
/* Auteur          : Eric Colon                                          */
/*-----------------------------------------------------------------------*/
/* Mise a jour     :                                                     */
/* Parametres      : *(*Head)               : Pointeur sur le d�but de   */
/*                                            la file                    */
/*                   *M                     : structure contenant les    */
/*                                            coordonn�es de la candidate*/
/*                                            � supprimer                */
/* Var globales    :                                                     */
/* Val retournee   : 0                      : pas d'erreur               */
/*                   -1                     : erreur                     */
/* Exemple d'appel :                                                     */
/*************************************************************************/
static long RemoveMatrixStack(MatrixInfo *(*Head),MatrixInfo *Matrix) {
  MatrixInfo *Ptr1,*Ptr2;
  Ptr1=*Head;Ptr2=*Head;
  while(Ptr1) {
    if(((*Ptr1).x==(*Matrix).x)&&
	   ((*Ptr1).y==(*Matrix).y)) {
      if(Ptr1==*Head) {
        *Head=(*Ptr1).Next;
        Ptr2=(*Ptr1).Next;
        free(Ptr1);
        Ptr1=Ptr2;
      }
      else {
        (*Ptr2).Next=(*Ptr1).Next;
        free(Ptr1);
        Ptr1=Ptr2;
      }
    }
    else {
      Ptr2=Ptr1;
      Ptr1=(*Ptr1).Next;
    }  
  }
  return(0);
}

static long GetArea(PIXELDEPTH *image,long m,long n,long x,long y,long dx,long dy,PIXELDEPTH *buffer) {
	long i,j;
	PIXELDEPTH *hptr;

	if((x+dx>=n)||(x<0)) return(-1);
	if((y+dy>=m)||(y<0)) return(-1);

	if(image!=NULL) {
		for(j=y;j<y+dy;j++) {
			hptr=(image+j*n+x);
			for(i=x;i<x+dx;i++) {
				*buffer++=*hptr++;
			}
		}
	}
	return(-1);
}

static long PutArea(PIXELDEPTH *image,long m,long n,long x,long y,long dx,long dy,PIXELDEPTH *buffer) {
	long i,j;
	PIXELDEPTH *hptr;

	if((x+dx>=n)||(x<0)) return(-1);
	if((y+dy>=m)||(y<0)) return(-1);

	if(image!=NULL) {
		for(j=y;j<y+dy;j++) {
			hptr=image+j*n+x;
			for(i=x;i<x+dx;i++) {
				*hptr++=*buffer++;
			}
		}
	}
	return(-1);
}

static long GetArea(unsigned char *image,long m,long n,long x,long y,long dx,long dy,PIXELDEPTH *buffer) {
	long i,j;
	unsigned char *hptr;

	if((x+dx>=n)||(x<0)) return(-1);
	if((y+dy>=m)||(y<0)) return(-1);

	if(image!=NULL) {
		for(j=y;j<y+dy;j++) {
			hptr=image+j*n+x;
			for(i=x;i<x+dx;i++) {
				*buffer++=*hptr++;
			}
		}
	}
	return(-1);
}



