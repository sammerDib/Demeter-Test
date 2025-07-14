
#include "SPG_General.h"

#ifdef SPG_DEBUGCONFIG

#include "SPG_Includes.h"
#include "SPG_SysInc.h"

void SPG_CONV BreakHook()
{
#ifdef SPG_General_USEWindows
#ifdef BreakHookDebugBreak
	if(IsDebuggerPresent()) DebugBreak();	//en debug les messages d'erreur sont associ�s � ce breakpoint (faire stepout -> SPG_List pour voir le message associ�)
#endif
#endif
	return;
}

void SPG_CONV InitHook()
{

	return;
}

void SPG_CONV SetMemBreakSequence()
{
	// Global.MS.BreakOnAllocSequence=1873; //pour mettre un breakpoint sur une allocation particuli�re
	return;
}

#endif
