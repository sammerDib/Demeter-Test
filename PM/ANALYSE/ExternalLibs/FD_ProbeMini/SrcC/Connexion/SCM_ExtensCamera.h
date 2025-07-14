
#ifndef SPG_CONV
#error Convention d'appel non d�finie
#endif

typedef enum
{
	scxCamWaiting=-1,
	scxCamInvalid=0,
	scxCamReady=1
} SCX_CAM_STATUS;

//Fonctions d'extension apport�es aux connexions 'acquisition device'
//en compl�ment des fonctions d�clar�es dans "..\SrcC\Connexion\SCM_Connexion.h"

#define SCX_EXTCAMGETSIZE(f) int (SPG_CONV f)(int& SizeX, int& SizeY, int& SizePix, float& PixelSizeX, float& PixelSizeY, SCX_CONNEXION* C)
#define SCX_EXTCAMGETSTATUS(f) int (SPG_CONV f)(int& Flag, SCX_CONNEXION* C)

typedef SCX_EXTCAMGETSIZE(*SCX_CAMGETSIZE);
typedef SCX_EXTCAMGETSTATUS(*SCX_CAMGETSTATUS);

//declare les extensions pour pouvoir les appeler depuis le programme principal
SCX_EXTCAMGETSIZE(scxCamGetSize);
SCX_EXTCAMGETSTATUS(scxCamGetStatus);

