using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CentralHeatingEmulator
{
    /// <summary>
    /// Call from the emulated hardware to the C program
    /// </summary>
    /// <param name="?"></param>
    public delegate void EmulatedHardwareCallDelegate(
        EmulatedHardwareInfo info);

    
}
