// TreatPrepareData2.cpp�: d�finit les routines d'initialisation pour la DLL.
//

#include "stdafx.h"
#include "TreatPrepareData2_App.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

//
//TODO: si cette DLL est li�e dynamiquement aux DLL MFC,
//		toute fonction export�e de cette DLL qui appelle
//		MFC doit avoir la macro AFX_MANAGE_STATE ajout�e au
//		tout d�but de la fonction.
//
//		Par exemple�:
//
//		extern "C" BOOL PASCAL EXPORT ExportedFunction()
//		{
//			AFX_MANAGE_STATE(AfxGetStaticModuleState());
//			// corps de fonction normal ici
//		}
//
//		Il est tr�s important que cette macro se trouve dans chaque
//		fonction, avant tout appel � MFC. Cela signifie qu'elle
//		doit �tre la premi�re instruction dans la 
//		fonction, avant toute d�claration de variable objet
//		dans la mesure o� leurs constructeurs peuvent g�n�rer des appels � la DLL
//		MFC.
//
//		Consultez les notes techniques MFC 33 et 58 pour plus de
//		d�tails.
//

// CTreatPrepareData2App

BEGIN_MESSAGE_MAP(CTreatPrepareData2App, CWinApp)
END_MESSAGE_MAP()


// construction CTreatPrepareData2App

CTreatPrepareData2App::CTreatPrepareData2App()
{
	// TODO: ajoutez ici du code de construction,
	// Placez toutes les initialisations significatives dans InitInstance
}


// Seul et unique objet CTreatPrepareData2App

CTreatPrepareData2App theApp;


// initialisation de CTreatPrepareData2App

BOOL CTreatPrepareData2App::InitInstance()
{
	CWinApp::InitInstance();

	return TRUE;
}
