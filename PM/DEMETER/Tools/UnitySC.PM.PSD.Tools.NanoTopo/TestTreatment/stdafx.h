// stdafx.h�: fichier Include pour les fichiers Include syst�me standard,
// ou les fichiers Include sp�cifiques aux projets qui sont utilis�s fr�quemment,
// et sont rarement modifi�s

#pragma once

#ifndef VC_EXTRALEAN
#define VC_EXTRALEAN            // Exclure les en-t�tes Windows rarement utilis�s
#endif

#include "targetver.h"

#define _ATL_CSTRING_EXPLICIT_CONSTRUCTORS      // certains constructeurs CString seront explicites

#include <afxwin.h>         // composants MFC principaux et standard
#include <afxext.h>         // extensions MFC

#ifndef _AFX_NO_OLE_SUPPORT
#include <afxole.h>         // classes OLE MFC
#include <afxodlgs.h>       // classes de bo�te de dialogue OLE MFC
#include <afxdisp.h>        // Classes MFC Automation
#endif // _AFX_NO_OLE_SUPPORT

#ifndef _AFX_NO_DB_SUPPORT
#include <afxdb.h>                      // classes de base de donn�es ODBC MFC
#endif // _AFX_NO_DB_SUPPORT

#ifndef _AFX_NO_DAO_SUPPORT
#include <afxdao.h>                     // classes de base de donn�es DAO MFC
#endif // _AFX_NO_DAO_SUPPORT

#ifndef _AFX_NO_OLE_SUPPORT
#include <afxdtctl.h>           // Prise en charge MFC pour les contr�les communs Internet Explorer�4
#endif
#ifndef _AFX_NO_AFXCMN_SUPPORT
#include <afxcmn.h>                     // Prise en charge des MFC pour les contr�les communs Windows
#endif // _AFX_NO_AFXCMN_SUPPORT

#include "LogWrapperInterface.h"

void LogThis(int nSrc, int nTypeEvt, CString& csMsg)
{
	LogThis(nSrc,nTypeEvt,csMsg.GetBuffer());
	csMsg.ReleaseBuffer();
}

#define SIZE_SZBUFF 512
CString Fmt(LPCTSTR pFmt, ...  )
{
	CString ;
	char szBuffer[SIZE_SZBUFF];
	va_list args;
	va_start(args, pFmt);
	//_vsntprintf( szBuffer, SIZE_SZBUFF, pFmt, args ); // function deprecated  !!!
	int nSize = vsnprintf_s( szBuffer, sizeof(szBuffer), _TRUNCATE, pFmt, args);
	va_end(args);
	return (CString(szBuffer));
}
