
#ifndef LISE_STRUCT_H
#define LISE_STRUCT_H

#ifndef FogaleProbeConfig_h
#error "Please enable FogaleProbe in SrcC\Config\SPG_General.h"
#endif

#include "LISE_Struct_Process.h"

typedef enum
{
	SingleShot,
	Continous
} ACQUISITIONMODE;


/*
typedef enum {Uninit=0,TransitTo0,TransitTo1,SwitchPos0,SwitchPos1} SWITCH_FLAG;

typedef struct
{
	//SPINLOCK Lock;
	SWITCH_FLAG Flag;
} SWITCH_STATE;
*/

typedef struct
{
	// Variables communs au LISE LSLI et ED
	DLL_STATE_FLAG Etat;

	//int LiseType;	//< pour connaitre le type de la sonde Lise
	//dll init
	char TypeDevice[MAXSTRING];			// Pour stocker le nom de l'appareil
	char SerialNumber[MAXSTRING];		// pour stocker le num�ro de s�rie
	char PartNumber[MAXSTRING];			// Pour stocker le Part number de l'appareil
	char HardwareVersion[MAXSTRING];	// pour stocker la version hardware du produit

	float Range;	// �tendue de mesure
	int Frequency;	// fr�quence de fonctionnement
	double dRefWaveLengthNm; // Longueur d'onde du laser de r�f�rence
	float GainMin;	// Gain Min du syst�me
	float GainMax;	// Gain max du syst�me
	float GainStep;	// pas du gain du syst�me
	float AutoGainStep;	// Pas utilis� pour effectuer un autoGain
	char NIDevice[MAXSTRING];	// Definition du device pour le chemin � passer en parametre
	char UseDeviceInformation[MAXSTRING];

	int DeviceNth;		// num�ro du dev national instrument
	float FrequencyHz;	// fr�quence d'�chantillonnage
	int PeakWidthMin;	// largeur minimum d'un pic
	int PeakWidthMax;	// largeur maximum d'un pic

	// TaskHandle � rajouter des differentes fonctions
	TaskHandle T_SwitchPRecoupTInterne;	// Tache Switch puissance recoupl�e Temp�rature interne
	TaskHandle T_EnableLr;
	TaskHandle T_DirectionMoteur;
	TaskHandle T_EnableMoteur;
	TaskHandle T_Switch0; //pin 0 du champ adresse du mux
	TaskHandle T_Switch1; //pin 1 du champ adresse du mux
	TaskHandle T_AlarmLr; //chip select du mux
	TaskHandle T_AlarmSource;
	TaskHandle T_Trigger;
	TaskHandle T_SplClk;
	TaskHandle T_VoieAnalogIn;
	TaskHandle T_PuissanceREcouplee;
	TaskHandle T_ControlSource1;
	TaskHandle T_ControlSource2;
	TaskHandle T_FinDeCourseA;
	TaskHandle T_FinDeCourseB;

	//SWITCH_STATE SwitchState;

	// Chemins de configurations
	char SwitchPRecoupTInterne[MAXSTRING];
	char EnableLr[MAXSTRING];
	char DirectionMoteur[MAXSTRING];
	char EnableMoteur[MAXSTRING];
	char Switch0[MAXSTRING];
	char Switch1[MAXSTRING];
	char AlarmLr[MAXSTRING];
	char AlarmSource[MAXSTRING];
	char Trigger[MAXSTRING];
	char SplClk[MAXSTRING];
	char VoieAnalogIn[MAXVOIE][MAXSTRING];
	char PuissanceREcouplee[MAXSTRING];
	char ControlSource1[MAXSTRING];
	char ControlSource2[MAXSTRING];
	char FinDeCourseA[MAXSTRING];
	char FinDeCourseB[MAXSTRING];

	float fThresholdSaturation;			// Seuil pour la d�tection de pics satur�s dans FindPicSature()
	float fThresholAmplitudeAirgap;		// Seuil sur l'amplitude du premier pic pour la d�tection
	float fAutoAirgapDetectionfactor;	// variable pour d�finir le seuil d'auto airgap, N fois au dessus du seuil de qualit�
	float fThresholdSwithAGAutoAgTh;	// Seuil pour d�finir le seuil qui permet de basculer entre le seuil d'auto airgap et le seuil d�finit par le params au dessus
	float fIntensityThreshold;			// Seuil pour l'intensit� pour l'�criture des pics
	float fQualityThreshold;			// Seuil sur la qualit� pour l'�criture des pic
	float fQThresPlusCh1;				// Seuil sur la qualit� pics plus, on r�cup�re la premi�re valeur de pic non valide pour seuiller apr�s le defmatch
	float fQThresMoinsCh1;				// Seuil sur la qualit� pics moins, on r�cup�re la premi�re valeur de pic non valide pour seuiller apr�s le defmatch
	float fSourceValue;					//< Valeur de la source
	float Timeout;						// Valeur du Timeout pour les t�ches Nationnal Instrument 
	float ValMin;						// Valeur Minimum de la mesure pour les taches Nationnal Instrument (en volt)
	float ValMax;						// Valeur Maximum de la mesure pour les taches Nationnal Instrument (en volt)
	float LigneDeBase;					// param�tre de la ligne de base
	float UnusedPeaksIntensity;			// 9eme pic non utilis� pour le calcul de l'auto Airgap

	int UseTrigger;		// utilisation d'un Trigger A VIRER
	int iMinPkQualityFactor;	// facteur qualit� multiplicateur
	int iSampsPerChanToAcquire;	// nombre d'�chantillons � acqu�rir
	int NbSamplesLastPeriod;	// Nombre d'�chantillons de la derni�res p�riodes
	int NbPicPlusProcessVoie1;	// Nombre de pics plus process voie un (pics restants apr�s moyennage)
	int NbPicMoinsProcessVoie1;	// Nombre de pics moins process voie un (pics restants apr�s moyennage)
	int NbPicPlusProcessVoie2; // Nombre de pics plus process voie deux
	int NbPicMoinsProcessVoie2; // Nombre de pics moins process voie deux
	int iLissage;
	int ReadFileForEmulation;	// parametre pour d�finir dans le fichie de config la lecture d'un fichier pour l'�mulation
	int BufferLen;		// Nombre d'�l�ments dans le buffer circulaire de valeurs brutes
	int PicResultLen;	// Nombre d'�l�ments dans le buffer circulaire de pics
	int ResultLen;		// Nombre d'�l�ments dans le buffer circulaire de r�ultats
	
	char FileNameStartupPath[MAXSTRING];		// Nom du r�pertoire courant ou a d�marr� l'appli
	char FileNameSavePeaks[MAXSTRING];			// Nom du fichier de sauvegarde des pics
	char FileNamesaveThickness[MAXSTRING];		// Nom du fichier de sauvegarde des �paisseurs
	char FichierReadSignal[MAXSTRING];
	char FileNameSavePeakMoyenne[MAXSTRING];	// Nom du fichier pour la sauvegarde de peak moyenne
	char FileNameRawSignal[MAXSTRING];			// fichier pour sauvegarder le raw signal

	// Parametre pour definir les autres voies optionnelles
	int NombredeVoie;	// parametre permettant de d�finir le nombre de voie

	int BufferIntensityLen;			// Longueur du buffer signal
	double* BufferIntensity;		// Buffer intensity
	double** BufferPeriodChannel;	// Buffer contenant une p�riode de signal lors d'une d�tection

	// param�tres de thread
	bool bStopDemande;	// param synchronisation avec la thread
	bool bNeedRead;		// param synchronisation avec la thread
	bool bReadAllowed;	// param synchronisation avec la thread
	bool bThreadActive;	// param synchronisation avec la thread

	// parametre pour le calcul de fit
	float* Fit;
	FIT_COEFF FitCoeff; //verifier la config SPG_General.h include FogaleProbeConfig

	PERIOD_RESULT* Resultats;	// Buffer de r�sultats
	RING_BUFFER_POS IndicePeriod;	// Indice de buffer circulaire sur le buffer de r�sultat

	PICRESULT *BufferResultat[MAXVOIE];	// Buffer de r�sultats pour stocker les pics

	FILE* FichierDebug;
	FILE* FileLog;
	FILE* FichierSavePics;
	FILE* FichierSaveSignal;
	FILE* FichierSaveThickness;
	FILE* FichierSavePeakMeasure;

	bool FlagThickness;
	bool bPeakMeasurePrint;
	int MaxSignalEmule;

	DWORD dwThreadId;
    HANDLE hThread; 

	bool FlagSavePics;
	bool FlagSaveSignal;
	bool FlagSavePeakMeasured;

	RING_BUFFER_POS Read;//position a partir de laquelle la fonction de traitement des �chantillon doit op�rer - a concurrence de la position Write
	RING_BUFFER_POS Trailer;//position � partir de laquelle les echantillons d�j� trait�s doivent �tre pr�serv�s d'une r�ecriture - pour les traitements n�cessitant un chevauchement avec le buffer pr�c�dent
	RING_BUFFER_POS Write;//position � partir de laquelle les nouveaux echantillons sont enregistr�s par la fonction d'acquisition - a concurrence de la position Trailer

	RING_BUFFER_POS ReadCrossBuffer;

	RING_BUFFER_POS WriteResult;		// Buffer circulaire contenant les resultats (pics trouv�s et traites)
	RING_BUFFER_POS WriteResultSecondChannel;

	int WritePeaksForCalibration;
	int DisplayNIError;

	// D�tection de pic avec la m�thode 4 sans seuil.
	int fitLen;
	int fitStep;
	K_FIT2 fitDef;
	double EcartTypiqueFit;

	// D�finition de l'�chantillon.
	SAMPLEDEFINITION sample;

	// Log externe
	LOGFILE* Log;
	bool internalLog;
	int iConfigMoyenneEpaisseurs;

	// Poisiton de la table X, Y, Z
	double XSystemPos;
	double YSystemPos;
	double ZSystemPos;

	// Variable pour synchro avec thread
	bool bNThicknessNotReady;
	// Variable pour definir le mode de temps limit�: on sort d�s que l'on a fait n acquisitions, quel que soit le type
	bool bLimitedTime;
	int iThicknessAboveQThreshold;
	// modif MA : variable pour attendre n thickness au dessus en mode MatchingSucess ou BestPeak
	int iThicknessMatchingPeakMode;
	int iThicknessBestPeakMode;
	// fin de modif MA
	bool bDebug;
	bool bDebugProcess;
	bool bReentrance;
	int iHardwareTimeout;
	float fNoiseEmulateSignal;

	int iChannel;

	int iNbSampleMaxBuffer;

	bool bAllowSaveThickness;
	bool bAllowSavePeaks;
	bool bAllowSavePeakMoyenne;
	bool bUseUpdateFirstAirGapDef;
	bool bUseAirGapAuto;
	bool bAllowSaveRawSignal;
	bool bUseAutoAirgapDetectionFactor;

	// Valeurs de largeur et hauteur de la fenetre de settings
	int SettingWindowWidth;
	int SettingWindowHeight;

	// bit de r�entrance de la fonction GetRawSignal
	bool bGetRawSigReentrance;

	//deplacement des variables
	int iNombreEchantillons;	// Nombre d'�chantillons n�cessaire pour la d�tection d'un pulse
	bool SensPositif;	// Sens de d�placement de la ligne � retard
	bool FirstPass;	// d�tection de la premi�re passe lors de la d�tection des pulses

	RING_BUFFER_POS PulsePlusLeft;	// Indice sur buffer circulaire pour le Pulse Plus Left
	RING_BUFFER_POS PulsePlusRight;	// Indice sur buffer circulaire pour le Pulse Plus Right

// Indice pour compter les pics sur une p�riode
	int Periode;	// Compteur de p�riode de la structure
	int Indice;		// Compteur pour la d�tection de pics sur la voie 1 (sens plus)
	int iIndiceVoie2;// Compteur pour la d�tection de pics sur la voie 2 (sens plus)

	int IndiceDecimation;	// parametre indice de d�cimation
	int CompteurDecimation;	// Compteur pour l'indice de d�cimation
	int Moyenne;			// param�tre de moyenne sur les �paisseurs

	int iConfigSensUnique;	// Configuration du sens unique

	RING_BUFFER_POS WaitNThicknessStart;
	RING_BUFFER_POS WaitNThicknessStop;

	bool bAverageQuality;

	bool bGetThickness;

	double dStepMicron;

	ACQUISITIONMODE AcqMode;

	float ComparisonTolerance;	//< Tolerance entre la diff�rences des pics plus et moins

	double LastAmplitudePics[NB_PEAK_MAX];	// valeur des amplitudes des derniers pics mesur�s.
	double LastPositionPicsPlus[NB_PEAK_MAX];	// valeur des amplitudes des derniers pics mesur�s.
	double LastPositionPicsMoins[NB_PEAK_MAX];	// valeur des amplitudes des derniers pics mesur�s.

	bool iFirstMatchingSucces;
	bool bSampleDefUpdated;

	bool bSaveSignalBrut;		//< bool�en pour permettre la sauvegarde du signal brut
	bool bSaveSignalPerChan;
	int iCounterSignalBrut;
	int iCounterMeasure;

} LISE;

#endif