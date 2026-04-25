using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;

namespace CentralHeatingEmulator
{
    /// <summary>
    /// Date time struct as it appears in the C program
    /// </summary>
    [StructLayout(LayoutKind.Sequential, Pack = 8)]
    public struct DateTimeStruct
    {
        public byte seconds;
	    public byte minutes;
	    public byte hours;
	    public byte dayOfWeek;
	    public byte day;
	    public byte month;
        public byte year;
    }
}
