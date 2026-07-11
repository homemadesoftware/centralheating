namespace PicoWindowsEmulator;

public partial class Form1 : Form
{
    readonly PwHost _host = new();

    public Form1()
    {
        InitializeComponent();
    }

    private void Form1_Load(object sender, EventArgs e)
    {
        _host.Start();
    }

    private void Form1_FormClosing(object sender, FormClosingEventArgs e)
    {
        _host.Stop();
    }
}
