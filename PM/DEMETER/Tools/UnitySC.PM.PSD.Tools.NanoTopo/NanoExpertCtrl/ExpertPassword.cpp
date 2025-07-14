// ExpertPassword.cpp�: fichier d'impl�mentation
//

#include "stdafx.h"
#include "NanoExpertCtrl.h"
#include "ExpertPassword.h"
#include "afxdialogex.h"


// Bo�te de dialogue CExpertPassword

IMPLEMENT_DYNAMIC(CExpertPassword, CDialog)

CExpertPassword::CExpertPassword(CWnd* pParent /*=NULL*/)
	: CDialog(CExpertPassword::IDD, pParent)
{

	m_csPwd = _T("");
}

CExpertPassword::~CExpertPassword()
{
}

void CExpertPassword::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_EDIT1, m_csPwd);
}


BEGIN_MESSAGE_MAP(CExpertPassword, CDialog)
END_MESSAGE_MAP()


// Gestionnaires de messages de CExpertPassword


void CExpertPassword::OnOK()
{

	UpdateData(TRUE);

	if (m_csPwd.Compare("altanano") == 0)
	{
		CDialog::OnOK();
	}
	else
	{
		CDialog::OnCancel();
	}	
}
