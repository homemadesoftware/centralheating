using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace CentralHeatingEmulator
{
    /// <summary>
    /// A sample program, not in C but in C#
    /// </summary>
    static public class SampleProgramModule
    {
        const int rtcUpdateCookie = 1;
        const int readKeysCookie = 2;
        static byte[] buffer = new byte[32];
        static EmulatedHardwareInfo pCalls;

        static public void HardwareCall(ref EmulatedHardwareInfo info)
        {
            pCalls = info;

            // Stuff with blanks
            for (int i = 0; i < buffer.Length; ++i)
            {
                buffer[i] = (byte)' ';
            }

            for (int i = 0; i < 16; ++i)
            {
                string digit = (i + 1).ToString();
                if (digit.Length == 2)
                {
                    digit = digit.Substring(1, 1);
                }
                buffer[16 + i] = (byte)digit[0];
            }

            // Do the registrations
            pCalls.RegisterForTimer(rtcUpdateCookie, 1000, Callback);
            pCalls.RegisterForTimer(readKeysCookie, 10, Callback);
            return;
        }

        static public void Callback(int cookie)
        {

            string formatted;
            switch (cookie)
            {
                case rtcUpdateCookie:
                    DateTimeStruct st = new DateTimeStruct();
                    pCalls.GetRtc(ref st);

                    formatted = string.Format("{0:00}:{1:00}", st.hours, st.minutes);

                    for (int i = 0; i < formatted.Length; ++i)
                    {
                        buffer[i + 11] = (byte)formatted[i];
                    }
                    pCalls.WriteDisplayBuffer(buffer);
                    break;

                case readKeysCookie:
                    byte[] keys = new byte[16];
                    byte readCount = 0;
                    pCalls.GetWaitingKeys(keys, ref readCount);
                    for (int i =0; i< readCount; ++i)
                    {
                        formatted = string.Format("{0}", keys[i]);
                        buffer[0] = (byte)formatted[0];
                        pCalls.WriteDisplayBuffer(buffer);
                    }
                    break;
            }

        }
    }
}
