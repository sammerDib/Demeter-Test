# Microsoft Developer Studio Project File - Name="FogaleProbeApp" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=FogaleProbeApp - Win32 DebugUSBOnly
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "FogaleProbeApp.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "FogaleProbeApp.mak" CFG="FogaleProbeApp - Win32 DebugUSBOnly"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FogaleProbeApp - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "FogaleProbeApp - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "FogaleProbeApp - Win32 DebugNoHardware" (based on "Win32 (x86) Application")
!MESSAGE "FogaleProbeApp - Win32 ReleaseNoHardware" (based on "Win32 (x86) Application")
!MESSAGE "FogaleProbeApp - Win32 ReleaseUSBOnly" (based on "Win32 (x86) Application")
!MESSAGE "FogaleProbeApp - Win32 DebugUSBOnly" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=xicl6.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "FogaleProbeApp - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /G6 /Gr /Zp16 /MD /W3 /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FD /c
# SUBTRACT CPP /Fr /YX /Yc /Yu
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x40c /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x40c /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=xilink6.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386 /out:"FogaleProbeApp.exe"

!ELSEIF  "$(CFG)" == "FogaleProbeApp - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "FogaleProbeApp___Win32_Debug"
# PROP BASE Intermediate_Dir "FogaleProbeApp___Win32_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /Zp16 /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FD /GZ /c
# SUBTRACT CPP /Fr /YX /Yc /Yu
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x40c /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x40c /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=xilink6.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386 /out:"FogaleProbeApp.exe" /pdbtype:sept
# SUBTRACT LINK32 /nodefaultlib

!ELSEIF  "$(CFG)" == "FogaleProbeApp - Win32 DebugNoHardware"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "FogaleProbeApp___Win32_DebugNoHardware"
# PROP BASE Intermediate_Dir "FogaleProbeApp___Win32_DebugNoHardware"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "FogaleProbeAppDebugNoHardware"
# PROP Intermediate_Dir "FogaleProbeAppDebugNoHardware"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /Zp16 /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR /FD /GZ /c
# SUBTRACT BASE CPP /YX /Yc /Yu
# ADD CPP /nologo /Zp16 /MTd /W4 /Gm /Zi /Od /Gy /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "NOHARDWARE" /FD /GZ /c
# SUBTRACT CPP /Fr /YX /Yc /Yu
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x40c /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x40c /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=xilink6.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /out:"FogaleProbeApp.exe" /pdbtype:sept
# ADD LINK32 /nologo /subsystem:windows /pdb:none /debug /machine:I386 /out:"FogaleProbeApp.exe"

!ELSEIF  "$(CFG)" == "FogaleProbeApp - Win32 ReleaseNoHardware"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "FogaleProbeApp___Win32_ReleaseNoHardware"
# PROP BASE Intermediate_Dir "FogaleProbeApp___Win32_ReleaseNoHardware"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseNoHardware"
# PROP Intermediate_Dir "ReleaseNoHardware"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /Gr /Zp16 /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR /FD /c
# SUBTRACT BASE CPP /YX /Yc /Yu
# ADD CPP /nologo /G6 /Gr /Zp16 /MD /W3 /Ox /Ot /Oa /Og /Oi /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FD /c
# SUBTRACT CPP /Fr /YX /Yc /Yu
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x40c /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x40c /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=xilink6.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386 /out:"FogaleProbeApp.exe"
# ADD LINK32 /nologo /subsystem:windows /machine:I386 /out:"FogaleProbeApp.exe"

!ELSEIF  "$(CFG)" == "FogaleProbeApp - Win32 ReleaseUSBOnly"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "FogaleProbeApp___Win32_ReleaseUSBOnly"
# PROP BASE Intermediate_Dir "FogaleProbeApp___Win32_ReleaseUSBOnly"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "FogaleProbeApp_ReleaseUSBOnly"
# PROP Intermediate_Dir "FogaleProbeApp_ReleaseUSBOnly"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /Gr /Zp16 /MD /W3 /Ox /Ot /Oa /Og /Oi /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FD /c
# SUBTRACT BASE CPP /Fr /YX /Yc /Yu
# ADD CPP /nologo /G6 /Gr /Zp16 /MD /W3 /Ox /Ot /Oa /Og /Oi /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /D "NOHARDWARE" /D "SPG_General_USECyUSB" /FD /c
# SUBTRACT CPP /Fr /YX /Yc /Yu
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x40c /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x40c /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=xilink6.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386 /out:"FogaleProbeApp.exe"
# ADD LINK32 /nologo /subsystem:windows /machine:I386 /out:"FogaleProbeApp.exe"

!ELSEIF  "$(CFG)" == "FogaleProbeApp - Win32 DebugUSBOnly"

# PROP BASE Use_MFC 5
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "FogaleProbeApp___Win32_DebugUSBOnly"
# PROP BASE Intermediate_Dir "FogaleProbeApp___Win32_DebugUSBOnly"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "FogaleProbeApp_DebugUSBOnly"
# PROP Intermediate_Dir "FogaleProbeApp_DebugUSBOnly"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /Zp16 /MTd /W4 /Gm /Zi /Od /Gy /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "NOHARDWARE" /FD /GZ /c
# SUBTRACT BASE CPP /Fr /YX /Yc /Yu
# ADD CPP /nologo /Zp16 /MTd /W4 /Gm /Zi /Od /Gy /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "NOHARDWARE" /D "SPG_General_USECyUSB" /FD /GZ /c
# SUBTRACT CPP /Fr /YX /Yc /Yu
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x40c /d "_DEBUG"
# ADD RSC /l 0x40c /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=xilink6.exe
# ADD BASE LINK32 /nologo /subsystem:windows /pdb:none /debug /machine:I386 /out:"FogaleProbeApp.exe"
# ADD LINK32 /nologo /subsystem:windows /pdb:none /debug /machine:I386 /out:"FogaleProbeApp.exe"

!ENDIF 

# Begin Target

# Name "FogaleProbeApp - Win32 Release"
# Name "FogaleProbeApp - Win32 Debug"
# Name "FogaleProbeApp - Win32 DebugNoHardware"
# Name "FogaleProbeApp - Win32 ReleaseNoHardware"
# Name "FogaleProbeApp - Win32 ReleaseUSBOnly"
# Name "FogaleProbeApp - Win32 DebugUSBOnly"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\FogaleProbeApp.cpp
# End Source File
# Begin Source File

SOURCE=.\FogaleProbeAppDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\FogaleProbeCalibrate.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Group "FogaleProbeDLLPublicHeaders"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FogaleProbe.h
# End Source File
# Begin Source File

SOURCE=.\FogaleProbeParamID.h
# End Source File
# Begin Source File

SOURCE=.\FogaleProbeReturnValues.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\FogaleProbeApp.h
# End Source File
# Begin Source File

SOURCE=.\FogaleProbeAppDlg.h
# End Source File
# Begin Source File

SOURCE=.\FogaleProbeCalibrate.h
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\FogaleProbeApp.ico
# End Source File
# Begin Source File

SOURCE=.\res\FogaleProbeApp.ico
# End Source File
# Begin Source File

SOURCE=.\FogaleProbeApp.rc
# End Source File
# End Group
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# End Target
# End Project
