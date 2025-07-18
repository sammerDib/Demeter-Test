﻿using System;
using System.Runtime.InteropServices;

namespace UnitySC.PM.PSD.Tools.NanoTopo.NanoViewer.Native
{
    public enum STGM : int
    {
        READ = 0x00000000,
        WRITE = 0x00000001,
        READWRITE = 0x00000002,
        SHARE_DENY_NONE = 0x00000040,
        SHARE_DENY_READ = 0x00000030,
        SHARE_DENY_WRITE = 0x00000020,
        SHARE_EXCLUSIVE = 0x00000010,
        PRIORITY = 0x00040000,
        CREATE = 0x00001000,
        CONVERT = 0x00020000,
        FAILIFTHERE = 0x00000000,
        DIRECT = 0x00000000,
        TRANSACTED = 0x00010000,
        NOSCRATCH = 0x00100000,
        NOSNAPSHOT = 0x00200000,
        SIMPLE = 0x08000000,
        DIRECT_SWMR = 0x00400000,
        DELETEONRELEASE = 0x04000000
    }

 //   [ComImport, ComConversionLoss, InterfaceType(ComInterfaceType.InterfaceIsIUnknown), Guid(Guids.IStorage)]
//     [ComVisible(true), ComImport(), Guid("0000013A-0000-0000-C000-000000000046"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
//     public interface IPropertySetStorage
//     {
//         uint Create([In] ref System.Guid rfmtid, [In] IntPtr pclsid, [In] int grfFlags, [In] int grfMode, ref IPropertyStorage propertyStorage);
//         int Open([In] ref System.Guid rfmtid, [In] int grfMode, [Out] out IPropertyStorage propertyStorage);
//     }
}
