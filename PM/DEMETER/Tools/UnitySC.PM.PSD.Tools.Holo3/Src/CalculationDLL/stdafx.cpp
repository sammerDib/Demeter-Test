// stdafx.cpp�: fichier source incluant simplement les fichiers Include standard
// CalculationDLL.pch repr�sente l'en-t�te pr�compil�
// stdafx.obj contient les informations de type pr�compil�es

#include "stdafx.h"

void CreateDir(CString&  p_csPath)
{
	char DirName[256];;
	char* p = p_csPath.GetBuffer();
	if (PathFileExists(p))
	{
		p_csPath.ReleaseBuffer();
		return;
	}

	char* q = DirName; 
	while(*p)
	{
		if (('\\' == *p) || ('/' == *p))
		{
			if (':' != *(p-1))
			{
				CreateDirectory(DirName, NULL);
			}
		}
		*q++ = *p++;
		*q = '\0';
	}
	CreateDirectory(DirName, NULL);
	p_csPath.ReleaseBuffer();
}