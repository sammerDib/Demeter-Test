// TreatDegauchy0.cpp�: d�finit les routines d'initialisation pour la DLL.
//

#include "stdafx.h"
#include "TreatDegauchy0_App.h"

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

// CTreatDegauchy0App

BEGIN_MESSAGE_MAP(CTreatDegauchy0App, CWinApp)
END_MESSAGE_MAP()


// construction CTreatDegauchy0App

CTreatDegauchy0App::CTreatDegauchy0App()
{
	// TODO: ajoutez ici du code de construction,
	// Placez toutes les initialisations significatives dans InitInstance
}


// Seul et unique objet CTreatDegauchy0App

CTreatDegauchy0App theApp;


// initialisation de CTreatDegauchy0App

BOOL CTreatDegauchy0App::InitInstance()
{
	CWinApp::InitInstance();

	return TRUE;
}
