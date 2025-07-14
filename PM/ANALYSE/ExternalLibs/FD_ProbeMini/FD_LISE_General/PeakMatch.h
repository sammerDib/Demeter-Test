/*
 * $Id: PeakMatch.h 6636 2008-01-07 14:31:37Z m-abet $
 */

#ifndef PEAKMATCH_H
#define PEAKMATCH_H

#define MAXMATCHPEAKS FP_LISECONSTS_MAXPEAKS // LISE_Consts.h (FD_LISE_General)
#define MAXMATCHSTR 256

typedef enum
{//le modele peut comprendre diff�rentes routines pour mod�liser diff�rents mod�mes physiques de pics
	PkSample,
	PkOptRef,
	PkReflection
} PEAKTYPE;

//parametres associ�s
typedef struct
{
} PKSAMPLE;

typedef struct
{
} PKOPTREF;

typedef struct
{
} PKORFLX;

typedef enum
{//lois Qualit�Matching = f(Distance/Tolerance,Qualit�Pic)
	WeightUniform,
	WeightCos,
	WeightPeak
} PEAKWEIGHT;

typedef enum
{
	PkRefAbsolute,
	PkRefOpticalRef,
	PkRefPrevious
} PEAKREFERENCETYPE;

typedef struct
{
	PEAKTYPE PkType; //enum

	union
	{
		PKSAMPLE PS;//PeakType = Sample
		PKOPTREF POR;//PeakType = Optical Reference
		PKORFLX PRflx;//PeakType = Reflection interne
	};

	double ExpectedPosition;
	double Tolerance;
	
	PEAKREFERENCETYPE PkRefType;//la position est indiqu�e par rapport � l'origine, ou � la reference optique, ou � un pic pr�c�dent
	int PkRef;//si PkRefPrevious, la tolerance de position s'exprime pour un pic, par rapport � un autre pic le pr�c�dent
	PEAKWEIGHT W; //enum

} PEAKDEFINITION;

//resultat de matching
typedef struct
{
	int MaxPks;//=MAXPEAKS
	int NumPks;//nombre de pics du modele
	int NumMesPk;
	int* PkIndex; // MaxPks pour chaque pic du modele, indique le pic correspondant dans la mesure
	//pour debug
	double MeasuredPosition;  // MaxPks //[MAXMATCHPEAKS];
	double ExpectedPosition;  // MaxPks //[MAXMATCHPEAKS];
	//pour Debug
} DEFMATCHING;

typedef struct
{
    int state;
    HANDLE lock;

	int SampleModel; //enum

	int MaxPks;//=MAXPEAKS
	int NumPks;//nombre de pics (�gal au nombre d'interfaces) du modele
	PEAKDEFINITION* PkDef; 	 // MaxPks

	PEAKDEFINITION* PkDefBkp; 	 // MaxPks

	//pour debug - infos du meilleur matching
	DEFMATCHING Best;
	double BestQuality;
	int Count;
	//pour Debug

	bool bDefined;
	char sName[MAXMATCHSTR];	// Nom de l'�chantillon
	char sSampleNumber[MAXMATCHSTR];	// Num�ro de lot de l'�chantillon
	//double fTheoThickness[MAX_NB_INTERFACES];	// Epaisseurs attendues
	//double fTolerance[MAX_NB_INTERFACES];	// Tol�rance sur l'�paisseur attendue
	double* fIndex;	 // MaxPks // Indice optique des �paisseurs
	double* fIntensity;  // MaxPks	// Intrensit� des pics attendus
	/// Rajouts MA pour mettre dans la structure le gain et le seuil de qualit� 
	//double Gain;
	double QualityThreshold;
	int NbThickness;
	// fin de rajouts MA 
	int iRefOpt;

} SAMPLEDEFINITION;


//mesure issue de l'appareil
typedef struct
{
	double Position;
	double Quality;
} MEASPEAK;


int DefInit(SAMPLEDEFINITION& SD, int MaxPks);
void DefClose(SAMPLEDEFINITION& SD);
int DefAdd(SAMPLEDEFINITION& SD, PEAKTYPE PkType, PEAKREFERENCETYPE PkRefType, double ExpectedPosition, double Tolerance, PEAKWEIGHT W);
int DefClear(SAMPLEDEFINITION& SD);
void DefBackup(SAMPLEDEFINITION& SD);
void DefRestore(SAMPLEDEFINITION& SD);

//fonctions internes
//double SPG_CONV DefComputeWeight(double Distance, double Tolerance, PEAKWEIGHT W)
//double SPG_CONV DefComputeQuality(SAMPLEDEFINITION& SD, MEASSAMPLE& Mes, DEFMATCHING& DM);

//renvoie pour chaque pic du modele l'index dans le tableau de mesure, il y a donc SD.NumPks elements remplis dans PkIndex (si Quality>0). Noter que DefAdd renvoie SD.NumPks.
void DefMatchAlloc(DEFMATCHING& d, int MaxPks);
void DefMatchFree(DEFMATCHING& d);
int DefMatchStart(DEFMATCHING& D, const SAMPLEDEFINITION& SD, int NumMesPks);
int DefMatchNext(DEFMATCHING& D);
void DefMatch(const MEASPEAK* PkMeas, int NumMeasPks, const SAMPLEDEFINITION& SD, double& outQuality, int* outPkIndex, int MaxPks);

#endif
