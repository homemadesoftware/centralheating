using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;

namespace CentralHeatingEmulator
{
    /// <summary>
    /// Defines the callback
    /// </summary>
    public delegate void CallbackDelegate(int cookie);

    /// <summary>
    /// Registers for a callback of timer
    /// </summary>
    public delegate void RegisterForTimerDelegate(int cookie, int milliSeconds, CallbackDelegate callback);

    /// <summary>
    /// Enables/Disables a timer
    /// </summary>
    public delegate void EnableTimerDelegate(int cookie, bool enabled);

    /// <summary>
    /// Gets RTC
    /// </summary>
    public delegate void GetRtcDelegate(ref DateTimeStruct dts);

    /// <summary>
    /// Sets RTC
    /// </summary>
    public delegate void SetRtcDelegate(ref DateTimeStruct dts);
    
    /// <summary>
    /// Directly writes the buffer to display
    /// </summary>
    public delegate void WriteDisplayBufferDelegate(
        [MarshalAs(UnmanagedType.LPArray, SizeConst = 32)]
        byte[] buffer);

    /// <summary>
    /// Gets the keys
    /// 1 = Left
    /// 2 = Enter
    /// 4 = Right
    /// </summary>
    public delegate void GetKeyStateDelegate(ref int keys);


    public delegate void GetWaitingKeysDelegate(IntPtr buffer, ref byte readCount);

    /// <summary>
    /// Uses 5 bits to read the status of the inputs
    /// </summary>
    public delegate void GetInputPortValuesDelegate(ref byte value);

    /// <summary>
    /// Uses 8 bytes to set port values
    /// </summary>
    public delegate void SetOutputPortValuesDelegate(byte value);


    /// <summary>
    /// Reads the hotwater temp if possible
    /// </summary>
    /// <param name="value"></param>
    public delegate void ReadHotWaterTemperatureDelegate(ref float value);


    // Delegate for Heart beat
    public delegate void HeartBeatDelegate();

    /// <summary>
    /// Displays a message and dies
    /// </summary>
    public delegate void CrashDumpDelegate(
        [MarshalAs(UnmanagedType.LPStr)]
        string message);
        

    public struct EmulatedHardwareInfo
    {
        
        /// <summary>
        /// Call this to register a timer
        /// </summary>
        public RegisterForTimerDelegate RegisterForTimer;

        /// <summary>
        /// Enables/disables timer
        /// </summary>
        public EnableTimerDelegate EnableTimer;

        /// <summary>
        /// Access RTC
        /// </summary>
        public GetRtcDelegate GetRtc;

        /// <summary>
        /// Set RTC
        /// </summary>
        public SetRtcDelegate SetRtc;

        /// <summary>
        /// Blat the buffer
        /// </summary>
        public WriteDisplayBufferDelegate WriteDisplayBuffer;

        /// <summary>
        /// Get Key state
        /// </summary>
        public GetKeyStateDelegate GetKeyState;

        /// <summary>
        /// Get Key state
        /// </summary>
        public GetWaitingKeysDelegate GetWaitingKeys;

        /// <summary>
        /// Gets the input
        /// </summary>
        public GetInputPortValuesDelegate GetInputPortValues;


        /// <summary>
        /// Sets output
        /// </summary>
        public SetOutputPortValuesDelegate SetOutputPortValues;


        /// <summary>
        /// Reads hot water temp
        /// </summary>
        public ReadHotWaterTemperatureDelegate ReadHotWaterTemperature;


        /// Provides a heart beat
        public HeartBeatDelegate HeartBeat;



        /// <summary>
        /// Provides a crash dump
        /// </summary>
        public CrashDumpDelegate CrashDump;
    }
}
