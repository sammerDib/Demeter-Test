
#ifndef SPG_CONV
#error Convention d'appel non d�finie
#endif

//Fonctions d'extension apport�es aux connexions 'acquisition device'
//en compl�ment des fonctions d�clar�es dans "..\SrcC\Connexion\SCM_Connexion.h"

#define SCX_EXTOVERWRITE(f) int (SPG_CONV f)(void* Data, int DataLen, int Offset, SCX_CONNEXION* C)
#define SCX_EXTGETTOTALSIZE(f) int (SPG_CONV f)(int& Size, SCX_CONNEXION* C)

typedef SCX_EXTOVERWRITE(*SCX_OVERWRITE);
typedef SCX_EXTGETTOTALSIZE(*SCX_GETTOTALSIZE);

//declare les extensions pour pouvoir les appeler depuis le programme principal
SCX_EXTOVERWRITE(scxOverwrite);
SCX_EXTGETTOTALSIZE(scxGetTotalSize);

