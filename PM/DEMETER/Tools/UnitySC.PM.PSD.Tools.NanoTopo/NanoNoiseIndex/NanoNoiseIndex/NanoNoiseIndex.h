
// NanoNoiseIndex.h�: fichier d'en-t�te principal pour l'application PROJECT_NAME
//

#pragma once

#ifndef __AFXWIN_H__
	#error "incluez 'stdafx.h' avant d'inclure ce fichier pour PCH"
#endif

#include "resource.h"		// symboles principaux
#include <fstream>
#include <iostream>
#include <string>
#include  <memory>
#include "math.h"
#include <stdio.h>
#include <vector>
#include "stdafx.h"

using namespace std;

// CNanoNoiseIndexApp�:
// Consultez NanoNoiseIndex.cpp pour l'impl�mentation de cette classe
//

class CNanoNoiseIndexApp : public CWinApp
{
public:
	CNanoNoiseIndexApp();

// Substitutions
public:
	virtual BOOL InitInstance();

// Impl�mentation

	DECLARE_MESSAGE_MAP()
};



extern CNanoNoiseIndexApp theApp;