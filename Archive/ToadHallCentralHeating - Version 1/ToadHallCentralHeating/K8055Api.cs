using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.InteropServices;

namespace ToadHallCentralHeating
{
    public sealed class K8055Api
    {
        [DllImport("k8055d.dll")]
        extern static public int OpenDevice(int cardAddress);

        [DllImport("k8055d.dll")]
        extern static public void CloseDevice();

        [DllImport("k8055d.dll")]
        public static extern void WriteAllDigital(int Data);

        [DllImport("k8055d.dll")]
        public static extern int ReadAllDigital();

    }
}
