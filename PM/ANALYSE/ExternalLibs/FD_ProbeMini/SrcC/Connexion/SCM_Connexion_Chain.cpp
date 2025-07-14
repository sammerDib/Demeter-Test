
//#include "..\SrcC\SPG.h"
//#include "..\SPG.h"

#include "SCM_Connexion.h"

#include <string.h>
#include <memory.h>
#include <stdlib.h>
#include <stdio.h>

//partie sp�cifique

#define sci_UID 3
#define sci_NAME "CHAIN"

typedef struct
{
	//parametres de l'interface
	int DummyInterfaceParam;
} SCI_Parameters; //parametres de l'interface

typedef struct
{
	char Name[SCI_CONNEXION_NAME];
	SCX_CONNEXION* C0;
	SCX_CONNEXION* C1;
} SCX_Address;

typedef struct
{
	SCX_Address Address;
	int DummyConnexionParam;
} SCX_Parameters; //parametres d'une connexion en particulier

//fin partie sp�cifique

//impl�mentations fonctions internes

static SPG_CONV SCX_CONNEXION* scxCHAINOpen(void* vCI, void* vAddress)
{
	SCI_CONNEXIONINTERFACE* CI=(SCI_CONNEXIONINTERFACE*)vCI;
	sciCHECK(CI,"scxOpen");
	SCX_CONNEXION* C=scxAllocZ(SCX_CONNEXION,sci_NAME ":scxOpen");
	C->CI=CI;
	SCX_Parameters& scxParameters=*scxAllocZ(SCX_Parameters,sci_NAME ":scxOpen");
	C->scxParameters=(void*)&scxParameters;
	scxParameters.Address=*(SCX_Address*)vAddress;
	CHECKTWO(strcmp(scxParameters.Address.Name,sci_NAME),"scxOpen:Invalid format for " sci_NAME "\r\nscxParameters.Address.Name=",scxParameters.Address.Name,scxFree(C->scxParameters);scxFree(C);return 0);

	scxParameters.DummyConnexionParam=0;//sp�cifique

	C->Etat=scxOK;
	return C;
}

static SPG_CONV int scxCHAINClose(SCX_CONNEXION* C)
{
	scxCHECK(C, "scxClose");

	scxFree(C->scxParameters);
	scxFree(C);
	return scxOK;
}

static SPG_CONV int scxCHAINWrite(void* Data, int DataLen, SCX_CONNEXION* C)
{//attention Read et Write n'ont ici qu'un sens conventionnel; write copie les donn�es transitant de C1 vers C0 dans Data
	scxCHECK(C, "scxWrite");//variables cr�es CI,sciParameters,scxParameters
	scxRead(Data,DataLen,scxParameters.Address.C1);
	if(DataLen)
	{
		scxWrite(Data,DataLen,scxParameters.Address.C0);
	}
	return DataLen;
}

static SPG_CONV int scxCHAINRead(void* Data, int& DataLen, SCX_CONNEXION* C)
{//attention Read et Write n'ont ici qu'un sens conventionnel; read copie les donn�es transitant de C0 vers C1 dans Data
	scxCHECK(C, "scxRead");//variables cr�es CI,sciParameters,scxParameters
	scxRead(Data,DataLen,scxParameters.Address.C0);
	if(DataLen)
	{
		scxWrite(Data,DataLen,scxParameters.Address.C1);
	}
	return DataLen;
}

static SPG_CONV int scxCHAINCfgAddress(SPG_CONFIGFILE& CFG, void* vAddress)
{
	SCX_Address& Address=*(SCX_Address*)vAddress;
	if(strcmp(Address.Name,sci_NAME))
	{//set default values
		SPG_ZeroStruct(Address);
		strcpy(Address.Name,sci_NAME);
	}
	if(CFG.Etat==0) CFG_Init(CFG,0,0);
	CFG_StringParam(CFG,"Name",Address.Name,0,1);
	CHECKTWO(strcmp(Address.Name,sci_NAME),"scxCfgAddress: Incompatible address for " sci_NAME "\r\nAddress.Name=",Address.Name,CFG_Close(CFG,0);return 0);

	return CFG.Etat;
}

static SPG_CONV int scxCHAINSetParameter(char* ParamName, void* Value, SCX_CONNEXION* C)
{
	scxCHECK(C, "scxSetParameter");//variables cr�es CI,sciParameters,scxParameters
	return 0;
}

static SPG_CONV int scxCHAINGetParameter(char* ParamName, void* Value, SCX_CONNEXION* C)
{
	scxCHECK(C, "scxGetParameter");//variables cr�es CI,sciParameters,scxParameters
	return 0;
}

static SPG_CONV int sciCHAINDestroyConnexionInterface(void* vCI)
{
	SCI_CONNEXIONINTERFACE* CI=(SCI_CONNEXIONINTERFACE*)vCI;
	CHECK(CI==0,"scxDeleteConnexionInterface",return 0);
	CHECK(CI->TypeUID!=sci_UID,"scxDeleteConnexionInterface",return 0);
	scxFree(CI->sciParameters);
	scxFree(CI);
	return scxOK;
}


//fonctions export�es

SPG_CONV SCI_CONNEXIONINTERFACE* sciCHAINCreateConnexionInterface()
{
	SCI_CONNEXIONINTERFACE* CI=scxAllocZ(SCI_CONNEXIONINTERFACE,sci_NAME ":sciCreateConnexionInterface()");

	CI->TypeUID=sci_UID;
	CI->Type=(SCI_TYPE)(sciBOTH|sciNODLG|sciPACKETRESPECT);
	strcpy(CI->Name,sci_NAME);
	//CI->Description=SPG_MemAlloc(strlen(Description)+1,sci_NAME ":sciCreateConnexionInterface().Description"); strcpy(CI->Description,Description);
	CI->Description="Chain";
	CI->sizeofAddress=sizeof(SCX_Address);

	SCI_Parameters& sciParameters=*scxAlloc(SCI_Parameters,sci_NAME ":sciCreateConnexionInterface()");
	CI->sciParameters=(void*)&sciParameters;

	CI->scxOpen=scxCHAINOpen;
	CI->scxClose=scxCHAINClose;
	CI->scxWrite=scxCHAINWrite;
	CI->scxRead=scxCHAINRead;
	CI->scxCfgAddress=scxCHAINCfgAddress;
	CI->scxSetParameter=scxCHAINSetParameter;
	CI->scxGetParameter=scxCHAINGetParameter;

	CI->sciDestroyConnexionInterface=sciCHAINDestroyConnexionInterface;

	CI->maxPacketSize=0;//sp�cifique

	sciParameters.DummyInterfaceParam=0;//sp�cifique

	CI->Etat=scxOK;

	return CI;
}
