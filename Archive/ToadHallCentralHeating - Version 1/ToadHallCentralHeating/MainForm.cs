using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Threading;

namespace ToadHallCentralHeating
{
    public partial class MainForm : Form
    {
        private int channel;
        private int iterations;
        private DateTime rebootTime;
        private DateTime hotWaterStart, hotWaterEnd;
        private bool summerProgram;
                    
        public MainForm()
        {
            InitializeComponent();
        }

        
        protected override void OnClosed(EventArgs e)
        {
            K8055Api.CloseDevice();
            base.OnClosed(e);
        }

        private void ReadInputs()
        {
            // sensors
            int status = K8055Api.ReadAllDigital();
            chkSensorZone1.Checked = (status & 1) != 0;
            chkSensorZone2.Checked = (status & 2) != 0;
            chkSensorZone3.Checked = (status & 4) != 0;

            // hotwater
            DateTime now;
            ParseTime(FormatTime(DateTime.Now), out now);

            chkHotWater.Checked = (hotWaterStart <= now && now <= hotWaterEnd);
            ++iterations;
            txtIterations.Text = iterations.ToString();
            
        }

        private void RunLogic()
        {
            if (summerProgram)
            {
                chkActuatorZone1.Checked = false;
                chkActuatorZone2.Checked = false;
                chkActuatorZone3.Checked = false;
                chkPump.Checked = false;
                chkBoiler.Checked = chkHotWater.Checked;
            }
            else
            {
                chkActuatorZone1.Checked = chkSensorZone1.Checked;
                chkActuatorZone2.Checked = chkSensorZone2.Checked;
                chkActuatorZone3.Checked = chkSensorZone3.Checked;

                if (chkActuatorZone1.Checked || chkActuatorZone2.Checked || chkActuatorZone3.Checked)
                {
                    chkPump.Checked = chkBoiler.Checked = true;
                }
                else
                {
                    chkPump.Checked = chkBoiler.Checked = false;
                }
            }
        }

        private void WriteOutputs()
        {
            int status = 0;
            if (chkActuatorZone1.Checked)
            {
                status |= 1; // Output 1
            }
            if (chkActuatorZone2.Checked)
            {
                status |= 2; // Output 2
            }
            if (chkActuatorZone3.Checked)
            {
                status |= 4; // Output 3
            }
            //status |= 8;
            
            if (chkBoiler.Checked)
            {
                status |= 16; // Output 5
            }

            if (chkPump.Checked)
            {
                status |= 32; // Output 6
            }

            K8055Api.WriteAllDigital(~status);
        }

        
        private void Connect()
        {
            channel = K8055Api.OpenDevice(0);
            if (channel < 0)
            {
                MessageBox.Show(this, "Cannot connect to device", Text);
                return;
            }
        }

        private void tmrRun_Tick(object sender, EventArgs e)
        {
            ReadInputs();
            if (chkAuto.Checked)
            {
                RunLogic();
            }
            WriteOutputs();
        }

        private void HandleAutoChanged()
        {
            grpOutputs.Enabled = !chkAuto.Checked;
        }

        private void chkAuto_CheckedChanged(object sender, EventArgs e)
        {
            HandleAutoChanged();
        }

        /// <summary>
        /// Parse the time and returns it in a date of 1/1/2008
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        private bool ParseTime(string s, out DateTime time)
        {
            time = new DateTime();
            string[] parts = s.Split(':');
            if (parts.Length != 2)
            {
                return false;
            }
            int h, m;
            if (!int.TryParse(parts[0], out h))
            {
                return false;
            }
            if (!int.TryParse(parts[1], out m))
            {
                return false;
            }
            time = new DateTime(2008, 1, 1, h, m, 0);
            return true;
        }

        private string FormatTime(DateTime time)
        {
            return string.Format("{0:00}:{1:00}", time.Hour, time.Minute, 0);
        }

        private bool ReadRebootTime()
        {
            if (!ParseTime(ToadHall.Default.RebootTime, out rebootTime))
            {
                MessageBox.Show(this, "Invalid reboot time", this.Text);
                return false;
            }
            pckRestartTime.Value = rebootTime;
            btnSaveReboot.Enabled = false;
            return true;
        }

        private bool ReadStartEndTime()
        {
            DateTime startTime, endTime;
            if (!ParseTime(ToadHall.Default.HotWaterStart, out startTime))
            {
                MessageBox.Show(this, "Invalid hot water start time", this.Text);
                return false;
            }

            if (!ParseTime(ToadHall.Default.HotWaterEnd, out endTime))
            {
                MessageBox.Show(this, "Invalid hot water end time", this.Text);
                return false;
            }
            pckHotWaterStart.Value = hotWaterStart = startTime;
            pckHotWaterEnd.Value = hotWaterEnd = endTime;
            btnSave.Enabled = false;
            return true;
        }

        private bool SaveRebootTime()
        {
            ToadHall.Default["RebootTime"] = FormatTime(pckRestartTime.Value);
            ToadHall.Default.Save(); 
            return true;
        }

        private bool SaveStartEndTime()
        {
            if (pckHotWaterStart.Value > pckHotWaterEnd.Value)
            {
                MessageBox.Show(this, "End time is before start time", this.Text);
                return false;
            }
            ToadHall.Default["HotWaterStart"] = FormatTime(pckHotWaterStart.Value);
            ToadHall.Default["HotWaterEnd"] = FormatTime(pckHotWaterEnd.Value);
            ToadHall.Default.Save();
            return true;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            summerProgram = ToadHall.Default.SummerProgram;
            if (summerProgram)
            {
                tabProgram.SelectedIndex = 1;
            }
            if (!ReadRebootTime() || !ReadStartEndTime())
            {
                Close();
                return;
            }
            
            HandleAutoChanged();
            Connect();
            SetupRebootThread();
        }

        private void pckRestartTime_ValueChanged(object sender, EventArgs e)
        {
            btnSaveReboot.Enabled = true;
        }

        private void pckHotWaterStart_ValueChanged(object sender, EventArgs e)
        {
            btnSave.Enabled = true;
        }

        private void pckHotWaterEnd_ValueChanged(object sender, EventArgs e)
        {
            btnSave.Enabled = true;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (SaveStartEndTime())
            {
                ReadStartEndTime();
            }
        }

        private void btnSaveReboot_Click(object sender, EventArgs e)
        {
            if (SaveRebootTime())
            {
                ReadRebootTime();
            }
        }

        private void tabProgram_SelectedIndexChanged(object sender, EventArgs e)
        {
            ToadHall.Default["SummerProgram"] = tabProgram.SelectedIndex == 1;
            ToadHall.Default.Save();
            summerProgram = ToadHall.Default.SummerProgram;
        }

        private void SetupRebootThread()
        {
            ThreadPool.QueueUserWorkItem(new WaitCallback(CheckReboot));
        }

        private void CheckReboot(object state)
        {
            while (true)
            {
                DateTime now = DateTime.Now;
                if (now.Hour == rebootTime.Hour && now.Minute == rebootTime.Minute)
                {
                    ExitWindowsApi.ExitWithTokenAdjustment(ExitWindowsApi.EWX_REBOOT);
                    break;
                }
                Thread.Sleep(10000);
            }
        }
    }
}