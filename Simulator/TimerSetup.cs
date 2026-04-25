using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CentralHeatingEmulator
{
    public class TimerSetup
    {
        public int Cookie { get; set; }
        public int PeriodMilliseconds { get; set; }
        public int ActivatedAt { get; set; }
        public bool Enabled { get; set;}
        public CallbackDelegate Callback { get; set; }
    }
}
