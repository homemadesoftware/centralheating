using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;

namespace CentralHeatingEmulator
{
    static public class PortedProgramToLink
    {
        [DllImport(@"x86Emulated.dll", CallingConvention = CallingConvention.Cdecl)]
        static extern public void StartEmulatedHardware(ref EmulatedHardwareInfo info);
    }
}
