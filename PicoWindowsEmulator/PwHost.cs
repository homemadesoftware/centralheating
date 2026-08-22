using System.Collections.Concurrent;
using System.Runtime.InteropServices;

namespace PicoWindowsEmulator;

internal class PwHost
{
    [DllImport("x86-emulated-pico-windows.dll")]
    static extern void PW_StartEmulatedHardware(ref PW_BoardCalls calls);

    [DllImport("x86-emulated-pico-windows.dll")]
    static extern void PW_Tick();

    PW_BoardCalls _boardCalls;
    Thread _thread;
    volatile bool _running;

    readonly ConcurrentQueue<byte> _inputQueue = new();

    public void Start()
    {
        _boardCalls = new PW_BoardCalls
        {
            DisplayFullRefresh    = OnDisplayFullRefresh,
            DisplayPartialRefresh = OnDisplayPartialRefresh,
            GetWaitingKeys        = OnGetWaitingKeys,
            GetRtc                = OnGetRtc,
        };

        _running = true;
        _thread = new Thread(Loop) { IsBackground = true };
        _thread.Start();
    }

    public void Stop()
    {
        _running = false;
        _thread.Join(2000);
    }

    public void EnqueueKey(byte key) => _inputQueue.Enqueue(key);

    void Loop()
    {
        PW_StartEmulatedHardware(ref _boardCalls);

        while (_running)
        {
            PW_Tick();
            Thread.Sleep(300);
        }
    }

    void OnDisplayFullRefresh(IntPtr buffer)
    {
        // TODO: copy buffer, enqueue frame, render with physics (full refresh)
    }

    void OnDisplayPartialRefresh(IntPtr buffer)
    {
        // TODO: copy buffer, enqueue frame, render with physics (partial refresh)
    }

    void OnGetWaitingKeys(byte[] buffer, ref byte readCount)
    {
        readCount = 0;
        while (readCount < 16 && _inputQueue.TryDequeue(out byte key))
            buffer[readCount++] = key;
    }

    void OnGetRtc(ref DateTimeStruct dts)
    {
        DateTime now = DateTime.UtcNow;
        dts.seconds   = (byte)now.Second;
        dts.minutes   = (byte)now.Minute;
        dts.hours     = (byte)now.Hour;
        dts.dayOfWeek = (byte)now.DayOfWeek;
        dts.day       = (byte)now.Day;
        dts.month     = (byte)now.Month;
        dts.year      = (byte)(now.Year - 2000);
    }
}
