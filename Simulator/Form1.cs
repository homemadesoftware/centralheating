using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;

namespace CentralHeatingEmulator
{
    public partial class Form1 : Form
    {
        int timerInterruptCount = 0;
        EmulatedHardwareInfo hwInfo;
        List<TimerSetup> timers = new List<TimerSetup>();
        bool[] buttonDown = new bool[6];
        bool heartShown = true;
        List<byte> inputBuffer = new List<byte>();
        string lastKnownBootId = "";
        EmulatedHardwareManager hardwareManager = new EmulatedHardwareManager();

        // CH output constants
        private const int INPUT_ZONENC1 = (0x01); // not used
        private const int INPUT_ZONENC2 = (0x02); // not used
        private const int INPUT_ZONE3 = (0x04);  // P3_2
        private const int INPUT_ZONE4 = (0x08);  // P3_3, currently not used
        private const int INPUT_ZONE1 = (0x10);  // P3_4
        private const int INPUT_ZONE2 = (0x20);  // P3_5
        private const int INPUT_ZONE5 = (0x40);  // P3_6, currently not used
        private const int INPUT_ZONE6 = (0x80); // busted


        private const int OUTPUT_ACTUATOR1 = (0x01);
        private const int OUTPUT_ACTUATOR2 = (0x02);
        private const int OUTPUT_ACTUATOR3 = (0x04);
        private const int OUTPUT_ACTUATOR4 = (0x08);
        private const int OUTPUT_HWACTUATOR = (0x10);
        private const int OUTPUT_BOILER = (0x20);
        private const int OUTPUT_ACTUATOR5 = (0x40);
        private const int OUTPUT_ACTUATOR6 = (0x80);



        public Form1()
        {
            InitializeComponent();
        }

        private void tmrMain_Tick(object sender, EventArgs e)
        {
            timerInterruptCount += 10;
            // When the interrupt occurs, service the 
            // callers
            foreach (TimerSetup timer in timers)
            {
                if ((timer.ActivatedAt + timer.PeriodMilliseconds) < timerInterruptCount)
                {
                    timer.ActivatedAt = timerInterruptCount;
                    timer.Callback(timer.Cookie);
                }
            }
        }

        private void tmrInterruptCountDisplay_Tick(object sender, EventArgs e)
        {
            txtInterruptCount.Text = timerInterruptCount.ToString();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // Initialise RTC like a DS1307
            txtRtcInternal.Text = DateTime.Now.ToFileTime().ToString();
            //txtRtcInternal.Text = new DateTime(2025, 05, 02, 17, 30, 0).ToFileTime().ToString();

            // Initialise the module
            hwInfo = new EmulatedHardwareInfo();
            hwInfo.GetRtc = GetRtc;
            hwInfo.SetRtc = SetRtc;
            hwInfo.WriteDisplayBuffer = WriteDisplayBuffer;
            hwInfo.RegisterForTimer = RegisterForTimer;
            hwInfo.EnableTimer = EnableTimer;
            hwInfo.GetWaitingKeys = GetWaitingKeys;
            hwInfo.SetOutputPortValues = SetOutputPortValues;
            hwInfo.GetInputPortValues = GetInputPortValues;
            hwInfo.ReadHotWaterTemperature = ReadHotWaterTemperature;
            hwInfo.HeartBeat = HeartBeat;
            hwInfo.ReadLastNetworkPacket = ReadLastNetworkPacket;
            hwInfo.SendNetworkPacket = SendNetworkPacket;
            hwInfo.CrashDump = CrashDump;

            // Starts powered off - see btnPowerOn_Click/btnPowerOff_Click.
        }

        void newButton_MouseDown(object sender, MouseEventArgs e)
        {
            if (sender is Button)
            {
                Button button = (Button)sender;
                buttonDown[int.Parse((string)button.Tag) - 1] = true;
            }
        }

        void newButton_MouseUp(object sender, MouseEventArgs e)
        {
            if (sender is Button)
            {
                Button button = (Button)sender;
                int index = int.Parse((string)button.Tag) - 1;
                bool previousState = buttonDown[index];

                if (previousState && inputBuffer.Count < 16)
                {
                    inputBuffer.Add((byte)(index + 1));
                }
                buttonDown[index] = false;
            }
        }



        private void btnPowerOn_Click(object sender, EventArgs e)
        {
            hardwareManager.PowerOn(ref hwInfo);

            btnPowerOn.Enabled = false;
            btnPowerOff.Enabled = true;
            uiGroup.Enabled = true;
            outputsGroup.Enabled = true;
            tmrMain.Enabled = true;
        }

        private void btnPowerOff_Click(object sender, EventArgs e)
        {
            // Stop feeding the native side timer ticks before freeing it -
            // it's passive otherwise, so nothing else needs pausing.
            tmrMain.Enabled = false;

            hardwareManager.PowerOff();

            // These held callbacks/state from the now-unloaded module - the
            // next PowerOn starts a fresh instance and re-registers its own.
            timers.Clear();
            inputBuffer.Clear();

            uiGroup.Enabled = false;
            outputsGroup.Enabled = false;
            foreach (Control control in outputsGroup.Controls)
            {
                if (control is CheckBox checkBox)
                {
                    checkBox.Checked = false;
                }
            }
            picHeart.Visible = false;
            lblDisplay.Text = "";
            lastKnownBootId = "";

            btnPowerOn.Enabled = true;
            btnPowerOff.Enabled = false;
        }


        #region Virtual Hardware


        /// <summary>
        /// Registers for a timer callback
        /// </summary>
        private void RegisterForTimer(int cookie, int milliSeconds, CallbackDelegate callback)
        {
            TimerSetup ts =
                timers.Find(
                    delegate (TimerSetup t)
                    {
                        return t.Cookie == cookie;
                    });

            if (ts == null)
            {
                ts = new TimerSetup();
                timers.Add(ts);
            }

            ts.Cookie = cookie;
            ts.PeriodMilliseconds = milliSeconds;
            ts.ActivatedAt = timerInterruptCount;
            ts.Callback = callback;
        }


        /// <summary>
        /// Enables/disables a timer
        /// </summary>
        /// <param name="cookie"></param>
        /// <param name="enabled"></param>
        private void EnableTimer(int cookie, bool enabled)
        {
            TimerSetup ts =
                timers.Find(
                    delegate (TimerSetup t)
                    {
                        return t.Cookie == cookie;
                    });

            if (ts != null)
            {
                ts.Enabled = enabled;
            }
        }


        /// <summary>
        /// Writes the buffer out
        /// </summary>
        /// <param name="buffer"></param>
        private void WriteDisplayBuffer(byte[] buffer)
        {
            char[] charBuffer = new char[32];
            for (int i = 0; i < charBuffer.Length; ++i)
            {
                charBuffer[i] = ' ';
            }

            for (int i = 0; i < Math.Min(buffer.Length, 32); ++i)
            {
                charBuffer[i] = (char)buffer[i];
            }
            string contents = new string(charBuffer);
            lblDisplay.Text = contents.Substring(0, 16) + "\n" + contents.Substring(16, 16);
        }

        private void SetRtc(ref DateTimeStruct dts)
        {
            DateTime dt = new DateTime(2000 + dts.year, dts.month, dts.day, dts.hours, dts.minutes, dts.seconds);
            txtRtcInternal.Text = dt.ToFileTime().ToString();
        }

        private void GetRtc(ref DateTimeStruct dts)
        {
            long rtcVal = long.Parse(txtRtcInternal.Text);
            DateTime dt = DateTime.FromFileTime(rtcVal);
            dts.day = (byte)dt.Day;
            dts.dayOfWeek = (byte)dt.DayOfWeek;
            dts.hours = (byte)dt.Hour;
            dts.month = (byte)dt.Month;
            dts.minutes = (byte)dt.Minute;
            dts.seconds = (byte)dt.Second;
            dts.year = (byte)(dt.Year - 2000);
        }

        private void GetWaitingKeys(byte[] buffer, ref byte readCount)
        {
            if (inputBuffer.Count > 0)
            {
                for (int i = 0; i < inputBuffer.Count; ++i)
                {
                    buffer[i] = inputBuffer[i];
                }
                readCount = (byte)inputBuffer.Count;
                inputBuffer.Clear();
            }
            else
            {
                readCount = 0;
            }
        }


        private void GetInputPortValues(ref byte value)
        {
            value = 0;
            value |= (byte)(chkInput1.Checked ? INPUT_ZONE1 : 0);
            value |= (byte)(chkInput2.Checked ? INPUT_ZONE2 : 0);
            value |= (byte)(chkInput3.Checked ? INPUT_ZONE3 : 0);
            value |= (byte)(chkInput4.Checked ? INPUT_ZONE4 : 0);
            value |= (byte)(chkInput5.Checked ? INPUT_ZONE5 : 0);
        }

        private void ReadHotWaterTemperature(ref float value)
        {
            value = (float)numTemperature.Value;
        }

        private void SetOutputPortValues(byte value)
        {
            chkOutput1.Checked = (value & OUTPUT_ACTUATOR1) != 0;
            chkOutput2.Checked = (value & OUTPUT_ACTUATOR2) != 0;
            chkOutput3.Checked = (value & OUTPUT_ACTUATOR3) != 0;
            chkOutput4.Checked = (value & OUTPUT_ACTUATOR4) != 0;
            chkOutput5.Checked = (value & OUTPUT_HWACTUATOR) != 0;
            chkOutput6.Checked = (value & OUTPUT_BOILER) != 0;
            chkOutput7.Checked = (value & OUTPUT_ACTUATOR5) != 0;
            chkOutput8.Checked = (value & OUTPUT_ACTUATOR6) != 0;
        }

        private void HeartBeat()
        {
            heartShown = !heartShown;
            picHeart.Visible = heartShown;
        }

        private void ReadLastNetworkPacket(IntPtr data, int maxLength)
        {
            // Whatever is currently in txtDesiredState is served verbatim -
            // freely editable by hand too, not just via the three buttons
            // below, so malformed/edge-case blocks can be tested directly.
            byte[] bytes = Encoding.ASCII.GetBytes(txtDesiredState.Text);
            int copyLength = Math.Min(bytes.Length, maxLength - 1);
            Marshal.Copy(bytes, 0, data, copyLength);
            Marshal.WriteByte(data, copyLength, 0);
        }

        // Same id format the real Command Centre uses (AWS-BACKEND-SPEC.md) -
        // zero-padded epoch-ms so plain string comparison agrees with
        // chronological order, plus a GUID to guarantee a new id even if two
        // clicks land in the same millisecond.
        private static string GenerateDesiredStateId()
        {
            long epochMs = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds();
            return epochMs.ToString("D16") + Guid.NewGuid().ToString("N");
        }

        private void SetDesiredState(string desiredState)
        {
            txtDesiredState.Text = "boot-id " + lastKnownBootId + "\r\ndesired-state " + desiredState + "\r\ndesired-state-id " + GenerateDesiredStateId() + "\r\n";
        }

        // Pulled out of the Pico's own outbound status packet, so the desired
        // state we hand back always targets whatever boot-id the emulated
        // hardware last reported - not the emulator's own idea of "now".
        private static string ExtractBootId(string quackText)
        {
            const string prefix = "boot-id ";
            foreach (string line in quackText.Split('\n'))
            {
                if (line.StartsWith(prefix))
                {
                    return line.Substring(prefix.Length).Trim();
                }
            }
            return "";
        }

        private void btnDesiredStateNone_Click(object sender, EventArgs e)
        {
            SetDesiredState("none");
        }

        private void btnDesiredStateOn_Click(object sender, EventArgs e)
        {
            SetDesiredState("on");
        }

        private void btnDesiredStateOff_Click(object sender, EventArgs e)
        {
            SetDesiredState("off");
        }

        private void SendNetworkPacket(string data)
        {
            lastKnownBootId = ExtractBootId(data);

            string expanded = data.Replace("\n", "\r\n");
            if (txtNetworkPacketOut.Text != expanded)
            {
                txtNetworkPacketOut.Text = expanded;
            }
        }

        private void CrashDump(string message)
        {
            lblDisplay.Text = message;
            lblCrashMessage.Text = "Crash dump: " + message;
            tmrInterruptCountDisplay.Enabled = false;
            tmrMain.Enabled = false;
            tmrRtc.Enabled = false;
            foreach (Control c in this.Controls)
            {
                if (c != lblCrashMessage)
                {
                    c.Enabled = false;
                }
            }
        }

        #endregion

        private void tmrRtc_Tick(object sender, EventArgs e)
        {
            // Take the current val and add a second
            long rtcVal = long.Parse(txtRtcInternal.Text);
            DateTime dt = DateTime.FromFileTime(rtcVal);
            txtRtcInternal.Text = dt.AddSeconds(1).ToFileTime().ToString();

        }

    }
}
