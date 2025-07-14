
#ifndef LISE_HARDWARE_CONFIG
#define LISE_HARDWARE_CONFIG


typedef struct
{

    int LiseType;	//< pour connaitre le type de la sonde Lise
    //dll init
    LPCWSTR TypeDevice;			// Pour stocker le nom de l'appareil

    LPCWSTR SerialNumber;		// pour stocker le num�ro de s�rie
    //LPCWSTR PartNumber;			// Pour stocker le Part number de l'appareil
    //LPCWSTR HardwareVersion;	// pour stocker la version hardware du produit

    //float Range;	// �tendue de mesure
    //int Frequency;	// fr�quence de fonctionnement
    //double dRefWaveLengthNm; // Longueur d'nde du laser de r�f�rence
    //float GainMin;	// Gain Min du syst�me
    //float GainMax;	// Gain max du syst�me
    //float GainStep;	// pas du gain du syst�me
    //float AutoGainStep;	// Pas utilis� pour effectuer un autoGain

    float ProbeRange;
    float MinimumGain;
    float MaximumGain;
    float GainStep;
    float AutoGainStep;
    int Frequency;

    //Calibration
    double CalibWavelength;

    //Signal processing
    float ComparisonTol;

} LISE_HCONFIG;

//#pragma pack(push, 1)
typedef struct
{
    LPCWSTR strTypeDevice;	//< Type du device

   //LISE_HCONFIG* configLiseTop;

} DBL_LISE_HCONFIG;







#endif