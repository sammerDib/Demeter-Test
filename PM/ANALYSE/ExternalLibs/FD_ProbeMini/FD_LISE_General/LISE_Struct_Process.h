#ifndef LISE_STRUCT_PROCESS
#define LISE_STRUCT_PROCESS

#define DETECT_END 0
#define DETECT_START 1
#define DETECT_CUR 2

// Nombre max de pics
#define NB_PEAK_MAX FP_LISECONSTS_MAXPEAKS
#define MAXPEAKS FP_LISECONSTS_MAXPEAKS

// Les define STATUS_OK et STATUS_FAIL sont utilis�s dans les fonctions internes de LISEEDDll (les fonctions autres que internal.cpp et fogaleprobe.cpp)
#define STATUS_OK 1
#define STATUS_FAIL -1
#define MAXSTRING 128
#define MAXVOIE 4
#define LONG_STR 512

typedef struct
{
	__int64 XAbsN;
	double XRel;
	bool Sens;
	double Position;
	double Intensite;
	double Qualite;
	bool bSaturation;
	int IndiceRegroupement;

} PICRESULT;

typedef enum
{
	NoMatching,
	MatchingSucess,
	BestPeak
} MATCHINGMODE;

// definition de la structure de resultat sur la periode
typedef struct
{
	int NbSamplesPeriod;
	int NbPicsPlusVoie1;
	int NbPicsMoinsVoie1;
	int NbPicsPlusVoie2;
	int NbPicsMoinsVoie2;
	PICRESULT PicsPlusVoie1[NB_PEAK_MAX];
	PICRESULT PicsMoinsVoie1[NB_PEAK_MAX];
	PICRESULT PicsPlusVoie2[NB_PEAK_MAX];
	PICRESULT PicsMoinsVoie2[NB_PEAK_MAX];
	double fThicknessPlus[NB_PEAK_MAX];
	double fThicknessMoins[NB_PEAK_MAX];
	double fThickness[NB_PEAK_MAX];	// Epaisseurs moyennes + et - pour la p�riode
	int iNbThickness;
	int PkIndexPlus[NB_PEAK_MAX];	// Indices des pics int�ressants trouv�s par PeakMatch dans le sens +.
	int PkIndexMoins[NB_PEAK_MAX];	// Indices des pics int�ressants trouv�s par PeakMatch dans le sens -.
	int PkOrigPlus[2*NB_PEAK_MAX];	// Origine des pics dans le sens plus (voie 1 ou voie 2)
	int PkOrigMoins[2*NB_PEAK_MAX];	// Origine des pics dans le sens moins
	double fQualityPlus;	// Qualit� de PeakMatch dans le sens +.
	double fQualityMoins;	// Qualit� de PeakMatch dans le sens -.
	double fQuality;	// Qualit� de la mesure d'�paisseurs pour la p�riode.
	MATCHINGMODE MatchModePlus;
	MATCHINGMODE MatchModeMoins;
	MATCHINGMODE MatchMode;
	bool bMatchSuccessPlus;				// matching alle a reussi
	bool bMatchSuccessMoins;			// matching retour a reussi
	bool bMatchSuccessGoAndBack;		// pas de forcage alle retour

	int iCounterMatchingS;
	int iCounterBestPeaks;

}PERIOD_RESULT;
/*
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
	int PkIndex[MAXPEAKS];//pour chaque pic du modele, indique le pic correspondant dans la mesure
	//pour debug
	double MeasuredPosition[MAXPEAKS];
	double ExpectedPosition[MAXPEAKS];
	//pour Debug
} DEFMATCHING;

typedef struct
{
	int SampleModel; //enum

	int MaxPks;//=MAXPEAKS
	int NumPks;//nombre de pics (�gal au nombre d'interfaces) du modele
	PEAKDEFINITION PkDef[NB_PEAK_MAX];

	//pour debug - infos du meilleur matching
	DEFMATCHING Best;
	double BestQuality;
	int Count;
	//pour Debug

	bool bDefined;
	char sName[LONG_STR];	// Nom de l'�chantillon
	char sSampleNumber[LONG_STR];	// Num�ro de lot de l'�chantillon
	//double fTheoThickness[MAX_NB_INTERFACES];	// Epaisseurs attendues
	//double fTolerance[MAX_NB_INTERFACES];	// Tol�rance sur l'�paisseur attendue
	double fIndex[NB_PEAK_MAX];	// Indice optique des �paisseurs
	double fIntensity[NB_PEAK_MAX];	// Intrensit� des pics attendus
	/// Rajouts MA pour mettre dans la structure le gain et le seuil de qualit� 
	//double Gain;
	double QualityThreshold;
	int NbThickness;
	// fin de rajouts MA 

} SAMPLEDEFINITION;

//mesure issue de l'appareil
typedef struct
{
	double Position;
	double Quality;
} MEASPEAK;
*/
typedef struct
{
	int index;
	double Quality;
} INDEXPEAK;

//macros pour supporter un changement de la forme de structure des mesures
#define MesNumPks(MeasSample) MeasSample.MaxPks
#define MesPosition(MeasSample,i) MeasSample.PkMes[i].Position
#define MesQuality(MeasSample,i) MeasSample.PkMes[i].Quality

typedef struct
{
	__int64 AbsN;//position absolue en octets (nr d'octet acquis depuis le debut de l'acquisition)
	int N;//position dans le buffer circulaire en octets (offset dans le buffer circulaire)
	int Len;//longueur du buffer circulaire en octets (n�cessaire pour les op�rations sur les positions)

} RING_BUFFER_POS;

typedef enum
{
	DllStateUninitialized=0,
	DllStateReady,
	DllStateRunning
} DLL_STATE_FLAG;

#endif