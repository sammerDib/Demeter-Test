
#ifndef SPG_CONV
#error Convention d'appel non d�finie
#endif

//Fonctions d'extension apport�es aux connexions 'acquisition device'
//en compl�ment des fonctions d�clar�es dans "..\SrcC\Connexion\SCM_Connexion.h"

#define SCX_EXTWRITETHROUGH(f) int (SPG_CONV f)(void* Data, int DataLen, SCX_CONNEXION* C)
#define SCX_EXTREADTHROUGH(f) int (SPG_CONV f)(void* Data, int& DataLen, SCX_CONNEXION* C)

typedef SCX_EXTWRITETHROUGH(*SCX_WRITETHROUGH);
typedef SCX_EXTREADTHROUGH(*SCX_READTHROUGH);

//declare les extensions pour pouvoir les appeler depuis le programme principal
SCX_EXTWRITETHROUGH(scxWriteThrough);
SCX_EXTREADTHROUGH(scxReadThrough);

