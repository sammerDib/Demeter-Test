// H3DSLRCalibration.cpp�: d�finit les fonctions d'initialisation pour la DLL.
//

#include "stdafx.h"
#include "H3DSLRCalibration.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

//
//TODO�: si cette DLL est li�e dynamiquement aux DLL MFC,
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

// CH3DSLRCalibrationApp

BEGIN_MESSAGE_MAP(CH3DSLRCalibrationApp, CWinAppEx)
END_MESSAGE_MAP()


// construction CH3DSLRCalibrationApp

CH3DSLRCalibrationApp::CH3DSLRCalibrationApp()
{
	// TODO�: ajoutez ici du code de construction,
	// Placez toutes les initialisations significatives dans InitInstance
}


// Seul et unique objet CH3DSLRCalibrationApp

CH3DSLRCalibrationApp theApp;


// initialisation de CH3DSLRCalibrationApp

BOOL CH3DSLRCalibrationApp::InitInstance()
{
	CWinAppEx::InitInstance();

	return TRUE;
}
