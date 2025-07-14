#ifdef INC_SPG_PeakDet2DModele_INC
#error SPG_PeakDet2DModele Included twice
#endif
#define	INC_SPG_PeakDet2DModele_INC

//efine UseCFGFile

typedef struct 
{
	int Etat;

#ifdef UseCFGFile
	SPG_CONFIGFILE CFG;
#endif

	//parametres issus du programme appelant (structure ind�pendante de matlab, valeurs d�termin�es � l'execution)
	int CCDSizeX;//pixel count
	int CCDSizeY;//pixel count

	//parametres geometriques fixes servant � initialiser les routines de calcul de Bruno
	//ils sont lus � partir du fichier de param�tres "LaserParams.txt" qui se cr��e 
	//dans le m�me dossier que la dll
	//ils sont copi�s dans les variables locales dans la partie 
	//transcrite des fichiers matlab (vers les lignes 150)
	MATLAB_PARAM p;

	float YSearchWidthUp;
	float YSearchWidthDn;
	float LaserAxisOffset;
	float LaserAxisGroundDirectionRad;

	//variables utilis�es par la fonction de calcul du profil du tube
	//fonction PeakDet2D_GetLaserLine impl�ment�e dans PeakDet2DGetLaserLine.cpp

	float* YALLOC;//buffer de longueur SizeX * (LASER_COUNTx5+LASER_INCIDENCE_COUNT+1)
	//espace de stockage pour les 18 lignes
	float* YModele[LASER_COUNT];//les 18 lignes
	float* YModeleMin[LASER_COUNT];//les 18 lignes
	float* YModeleMax[LASER_COUNT];//les 18 lignes
	float* YMesure[LASER_COUNT];//les 18 lignes
	float* YMesureDelta[LASER_COUNT];//les 18 lignes
	float* YCombine[LASER_INCIDENCE_COUNT];//lignes combin�es, les trois incidences possibles
	float* YResultat;
	float* YFiltSrc;//entr�es sorties de filtres, usage g�n�ral
	float* YFiltTmp;
	float* YFiltDst;

	BYTE* YVALLOC;//buffer de longueur SizeX * (LASER_COUNTx3+MASER_INCIDENCE_COUNT+1)
	BYTE* YModeleValid[LASER_COUNT];//les 18 lignes
	BYTE* YModeleMinMaxValid[LASER_COUNT];//les 18 lignes
	BYTE* YMesureValid[LASER_COUNT];//les 18 lignes
	BYTE* YCombineValid[LASER_INCIDENCE_COUNT];//lignes combin�es, les trois incidences possibles
	BYTE* YResultatValid;

} SPG_PEAKMODELE;

void SPG_CONV MDLoadFromCFG(LDMODELEPARAMS& MDParams, SPG_CONFIGFILE& CFG);
#ifdef UseCFGFile
int SPG_CONV SPG_PeakModeleInit(SPG_PEAKMODELE& PM, int CCDSizeX, int CCDSizeY, char* ParameterFileName);
#else
int SPG_CONV SPG_PeakModeleInit(SPG_PEAKMODELE& PM, int CCDSizeX, int CCDSizeY, LDMODELEPARAMS& Params, int sizeofParams);
#endif
int SPG_CONV SPG_PeakModeleGetY(SPG_PEAKMODELE& PM, float CameraAngleRotationRad, float CameraAngleTiltRad, int LaserID, float* Y, BYTE* Yvalid, int NumY);//Y est de longueur CCDSizeX NumY est la longueur de Y pour v�rification de la correspondance
void SPG_CONV SPG_PeakModeleClose(SPG_PEAKMODELE& PM);

