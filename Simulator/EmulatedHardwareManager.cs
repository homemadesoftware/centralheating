using System;
using System.ComponentModel;
using System.Runtime.InteropServices;

namespace CentralHeatingEmulator
{
    // Owns the lifecycle of the unmanaged x86Emulated.dll. PowerOn loads a
    // fresh copy and calls into it; PowerOff frees it entirely. Because the
    // module is genuinely unloaded (not just a leftover reference sitting
    // idle), the native side's own globals - bootId, lastDesiredStateId,
    // and anything added later - reinitialise themselves the same way they
    // would on a real Pico reboot. Nothing here needs to know what those
    // globals are or remember to reset them by hand.
    class EmulatedHardwareManager
    {
        private const string DllPath = "x86Emulated.dll";

        [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
        private delegate void StartEmulatedHardwareDelegate(ref EmulatedHardwareInfo info);

        [DllImport("kernel32.dll", SetLastError = true, CharSet = CharSet.Ansi)]
        private static extern IntPtr LoadLibrary(string dllPath);

        [DllImport("kernel32.dll", SetLastError = true)]
        private static extern bool FreeLibrary(IntPtr hModule);

        [DllImport("kernel32.dll", SetLastError = true, CharSet = CharSet.Ansi)]
        private static extern IntPtr GetProcAddress(IntPtr hModule, string procName);

        private IntPtr moduleHandle = IntPtr.Zero;

        public bool IsPoweredOn => moduleHandle != IntPtr.Zero;

        public void PowerOn(ref EmulatedHardwareInfo hwInfo)
        {
            if (IsPoweredOn)
            {
                throw new InvalidOperationException("Already powered on.");
            }

            moduleHandle = LoadLibrary(DllPath);
            if (moduleHandle == IntPtr.Zero)
            {
                throw new Win32Exception(Marshal.GetLastWin32Error());
            }

            IntPtr procAddress = GetProcAddress(moduleHandle, "StartEmulatedHardware");
            if (procAddress == IntPtr.Zero)
            {
                FreeLibrary(moduleHandle);
                moduleHandle = IntPtr.Zero;
                throw new Win32Exception(Marshal.GetLastWin32Error());
            }

            var startEmulatedHardware = (StartEmulatedHardwareDelegate)Marshal.GetDelegateForFunctionPointer(
                procAddress, typeof(StartEmulatedHardwareDelegate));
            startEmulatedHardware(ref hwInfo);
        }

        public void PowerOff()
        {
            if (!IsPoweredOn)
            {
                return;
            }

            FreeLibrary(moduleHandle);
            moduleHandle = IntPtr.Zero;
        }
    }
}
