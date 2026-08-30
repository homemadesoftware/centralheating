namespace CentralHeatingEmulator
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.lblDisplay = new System.Windows.Forms.Label();
            this.uiGroup = new System.Windows.Forms.GroupBox();
            this.btnSelect = new System.Windows.Forms.Button();
            this.btnFire = new System.Windows.Forms.Button();
            this.btnRight = new System.Windows.Forms.Button();
            this.btnUp = new System.Windows.Forms.Button();
            this.btnDown = new System.Windows.Forms.Button();
            this.btnLeft = new System.Windows.Forms.Button();
            this.tmrMain = new System.Windows.Forms.Timer(this.components);
            this.timerInterruptGroup = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtInterruptCount = new System.Windows.Forms.TextBox();
            this.rtcGroup = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtRtcInternal = new System.Windows.Forms.TextBox();
            this.tmrRtc = new System.Windows.Forms.Timer(this.components);
            this.tmrInterruptCountDisplay = new System.Windows.Forms.Timer(this.components);
            this.inputsGroup = new System.Windows.Forms.GroupBox();
            this.chkInput5 = new System.Windows.Forms.CheckBox();
            this.chkInput4 = new System.Windows.Forms.CheckBox();
            this.chkInput3 = new System.Windows.Forms.CheckBox();
            this.chkInput2 = new System.Windows.Forms.CheckBox();
            this.chkInput1 = new System.Windows.Forms.CheckBox();
            this.outputsGroup = new System.Windows.Forms.GroupBox();
            this.chkOutput8 = new System.Windows.Forms.CheckBox();
            this.chkOutput7 = new System.Windows.Forms.CheckBox();
            this.chkOutput6 = new System.Windows.Forms.CheckBox();
            this.chkOutput5 = new System.Windows.Forms.CheckBox();
            this.chkOutput4 = new System.Windows.Forms.CheckBox();
            this.chkOutput3 = new System.Windows.Forms.CheckBox();
            this.chkOutput2 = new System.Windows.Forms.CheckBox();
            this.chkOutput1 = new System.Windows.Forms.CheckBox();
            this.picHeart = new System.Windows.Forms.PictureBox();
            this.lblCrashMessage = new System.Windows.Forms.Label();
            this.numTemperature = new System.Windows.Forms.NumericUpDown();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtNetworkPacketOut = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.uiGroup.SuspendLayout();
            this.timerInterruptGroup.SuspendLayout();
            this.rtcGroup.SuspendLayout();
            this.inputsGroup.SuspendLayout();
            this.outputsGroup.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picHeart)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numTemperature)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblDisplay
            // 
            this.lblDisplay.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.lblDisplay.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblDisplay.Font = new System.Drawing.Font("Courier New", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDisplay.Location = new System.Drawing.Point(6, 16);
            this.lblDisplay.Name = "lblDisplay";
            this.lblDisplay.Size = new System.Drawing.Size(183, 39);
            this.lblDisplay.TabIndex = 0;
            this.lblDisplay.Text = "1234567890123456\r\n1234567890123456";
            // 
            // uiGroup
            // 
            this.uiGroup.Controls.Add(this.btnSelect);
            this.uiGroup.Controls.Add(this.btnFire);
            this.uiGroup.Controls.Add(this.btnRight);
            this.uiGroup.Controls.Add(this.btnUp);
            this.uiGroup.Controls.Add(this.btnDown);
            this.uiGroup.Controls.Add(this.btnLeft);
            this.uiGroup.Controls.Add(this.lblDisplay);
            this.uiGroup.Location = new System.Drawing.Point(12, 12);
            this.uiGroup.Name = "uiGroup";
            this.uiGroup.Size = new System.Drawing.Size(200, 189);
            this.uiGroup.TabIndex = 2;
            this.uiGroup.TabStop = false;
            this.uiGroup.Text = "User Interface";
            // 
            // btnSelect
            // 
            this.btnSelect.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.btnSelect.ForeColor = System.Drawing.Color.White;
            this.btnSelect.Location = new System.Drawing.Point(47, 98);
            this.btnSelect.Name = "btnSelect";
            this.btnSelect.Size = new System.Drawing.Size(30, 30);
            this.btnSelect.TabIndex = 1;
            this.btnSelect.Tag = "2";
            this.btnSelect.Text = "✔";
            this.btnSelect.UseVisualStyleBackColor = false;
            this.btnSelect.MouseDown += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseDown);
            this.btnSelect.MouseUp += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseUp);
            // 
            // btnFire
            // 
            this.btnFire.BackColor = System.Drawing.Color.White;
            this.btnFire.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnFire.ForeColor = System.Drawing.Color.Red;
            this.btnFire.Location = new System.Drawing.Point(121, 98);
            this.btnFire.Name = "btnFire";
            this.btnFire.Size = new System.Drawing.Size(30, 30);
            this.btnFire.TabIndex = 1;
            this.btnFire.Tag = "6";
            this.btnFire.Text = "🔥";
            this.btnFire.UseVisualStyleBackColor = false;
            this.btnFire.MouseDown += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseDown);
            this.btnFire.MouseUp += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseUp);
            // 
            // btnRight
            // 
            this.btnRight.BackColor = System.Drawing.Color.Black;
            this.btnRight.ForeColor = System.Drawing.Color.White;
            this.btnRight.Location = new System.Drawing.Point(84, 98);
            this.btnRight.Name = "btnRight";
            this.btnRight.Size = new System.Drawing.Size(30, 30);
            this.btnRight.TabIndex = 1;
            this.btnRight.Tag = "3";
            this.btnRight.Text = "▶";
            this.btnRight.UseVisualStyleBackColor = false;
            this.btnRight.MouseDown += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseDown);
            this.btnRight.MouseUp += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseUp);
            // 
            // btnUp
            // 
            this.btnUp.BackColor = System.Drawing.Color.Black;
            this.btnUp.ForeColor = System.Drawing.Color.White;
            this.btnUp.Location = new System.Drawing.Point(48, 61);
            this.btnUp.Name = "btnUp";
            this.btnUp.Size = new System.Drawing.Size(30, 30);
            this.btnUp.TabIndex = 1;
            this.btnUp.Tag = "4";
            this.btnUp.Text = "▲";
            this.btnUp.UseVisualStyleBackColor = false;
            this.btnUp.MouseDown += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseDown);
            this.btnUp.MouseUp += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseUp);
            // 
            // btnDown
            // 
            this.btnDown.BackColor = System.Drawing.Color.Black;
            this.btnDown.ForeColor = System.Drawing.Color.White;
            this.btnDown.Location = new System.Drawing.Point(47, 137);
            this.btnDown.Name = "btnDown";
            this.btnDown.Size = new System.Drawing.Size(30, 30);
            this.btnDown.TabIndex = 1;
            this.btnDown.Tag = "5";
            this.btnDown.Text = "▼";
            this.btnDown.UseVisualStyleBackColor = false;
            this.btnDown.MouseDown += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseDown);
            this.btnDown.MouseUp += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseUp);
            // 
            // btnLeft
            // 
            this.btnLeft.BackColor = System.Drawing.Color.Black;
            this.btnLeft.ForeColor = System.Drawing.Color.White;
            this.btnLeft.Location = new System.Drawing.Point(10, 98);
            this.btnLeft.Name = "btnLeft";
            this.btnLeft.Size = new System.Drawing.Size(30, 30);
            this.btnLeft.TabIndex = 1;
            this.btnLeft.Tag = "1";
            this.btnLeft.Text = "◀";
            this.btnLeft.UseVisualStyleBackColor = false;
            this.btnLeft.MouseDown += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseDown);
            this.btnLeft.MouseUp += new System.Windows.Forms.MouseEventHandler(this.newButton_MouseUp);
            // 
            // tmrMain
            // 
            this.tmrMain.Enabled = true;
            this.tmrMain.Interval = 10;
            this.tmrMain.Tick += new System.EventHandler(this.tmrMain_Tick);
            // 
            // timerInterruptGroup
            // 
            this.timerInterruptGroup.Controls.Add(this.label1);
            this.timerInterruptGroup.Controls.Add(this.txtInterruptCount);
            this.timerInterruptGroup.Location = new System.Drawing.Point(228, 141);
            this.timerInterruptGroup.Name = "timerInterruptGroup";
            this.timerInterruptGroup.Size = new System.Drawing.Size(264, 55);
            this.timerInterruptGroup.TabIndex = 3;
            this.timerInterruptGroup.TabStop = false;
            this.timerInterruptGroup.Text = "Timer Interrupt Driver";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(7, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Count";
            // 
            // txtInterruptCount
            // 
            this.txtInterruptCount.Location = new System.Drawing.Point(48, 22);
            this.txtInterruptCount.Name = "txtInterruptCount";
            this.txtInterruptCount.ReadOnly = true;
            this.txtInterruptCount.Size = new System.Drawing.Size(132, 20);
            this.txtInterruptCount.TabIndex = 0;
            // 
            // rtcGroup
            // 
            this.rtcGroup.Controls.Add(this.label2);
            this.rtcGroup.Controls.Add(this.txtRtcInternal);
            this.rtcGroup.Location = new System.Drawing.Point(12, 207);
            this.rtcGroup.Name = "rtcGroup";
            this.rtcGroup.Size = new System.Drawing.Size(200, 60);
            this.rtcGroup.TabIndex = 3;
            this.rtcGroup.TabStop = false;
            this.rtcGroup.Text = "RTC";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(7, 25);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(30, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Time";
            // 
            // txtRtcInternal
            // 
            this.txtRtcInternal.Location = new System.Drawing.Point(48, 22);
            this.txtRtcInternal.Name = "txtRtcInternal";
            this.txtRtcInternal.ReadOnly = true;
            this.txtRtcInternal.Size = new System.Drawing.Size(132, 20);
            this.txtRtcInternal.TabIndex = 0;
            // 
            // tmrRtc
            // 
            this.tmrRtc.Enabled = true;
            this.tmrRtc.Interval = 1000;
            this.tmrRtc.Tick += new System.EventHandler(this.tmrRtc_Tick);
            // 
            // tmrInterruptCountDisplay
            // 
            this.tmrInterruptCountDisplay.Enabled = true;
            this.tmrInterruptCountDisplay.Interval = 1000;
            this.tmrInterruptCountDisplay.Tick += new System.EventHandler(this.tmrInterruptCountDisplay_Tick);
            // 
            // inputsGroup
            // 
            this.inputsGroup.Controls.Add(this.chkInput5);
            this.inputsGroup.Controls.Add(this.chkInput4);
            this.inputsGroup.Controls.Add(this.chkInput3);
            this.inputsGroup.Controls.Add(this.chkInput2);
            this.inputsGroup.Controls.Add(this.chkInput1);
            this.inputsGroup.Location = new System.Drawing.Point(228, 12);
            this.inputsGroup.Name = "inputsGroup";
            this.inputsGroup.Size = new System.Drawing.Size(264, 55);
            this.inputsGroup.TabIndex = 3;
            this.inputsGroup.TabStop = false;
            this.inputsGroup.Text = "Inputs";
            // 
            // chkInput5
            // 
            this.chkInput5.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkInput5.AutoSize = true;
            this.chkInput5.BackColor = System.Drawing.SystemColors.Control;
            this.chkInput5.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.chkInput5.FlatAppearance.BorderSize = 2;
            this.chkInput5.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.chkInput5.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkInput5.Location = new System.Drawing.Point(131, 19);
            this.chkInput5.Name = "chkInput5";
            this.chkInput5.Size = new System.Drawing.Size(23, 23);
            this.chkInput5.TabIndex = 0;
            this.chkInput5.Text = "5";
            this.chkInput5.UseVisualStyleBackColor = false;
            // 
            // chkInput4
            // 
            this.chkInput4.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkInput4.AutoSize = true;
            this.chkInput4.BackColor = System.Drawing.SystemColors.Control;
            this.chkInput4.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.chkInput4.FlatAppearance.BorderSize = 2;
            this.chkInput4.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.chkInput4.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkInput4.Location = new System.Drawing.Point(102, 19);
            this.chkInput4.Name = "chkInput4";
            this.chkInput4.Size = new System.Drawing.Size(23, 23);
            this.chkInput4.TabIndex = 0;
            this.chkInput4.Text = "4";
            this.chkInput4.UseVisualStyleBackColor = false;
            // 
            // chkInput3
            // 
            this.chkInput3.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkInput3.AutoSize = true;
            this.chkInput3.BackColor = System.Drawing.SystemColors.Control;
            this.chkInput3.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.chkInput3.FlatAppearance.BorderSize = 2;
            this.chkInput3.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.chkInput3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkInput3.Location = new System.Drawing.Point(73, 19);
            this.chkInput3.Name = "chkInput3";
            this.chkInput3.Size = new System.Drawing.Size(23, 23);
            this.chkInput3.TabIndex = 0;
            this.chkInput3.Text = "3";
            this.chkInput3.UseVisualStyleBackColor = false;
            // 
            // chkInput2
            // 
            this.chkInput2.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkInput2.AutoSize = true;
            this.chkInput2.BackColor = System.Drawing.SystemColors.Control;
            this.chkInput2.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.chkInput2.FlatAppearance.BorderSize = 2;
            this.chkInput2.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.chkInput2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkInput2.Location = new System.Drawing.Point(44, 19);
            this.chkInput2.Name = "chkInput2";
            this.chkInput2.Size = new System.Drawing.Size(23, 23);
            this.chkInput2.TabIndex = 0;
            this.chkInput2.Text = "2";
            this.chkInput2.UseVisualStyleBackColor = false;
            // 
            // chkInput1
            // 
            this.chkInput1.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkInput1.AutoSize = true;
            this.chkInput1.BackColor = System.Drawing.SystemColors.Control;
            this.chkInput1.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.chkInput1.FlatAppearance.BorderSize = 2;
            this.chkInput1.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.chkInput1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkInput1.Location = new System.Drawing.Point(15, 19);
            this.chkInput1.Name = "chkInput1";
            this.chkInput1.Size = new System.Drawing.Size(23, 23);
            this.chkInput1.TabIndex = 0;
            this.chkInput1.Text = "1";
            this.chkInput1.UseVisualStyleBackColor = false;
            // 
            // outputsGroup
            // 
            this.outputsGroup.Controls.Add(this.chkOutput8);
            this.outputsGroup.Controls.Add(this.chkOutput7);
            this.outputsGroup.Controls.Add(this.chkOutput6);
            this.outputsGroup.Controls.Add(this.chkOutput5);
            this.outputsGroup.Controls.Add(this.chkOutput4);
            this.outputsGroup.Controls.Add(this.chkOutput3);
            this.outputsGroup.Controls.Add(this.chkOutput2);
            this.outputsGroup.Controls.Add(this.chkOutput1);
            this.outputsGroup.Location = new System.Drawing.Point(228, 73);
            this.outputsGroup.Name = "outputsGroup";
            this.outputsGroup.Size = new System.Drawing.Size(264, 55);
            this.outputsGroup.TabIndex = 3;
            this.outputsGroup.TabStop = false;
            this.outputsGroup.Text = "Outputs";
            // 
            // chkOutput8
            // 
            this.chkOutput8.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkOutput8.AutoSize = true;
            this.chkOutput8.BackColor = System.Drawing.SystemColors.Control;
            this.chkOutput8.Enabled = false;
            this.chkOutput8.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.chkOutput8.FlatAppearance.BorderSize = 2;
            this.chkOutput8.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkOutput8.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkOutput8.Location = new System.Drawing.Point(225, 19);
            this.chkOutput8.Name = "chkOutput8";
            this.chkOutput8.Size = new System.Drawing.Size(23, 23);
            this.chkOutput8.TabIndex = 2;
            this.chkOutput8.Text = "8";
            this.chkOutput8.UseVisualStyleBackColor = false;
            // 
            // chkOutput7
            // 
            this.chkOutput7.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkOutput7.AutoSize = true;
            this.chkOutput7.BackColor = System.Drawing.SystemColors.Control;
            this.chkOutput7.Enabled = false;
            this.chkOutput7.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.chkOutput7.FlatAppearance.BorderSize = 2;
            this.chkOutput7.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkOutput7.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkOutput7.Location = new System.Drawing.Point(195, 19);
            this.chkOutput7.Name = "chkOutput7";
            this.chkOutput7.Size = new System.Drawing.Size(23, 23);
            this.chkOutput7.TabIndex = 1;
            this.chkOutput7.Text = "7";
            this.chkOutput7.UseVisualStyleBackColor = false;
            // 
            // chkOutput6
            // 
            this.chkOutput6.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkOutput6.AutoSize = true;
            this.chkOutput6.BackColor = System.Drawing.SystemColors.Control;
            this.chkOutput6.Enabled = false;
            this.chkOutput6.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.chkOutput6.FlatAppearance.BorderSize = 2;
            this.chkOutput6.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkOutput6.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkOutput6.Location = new System.Drawing.Point(165, 19);
            this.chkOutput6.Name = "chkOutput6";
            this.chkOutput6.Size = new System.Drawing.Size(23, 23);
            this.chkOutput6.TabIndex = 0;
            this.chkOutput6.Text = "6";
            this.chkOutput6.UseVisualStyleBackColor = false;
            // 
            // chkOutput5
            // 
            this.chkOutput5.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkOutput5.AutoSize = true;
            this.chkOutput5.BackColor = System.Drawing.SystemColors.Control;
            this.chkOutput5.Enabled = false;
            this.chkOutput5.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.chkOutput5.FlatAppearance.BorderSize = 2;
            this.chkOutput5.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkOutput5.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkOutput5.Location = new System.Drawing.Point(135, 19);
            this.chkOutput5.Name = "chkOutput5";
            this.chkOutput5.Size = new System.Drawing.Size(23, 23);
            this.chkOutput5.TabIndex = 0;
            this.chkOutput5.Text = "5";
            this.chkOutput5.UseVisualStyleBackColor = false;
            // 
            // chkOutput4
            // 
            this.chkOutput4.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkOutput4.AutoSize = true;
            this.chkOutput4.BackColor = System.Drawing.SystemColors.Control;
            this.chkOutput4.Enabled = false;
            this.chkOutput4.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.chkOutput4.FlatAppearance.BorderSize = 2;
            this.chkOutput4.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkOutput4.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkOutput4.Location = new System.Drawing.Point(105, 19);
            this.chkOutput4.Name = "chkOutput4";
            this.chkOutput4.Size = new System.Drawing.Size(23, 23);
            this.chkOutput4.TabIndex = 0;
            this.chkOutput4.Text = "4";
            this.chkOutput4.UseVisualStyleBackColor = false;
            // 
            // chkOutput3
            // 
            this.chkOutput3.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkOutput3.AutoSize = true;
            this.chkOutput3.BackColor = System.Drawing.SystemColors.Control;
            this.chkOutput3.Enabled = false;
            this.chkOutput3.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.chkOutput3.FlatAppearance.BorderSize = 2;
            this.chkOutput3.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkOutput3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkOutput3.Location = new System.Drawing.Point(75, 19);
            this.chkOutput3.Name = "chkOutput3";
            this.chkOutput3.Size = new System.Drawing.Size(23, 23);
            this.chkOutput3.TabIndex = 0;
            this.chkOutput3.Text = "3";
            this.chkOutput3.UseVisualStyleBackColor = false;
            // 
            // chkOutput2
            // 
            this.chkOutput2.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkOutput2.AutoSize = true;
            this.chkOutput2.BackColor = System.Drawing.SystemColors.Control;
            this.chkOutput2.Enabled = false;
            this.chkOutput2.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.chkOutput2.FlatAppearance.BorderSize = 2;
            this.chkOutput2.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkOutput2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkOutput2.Location = new System.Drawing.Point(45, 19);
            this.chkOutput2.Name = "chkOutput2";
            this.chkOutput2.Size = new System.Drawing.Size(23, 23);
            this.chkOutput2.TabIndex = 0;
            this.chkOutput2.Text = "2";
            this.chkOutput2.UseVisualStyleBackColor = false;
            // 
            // chkOutput1
            // 
            this.chkOutput1.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkOutput1.AutoSize = true;
            this.chkOutput1.BackColor = System.Drawing.SystemColors.Control;
            this.chkOutput1.Enabled = false;
            this.chkOutput1.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.chkOutput1.FlatAppearance.BorderSize = 2;
            this.chkOutput1.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkOutput1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkOutput1.Location = new System.Drawing.Point(15, 19);
            this.chkOutput1.Name = "chkOutput1";
            this.chkOutput1.Size = new System.Drawing.Size(23, 23);
            this.chkOutput1.TabIndex = 0;
            this.chkOutput1.Text = "1";
            this.chkOutput1.UseVisualStyleBackColor = false;
            // 
            // picHeart
            // 
            this.picHeart.Image = global::CentralHeatingEmulator.Properties.Resources.heart2;
            this.picHeart.Location = new System.Drawing.Point(238, 218);
            this.picHeart.Name = "picHeart";
            this.picHeart.Size = new System.Drawing.Size(40, 41);
            this.picHeart.TabIndex = 5;
            this.picHeart.TabStop = false;
            // 
            // lblCrashMessage
            // 
            this.lblCrashMessage.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lblCrashMessage.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCrashMessage.Location = new System.Drawing.Point(12, 528);
            this.lblCrashMessage.Name = "lblCrashMessage";
            this.lblCrashMessage.Size = new System.Drawing.Size(480, 44);
            this.lblCrashMessage.TabIndex = 4;
            // 
            // numTemperature
            // 
            this.numTemperature.DecimalPlaces = 2;
            this.numTemperature.Increment = new decimal(new int[] {
            1,
            0,
            0,
            131072});
            this.numTemperature.Location = new System.Drawing.Point(110, 21);
            this.numTemperature.Maximum = new decimal(new int[] {
            180,
            0,
            0,
            0});
            this.numTemperature.Minimum = new decimal(new int[] {
            20,
            0,
            0,
            -2147483648});
            this.numTemperature.Name = "numTemperature";
            this.numTemperature.Size = new System.Drawing.Size(78, 20);
            this.numTemperature.TabIndex = 6;
            this.numTemperature.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.numTemperature.Value = new decimal(new int[] {
            185,
            0,
            0,
            65536});
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.numTemperature);
            this.groupBox1.Location = new System.Drawing.Point(12, 273);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(200, 56);
            this.groupBox1.TabIndex = 7;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Temperature (C)";
            // 
            // txtNetworkPacketOut
            // 
            this.txtNetworkPacketOut.Location = new System.Drawing.Point(11, 19);
            this.txtNetworkPacketOut.Multiline = true;
            this.txtNetworkPacketOut.Name = "txtNetworkPacketOut";
            this.txtNetworkPacketOut.ReadOnly = true;
            this.txtNetworkPacketOut.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtNetworkPacketOut.Size = new System.Drawing.Size(200, 156);
            this.txtNetworkPacketOut.TabIndex = 8;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtNetworkPacketOut);
            this.groupBox2.Location = new System.Drawing.Point(12, 344);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(480, 181);
            this.groupBox2.TabIndex = 9;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Network";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.ClientSize = new System.Drawing.Size(504, 580);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.picHeart);
            this.Controls.Add(this.lblCrashMessage);
            this.Controls.Add(this.rtcGroup);
            this.Controls.Add(this.outputsGroup);
            this.Controls.Add(this.inputsGroup);
            this.Controls.Add(this.timerInterruptGroup);
            this.Controls.Add(this.uiGroup);
            this.Name = "Form1";
            this.Text = "Central Heating Emulator";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.uiGroup.ResumeLayout(false);
            this.timerInterruptGroup.ResumeLayout(false);
            this.timerInterruptGroup.PerformLayout();
            this.rtcGroup.ResumeLayout(false);
            this.rtcGroup.PerformLayout();
            this.inputsGroup.ResumeLayout(false);
            this.inputsGroup.PerformLayout();
            this.outputsGroup.ResumeLayout(false);
            this.outputsGroup.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picHeart)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numTemperature)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lblDisplay;
        private System.Windows.Forms.GroupBox uiGroup;
        private System.Windows.Forms.Timer tmrMain;
        private System.Windows.Forms.GroupBox timerInterruptGroup;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtInterruptCount;
        private System.Windows.Forms.GroupBox rtcGroup;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtRtcInternal;
        private System.Windows.Forms.Timer tmrRtc;
        private System.Windows.Forms.Timer tmrInterruptCountDisplay;
        private System.Windows.Forms.GroupBox inputsGroup;
        private System.Windows.Forms.CheckBox chkInput1;
        private System.Windows.Forms.CheckBox chkInput5;
        private System.Windows.Forms.CheckBox chkInput4;
        private System.Windows.Forms.CheckBox chkInput3;
        private System.Windows.Forms.CheckBox chkInput2;
        private System.Windows.Forms.GroupBox outputsGroup;
        private System.Windows.Forms.CheckBox chkOutput5;
        private System.Windows.Forms.CheckBox chkOutput4;
        private System.Windows.Forms.CheckBox chkOutput3;
        private System.Windows.Forms.CheckBox chkOutput2;
        private System.Windows.Forms.CheckBox chkOutput1;
        private System.Windows.Forms.CheckBox chkOutput6;
        private System.Windows.Forms.CheckBox chkOutput8;
        private System.Windows.Forms.CheckBox chkOutput7;
        private System.Windows.Forms.PictureBox picHeart;
        private System.Windows.Forms.Label lblCrashMessage;
        private System.Windows.Forms.NumericUpDown numTemperature;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSelect;
        private System.Windows.Forms.Button btnFire;
        private System.Windows.Forms.Button btnRight;
        private System.Windows.Forms.Button btnUp;
        private System.Windows.Forms.Button btnDown;
        private System.Windows.Forms.Button btnLeft;
        private System.Windows.Forms.TextBox txtNetworkPacketOut;
        private System.Windows.Forms.GroupBox groupBox2;
    }
}

