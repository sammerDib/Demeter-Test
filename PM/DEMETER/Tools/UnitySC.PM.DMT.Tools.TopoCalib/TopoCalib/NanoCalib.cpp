
// NanoCalib.cpp : D�finit les comportements de classe pour l'application.
//

#include "stdafx.h"
#include "NanoCalib.h"
#include "NanoCalibDlg.h"
#include "H3AppToolsDecl.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif
#include "CMyCommandLineInfo.h"



// Command line parameters
CString m_clCalibCamSourceImagesFolder;
int m_clCalibCamMireSizeX;
int m_clCalibCamMireSizeY;
float m_clCalibCamMireStepX;
float m_clCalibCamMireStepY;

CString m_clCalibSysSourceImagesFolder;
float m_clCalibSysPitchX;
float m_clCalibSysPitchY;
int m_clCalibSysPeriodX;
int m_clCalibSysPeriodY;
int m_clCalibSysScreenSizeX;
int m_clCalibSysScreenSizeY;
int m_clCalibSysScreenRefPosX;
int m_clCalibSysScreenRefPosY;
int m_clCalibSysCrossX;
int m_clCalibSysCrossY;

// CNanoCalibApp

BEGIN_MESSAGE_MAP(CNanoCalibApp, CWinApp)
    ON_COMMAND(ID_HELP, &CWinApp::OnHelp)
END_MESSAGE_MAP()


// construction CNanoCalibApp

CNanoCalibApp::CNanoCalibApp()
{
    void(__thiscall CNanoCalibApp:: * pFunc)() = &CNanoCalibApp::OnException;
    std::set_terminate((std::terminate_handler)(void*)(void*&)pFunc);

    // prend en charge le Gestionnaire de red�marrage
    m_dwRestartManagerSupportFlags = AFX_RESTART_MANAGER_SUPPORT_RESTART;

    // TODO: ajoutez ici du code de construction,
    // Placez toutes les initialisations significatives dans InitInstance
}

void CNanoCalibApp::OnException()
{
    try
    {
        std::rethrow_exception(std::current_exception());
    }
    catch (const std::exception& e)
    {
        AfxMessageBox(e.what());
    }
}

// Seul et unique objet CNanoCalibApp

CNanoCalibApp theApp;

bool g_bInitCalibSys = false;

// initialisation de CNanoCalibApp

BOOL CNanoCalibApp::InitInstance()
{
    // InitCommonControlsEx() est requis sur Windows�XP si le manifeste de l'application
    // sp�cifie l'utilisation de ComCtl32.dll version�6 ou ult�rieure pour activer les
    // styles visuels.  Dans le cas contraire, la cr�ation de fen�tres �chouera.
    INITCOMMONCONTROLSEX InitCtrls;
    InitCtrls.dwSize = sizeof(InitCtrls);
    // � d�finir pour inclure toutes les classes de contr�les communs � utiliser
    // dans votre application.
    InitCtrls.dwICC = ICC_WIN95_CLASSES;
    InitCommonControlsEx(&InitCtrls);

    CWinApp::InitInstance();

    //_CrtDumpMemoryLeaks();
    // R�cup�ration du flag de debug courant
    int tmpFlag = _CrtSetDbgFlag(_CRTDBG_REPORT_FLAG);
    // Force la recherche des 'memory-leak' � la fin de l'application
    _CrtSetDbgFlag(tmpFlag | _CRTDBG_LEAK_CHECK_DF);
    //_CrtSetBreakAlloc(151);		// Num�ro de bloc devant g�n�rer un point d'arr�t
    //_CrtSetReportMode( _CRT_ERROR, _CRTDBG_MODE_DEBUG );

    AfxEnableControlContainer();

    // Initialisation standard
    // Si vous n'utilisez pas ces fonctionnalit�s et que vous souhaitez r�duire la taille
    // de votre ex�cutable final, vous devez supprimer ci-dessous
    // les routines d'initialisation sp�cifiques dont vous n'avez pas besoin.
    // Changez la cl� de Registre sous laquelle nos param�tres sont enregistr�s
    // TODO: modifiez cette cha�ne avec des informations appropri�es,
    // telles que le nom de votre soci�t� ou organisation
    SetRegistryKey(_T("Applications locales g�n�r�es par AppWizard"));

    if (::CreateDirectory(_T("C:\\Temp"), NULL) == FALSE)
    {
        if (GetLastError() != ERROR_ALREADY_EXISTS)
        {
            AfxMessageBox(_T("Could not create Directory C:\\Temp"), MB_OK | MB_ICONEXCLAMATION);
        }
    }

    CString csDir = _CalibPaths._LastCalibPath;
    CreateFolder(csDir);
    csDir = CString(_CalibPaths._LastCalibPath) + _T("\\") + _CalibPaths._CamCalibSubfolder;
    CreateFolder(csDir);
    csDir = CString(_CalibPaths._LastCalibPath) + _T("\\") + _CalibPaths._SysCalibSubfolder;
    CreateFolder(csDir);
    csDir = CString(_CalibPaths._LastCalibPath) + _T("\\") + _CalibPaths._UWPhiSubfolder;
    CreateFolder(csDir);

    CMyCommandLineInfo cmdInfo;
    ParseCommandLine(cmdInfo);


    CNanoCalibDlg dlg;
    m_pMainWnd = &dlg;

    //dlg.m_oDlgCalibCam.DoCalibration();

    if ((!m_clCalibCamSourceImagesFolder.IsEmpty()) || (!m_clCalibSysSourceImagesFolder.IsEmpty()))
        dlg.m_isSilent = true;



    INT_PTR nResponse = dlg.DoModal();
    if (nResponse == IDOK)
    {
        // TODO: placez ici le code d�finissant le comportement lorsque la bo�te de dialogue est
        //  ferm�e avec OK
    }
    else if (nResponse == IDCANCEL)
    {
        // TODO: placez ici le code d�finissant le comportement lorsque la bo�te de dialogue est
        //  ferm�e avec Annuler
    }

    // Lorsque la bo�te de dialogue est ferm�e, retourner FALSE afin de quitter
    //  l'application, plut�t que de d�marrer la pompe de messages de l'application.
    return FALSE;
}

