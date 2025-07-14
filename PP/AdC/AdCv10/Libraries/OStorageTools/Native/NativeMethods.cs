#region Copyright (c) 2006-2008 Cellbi
/*
Cellbi Software Component Product
Copyright (c) 2006-2008 Cellbi
www.cellbi.com

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

	1.	Redistributions of source code must retain the above copyright notice,
			this list of conditions and the following disclaimer.

	2.	Redistributions in binary form must reproduce the above copyright notice,
			this list of conditions and the following disclaimer in the documentation
			and/or other materials provided with the distribution.

	3.	The names of the authors may not be used to endorse or promote products derived
			from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED �AS IS� AND ANY EXPRESSED OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL CELLBI
OR ANY CONTRIBUTORS TO THIS SOFTWARE BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
#endregion

using System;
using System.Runtime.InteropServices;

namespace OStorageTools.Native
{
    internal class NativeMethods
    {
        private NativeMethods() { }

        private const string Ole32Dll = "ole32.dll";

        [DllImport(Ole32Dll, CharSet = CharSet.Unicode)]
        public static extern int StgOpenStorage(string pwcsName, IStorage pstgPriority, int grfMode, IntPtr snbExclude, int reserved, out IStorage ppstgOpen);

        [DllImport(Ole32Dll, CharSet = CharSet.Unicode)]
        public static extern int StgIsStorageFile(string pwcsName);

        [DllImport(Ole32Dll, CharSet = CharSet.Unicode)]
        public static extern UInt32 StgCreateStorageEx(string pwcsName, int grfMode, int stgfmt, uint grfAttrs, IntPtr pStgOptions, IntPtr reserved2, ref Guid riid, out IStorage ppObjectOpen);

    }


}