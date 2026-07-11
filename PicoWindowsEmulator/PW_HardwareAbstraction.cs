using System;
using System.Runtime.InteropServices;

namespace PicoWindowsEmulator
{
    // Full refresh — slow, clears ghosting, primes reference register
    // Buffer is unmanaged C imageBuffer (3904 bytes); copy immediately, do not retain the pointer
    public delegate void DisplayFullRefreshDelegate(IntPtr buffer);

    // Partial refresh — fast, no flash
    public delegate void DisplayPartialRefreshDelegate(IntPtr buffer);

    // Read buffered key presses — buffer is pre-allocated by C, readCount set on return
    public delegate void GetWaitingKeysDelegate(
        [In, Out][MarshalAs(UnmanagedType.LPArray, SizeConst = 16)]
        byte[] buffer, ref byte readCount);

    // Read RTC
    public delegate void GetRtcDelegate(ref DateTimeStruct dts);


    [StructLayout(LayoutKind.Sequential)]
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


    [StructLayout(LayoutKind.Sequential)]
    public struct PW_BoardCalls
    {
        public DisplayFullRefreshDelegate  DisplayFullRefresh;
        public DisplayPartialRefreshDelegate DisplayPartialRefresh;
        public GetWaitingKeysDelegate      GetWaitingKeys;
        public GetRtcDelegate              GetRtc;
    }
}
