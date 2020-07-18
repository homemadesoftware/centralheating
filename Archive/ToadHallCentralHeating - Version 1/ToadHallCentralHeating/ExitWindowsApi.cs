using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.InteropServices;

namespace ToadHallCentralHeating
{
    internal static class ExitWindowsApi
    {
        [StructLayout(LayoutKind.Sequential, Pack=1)]
        private struct TokPriv1Luid
        {
            public int Count;
            public long Luid;
            public int Attr;
        }

        [DllImport("kernel32.dll", ExactSpelling=true) ]
        private static extern IntPtr GetCurrentProcess();

        [DllImport("advapi32.dll", ExactSpelling=true, SetLastError=true) ]
        private static extern bool OpenProcessToken(IntPtr h, int acc, ref IntPtr phtok);

        [DllImport("advapi32.dll", SetLastError=true) ]
        private static extern bool LookupPrivilegeValue(string host, string name, ref long pluid);

        [DllImport("advapi32.dll", ExactSpelling=true, SetLastError=true) ]
        private static extern bool AdjustTokenPrivileges(IntPtr htok, bool disall, ref TokPriv1Luid newst, int len, IntPtr prev, IntPtr relen);

        [DllImport("user32.dll", ExactSpelling=true, SetLastError=true) ]
        private static extern bool ExitWindowsEx( int flg, int rea );

        public const int SE_PRIVILEGE_ENABLED = 0x00000002;
        public const int TOKEN_QUERY = 0x00000008;
        public const int TOKEN_ADJUST_PRIVILEGES = 0x00000020;
        public const string SE_SHUTDOWN_NAME = "SeShutdownPrivilege";
        public const int EWX_LOGOFF = 0x00000000;
        public const int EWX_SHUTDOWN = 0x00000001;
        public const int EWX_REBOOT = 0x00000002;
        public const int EWX_FORCE = 0x00000004;
        public const int EWX_POWEROFF = 0x00000008;
        public const int EWX_FORCEIFHUNG = 0x00000010;


        /// <summary>
        /// Exits windows
        /// </summary>
        /// <param name="flg"></param>
        static public void ExitWithTokenAdjustment(int flg)
        {
            bool success;
            TokPriv1Luid tokenPrivilege;
            IntPtr processHandle = GetCurrentProcess();
            IntPtr openToken = IntPtr.Zero;
            success = OpenProcessToken( processHandle, TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, ref openToken );
            tokenPrivilege.Count = 1;
            tokenPrivilege.Luid = 0;
            tokenPrivilege.Attr = SE_PRIVILEGE_ENABLED;
            success = LookupPrivilegeValue( null, SE_SHUTDOWN_NAME, ref tokenPrivilege.Luid );
            success = AdjustTokenPrivileges( openToken, false, ref tokenPrivilege, 0, IntPtr.Zero, IntPtr.Zero );
            success = ExitWindowsEx( flg, 0 );
        }


    }
}
