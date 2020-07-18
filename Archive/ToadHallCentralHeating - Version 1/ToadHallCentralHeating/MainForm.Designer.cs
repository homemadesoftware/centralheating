namespace ToadHallCentralHeating
{
    partial class MainForm
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
            this.chkSensorZone1 = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.chkSensorZone3 = new System.Windows.Forms.CheckBox();
            this.chkSensorZone2 = new System.Windows.Forms.CheckBox();
            this.txtIterations = new System.Windows.Forms.TextBox();
            this.grpOutputs = new System.Windows.Forms.GroupBox();
            this.chkPump = new System.Windows.Forms.CheckBox();
            this.chkBoiler = new System.Windows.Forms.CheckBox();
            this.chkActuatorZone3 = new System.Windows.Forms.CheckBox();
            this.chkActuatorZone2 = new System.Windows.Forms.CheckBox();
            this.chkActuatorZone1 = new System.Windows.Forms.CheckBox();
            this.tmrRun = new System.Windows.Forms.Timer(this.components);
            this.chkAuto = new System.Windows.Forms.CheckBox();
            this.tabProgram = new System.Windows.Forms.TabControl();
            this.tabWinter = new System.Windows.Forms.TabPage();
            this.tabSummer = new System.Windows.Forms.TabPage();
            this.pckHotWaterEnd = new System.Windows.Forms.DateTimePicker();
            this.pckHotWaterStart = new System.Windows.Forms.DateTimePicker();
            this.btnSave = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.grpReboot = new System.Windows.Forms.GroupBox();
            this.pckRestartTime = new System.Windows.Forms.DateTimePicker();
            this.btnSaveReboot = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.chkHotWater = new System.Windows.Forms.CheckBox();
            this.groupBox1.SuspendLayout();
            this.grpOutputs.SuspendLayout();
            this.tabProgram.SuspendLayout();
            this.tabWinter.SuspendLayout();
            this.tabSummer.SuspendLayout();
            this.grpReboot.SuspendLayout();
            this.SuspendLayout();
            // 
            // chkSensorZone1
            // 
            this.chkSensorZone1.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkSensorZone1.Enabled = false;
            this.chkSensorZone1.FlatAppearance.BorderSize = 2;
            this.chkSensorZone1.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkSensorZone1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkSensorZone1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkSensorZone1.Location = new System.Drawing.Point(14, 32);
            this.chkSensorZone1.Name = "chkSensorZone1";
            this.chkSensorZone1.Size = new System.Drawing.Size(61, 30);
            this.chkSensorZone1.TabIndex = 1;
            this.chkSensorZone1.Text = "Zone 1";
            this.chkSensorZone1.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.chkSensorZone3);
            this.groupBox1.Controls.Add(this.chkSensorZone2);
            this.groupBox1.Controls.Add(this.chkSensorZone1);
            this.groupBox1.Location = new System.Drawing.Point(6, 6);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(295, 109);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Inputs";
            // 
            // chkSensorZone3
            // 
            this.chkSensorZone3.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkSensorZone3.Enabled = false;
            this.chkSensorZone3.FlatAppearance.BorderSize = 2;
            this.chkSensorZone3.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkSensorZone3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkSensorZone3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkSensorZone3.Location = new System.Drawing.Point(152, 32);
            this.chkSensorZone3.Name = "chkSensorZone3";
            this.chkSensorZone3.Size = new System.Drawing.Size(72, 30);
            this.chkSensorZone3.TabIndex = 1;
            this.chkSensorZone3.Text = "Zone 3";
            this.chkSensorZone3.UseVisualStyleBackColor = true;
            // 
            // chkSensorZone2
            // 
            this.chkSensorZone2.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkSensorZone2.Enabled = false;
            this.chkSensorZone2.FlatAppearance.BorderSize = 2;
            this.chkSensorZone2.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkSensorZone2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkSensorZone2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkSensorZone2.Location = new System.Drawing.Point(81, 32);
            this.chkSensorZone2.Name = "chkSensorZone2";
            this.chkSensorZone2.Size = new System.Drawing.Size(65, 30);
            this.chkSensorZone2.TabIndex = 1;
            this.chkSensorZone2.Text = "Zone 2";
            this.chkSensorZone2.UseVisualStyleBackColor = true;
            // 
            // txtIterations
            // 
            this.txtIterations.Location = new System.Drawing.Point(96, 98);
            this.txtIterations.Name = "txtIterations";
            this.txtIterations.ReadOnly = true;
            this.txtIterations.Size = new System.Drawing.Size(73, 20);
            this.txtIterations.TabIndex = 3;
            // 
            // grpOutputs
            // 
            this.grpOutputs.Controls.Add(this.chkPump);
            this.grpOutputs.Controls.Add(this.chkBoiler);
            this.grpOutputs.Controls.Add(this.chkActuatorZone3);
            this.grpOutputs.Controls.Add(this.chkActuatorZone2);
            this.grpOutputs.Controls.Add(this.chkActuatorZone1);
            this.grpOutputs.Location = new System.Drawing.Point(12, 198);
            this.grpOutputs.Name = "grpOutputs";
            this.grpOutputs.Size = new System.Drawing.Size(405, 96);
            this.grpOutputs.TabIndex = 2;
            this.grpOutputs.TabStop = false;
            this.grpOutputs.Text = "Outputs";
            // 
            // chkPump
            // 
            this.chkPump.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkPump.FlatAppearance.BorderSize = 2;
            this.chkPump.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkPump.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkPump.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkPump.Location = new System.Drawing.Point(99, 60);
            this.chkPump.Name = "chkPump";
            this.chkPump.Size = new System.Drawing.Size(69, 30);
            this.chkPump.TabIndex = 1;
            this.chkPump.Text = "Pump";
            this.chkPump.UseVisualStyleBackColor = true;
            // 
            // chkBoiler
            // 
            this.chkBoiler.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkBoiler.FlatAppearance.BorderSize = 2;
            this.chkBoiler.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkBoiler.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkBoiler.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkBoiler.Location = new System.Drawing.Point(17, 60);
            this.chkBoiler.Name = "chkBoiler";
            this.chkBoiler.Size = new System.Drawing.Size(68, 30);
            this.chkBoiler.TabIndex = 1;
            this.chkBoiler.Text = "Boiler";
            this.chkBoiler.UseVisualStyleBackColor = true;
            // 
            // chkActuatorZone3
            // 
            this.chkActuatorZone3.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkActuatorZone3.FlatAppearance.BorderSize = 2;
            this.chkActuatorZone3.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkActuatorZone3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkActuatorZone3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkActuatorZone3.Location = new System.Drawing.Point(263, 19);
            this.chkActuatorZone3.Name = "chkActuatorZone3";
            this.chkActuatorZone3.Size = new System.Drawing.Size(119, 30);
            this.chkActuatorZone3.TabIndex = 1;
            this.chkActuatorZone3.Text = "Actuator Zone 3";
            this.chkActuatorZone3.UseVisualStyleBackColor = true;
            // 
            // chkActuatorZone2
            // 
            this.chkActuatorZone2.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkActuatorZone2.FlatAppearance.BorderSize = 2;
            this.chkActuatorZone2.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkActuatorZone2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkActuatorZone2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkActuatorZone2.Location = new System.Drawing.Point(138, 19);
            this.chkActuatorZone2.Name = "chkActuatorZone2";
            this.chkActuatorZone2.Size = new System.Drawing.Size(119, 30);
            this.chkActuatorZone2.TabIndex = 1;
            this.chkActuatorZone2.Text = "Actuator Zone 2";
            this.chkActuatorZone2.UseVisualStyleBackColor = true;
            // 
            // chkActuatorZone1
            // 
            this.chkActuatorZone1.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkActuatorZone1.FlatAppearance.BorderSize = 2;
            this.chkActuatorZone1.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkActuatorZone1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkActuatorZone1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkActuatorZone1.Location = new System.Drawing.Point(17, 19);
            this.chkActuatorZone1.Name = "chkActuatorZone1";
            this.chkActuatorZone1.Size = new System.Drawing.Size(115, 30);
            this.chkActuatorZone1.TabIndex = 1;
            this.chkActuatorZone1.Text = "Actuator Zone 1";
            this.chkActuatorZone1.UseVisualStyleBackColor = true;
            // 
            // tmrRun
            // 
            this.tmrRun.Enabled = true;
            this.tmrRun.Interval = 1000;
            this.tmrRun.Tick += new System.EventHandler(this.tmrRun_Tick);
            // 
            // chkAuto
            // 
            this.chkAuto.AutoSize = true;
            this.chkAuto.Checked = true;
            this.chkAuto.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkAuto.Location = new System.Drawing.Point(12, 175);
            this.chkAuto.Name = "chkAuto";
            this.chkAuto.Size = new System.Drawing.Size(142, 17);
            this.chkAuto.TabIndex = 2;
            this.chkAuto.Text = "Auto - Runs the Program";
            this.chkAuto.UseVisualStyleBackColor = true;
            this.chkAuto.CheckedChanged += new System.EventHandler(this.chkAuto_CheckedChanged);
            // 
            // tabProgram
            // 
            this.tabProgram.Controls.Add(this.tabWinter);
            this.tabProgram.Controls.Add(this.tabSummer);
            this.tabProgram.Location = new System.Drawing.Point(12, 12);
            this.tabProgram.Name = "tabProgram";
            this.tabProgram.SelectedIndex = 0;
            this.tabProgram.Size = new System.Drawing.Size(249, 141);
            this.tabProgram.TabIndex = 3;
            this.tabProgram.SelectedIndexChanged += new System.EventHandler(this.tabProgram_SelectedIndexChanged);
            // 
            // tabWinter
            // 
            this.tabWinter.Controls.Add(this.groupBox1);
            this.tabWinter.Location = new System.Drawing.Point(4, 22);
            this.tabWinter.Name = "tabWinter";
            this.tabWinter.Padding = new System.Windows.Forms.Padding(3);
            this.tabWinter.Size = new System.Drawing.Size(241, 115);
            this.tabWinter.TabIndex = 0;
            this.tabWinter.Text = "Winter Program";
            this.tabWinter.UseVisualStyleBackColor = true;
            // 
            // tabSummer
            // 
            this.tabSummer.Controls.Add(this.chkHotWater);
            this.tabSummer.Controls.Add(this.pckHotWaterEnd);
            this.tabSummer.Controls.Add(this.pckHotWaterStart);
            this.tabSummer.Controls.Add(this.btnSave);
            this.tabSummer.Controls.Add(this.label2);
            this.tabSummer.Controls.Add(this.label1);
            this.tabSummer.Location = new System.Drawing.Point(4, 22);
            this.tabSummer.Name = "tabSummer";
            this.tabSummer.Padding = new System.Windows.Forms.Padding(3);
            this.tabSummer.Size = new System.Drawing.Size(241, 115);
            this.tabSummer.TabIndex = 1;
            this.tabSummer.Text = "Summer Program";
            this.tabSummer.UseVisualStyleBackColor = true;
            // 
            // pckHotWaterEnd
            // 
            this.pckHotWaterEnd.CustomFormat = "HH:mm";
            this.pckHotWaterEnd.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.pckHotWaterEnd.Location = new System.Drawing.Point(134, 39);
            this.pckHotWaterEnd.Name = "pckHotWaterEnd";
            this.pckHotWaterEnd.ShowUpDown = true;
            this.pckHotWaterEnd.Size = new System.Drawing.Size(73, 20);
            this.pckHotWaterEnd.TabIndex = 4;
            this.pckHotWaterEnd.ValueChanged += new System.EventHandler(this.pckHotWaterEnd_ValueChanged);
            // 
            // pckHotWaterStart
            // 
            this.pckHotWaterStart.CustomFormat = "HH:mm";
            this.pckHotWaterStart.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.pckHotWaterStart.Location = new System.Drawing.Point(134, 10);
            this.pckHotWaterStart.Name = "pckHotWaterStart";
            this.pckHotWaterStart.ShowUpDown = true;
            this.pckHotWaterStart.Size = new System.Drawing.Size(73, 20);
            this.pckHotWaterStart.TabIndex = 4;
            this.pckHotWaterStart.ValueChanged += new System.EventHandler(this.pckHotWaterStart_ValueChanged);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(13, 74);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 23);
            this.btnSave.TabIndex = 2;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(10, 43);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(78, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Hot Water End";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 17);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(81, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Hot Water Start";
            // 
            // grpReboot
            // 
            this.grpReboot.Controls.Add(this.pckRestartTime);
            this.grpReboot.Controls.Add(this.btnSaveReboot);
            this.grpReboot.Controls.Add(this.txtIterations);
            this.grpReboot.Controls.Add(this.label4);
            this.grpReboot.Controls.Add(this.label3);
            this.grpReboot.Location = new System.Drawing.Point(275, 12);
            this.grpReboot.Name = "grpReboot";
            this.grpReboot.Size = new System.Drawing.Size(189, 141);
            this.grpReboot.TabIndex = 4;
            this.grpReboot.TabStop = false;
            this.grpReboot.Text = "Daily Reboot";
            // 
            // pckRestartTime
            // 
            this.pckRestartTime.CustomFormat = "HH:mm";
            this.pckRestartTime.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.pckRestartTime.Location = new System.Drawing.Point(96, 19);
            this.pckRestartTime.Name = "pckRestartTime";
            this.pckRestartTime.ShowUpDown = true;
            this.pckRestartTime.Size = new System.Drawing.Size(73, 20);
            this.pckRestartTime.TabIndex = 4;
            this.pckRestartTime.ValueChanged += new System.EventHandler(this.pckRestartTime_ValueChanged);
            // 
            // btnSaveReboot
            // 
            this.btnSaveReboot.Location = new System.Drawing.Point(15, 46);
            this.btnSaveReboot.Name = "btnSaveReboot";
            this.btnSaveReboot.Size = new System.Drawing.Size(75, 23);
            this.btnSaveReboot.TabIndex = 2;
            this.btnSaveReboot.Text = "Save";
            this.btnSaveReboot.UseVisualStyleBackColor = true;
            this.btnSaveReboot.Click += new System.EventHandler(this.btnSaveReboot_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 101);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(54, 13);
            this.label4.TabIndex = 0;
            this.label4.Text = "Heartbeat";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 23);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(67, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Restart Time";
            // 
            // chkHotWater
            // 
            this.chkHotWater.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkHotWater.Enabled = false;
            this.chkHotWater.FlatAppearance.BorderSize = 2;
            this.chkHotWater.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red;
            this.chkHotWater.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkHotWater.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkHotWater.Location = new System.Drawing.Point(134, 67);
            this.chkHotWater.Name = "chkHotWater";
            this.chkHotWater.Size = new System.Drawing.Size(61, 30);
            this.chkHotWater.TabIndex = 5;
            this.chkHotWater.Text = "Hot Water";
            this.chkHotWater.UseVisualStyleBackColor = false;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(482, 309);
            this.ControlBox = false;
            this.Controls.Add(this.grpReboot);
            this.Controls.Add(this.tabProgram);
            this.Controls.Add(this.chkAuto);
            this.Controls.Add(this.grpOutputs);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Toad Hall Central Heating/Hot Water";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox1.ResumeLayout(false);
            this.grpOutputs.ResumeLayout(false);
            this.tabProgram.ResumeLayout(false);
            this.tabWinter.ResumeLayout(false);
            this.tabSummer.ResumeLayout(false);
            this.tabSummer.PerformLayout();
            this.grpReboot.ResumeLayout(false);
            this.grpReboot.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox chkSensorZone1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox grpOutputs;
        private System.Windows.Forms.CheckBox chkSensorZone3;
        private System.Windows.Forms.CheckBox chkSensorZone2;
        private System.Windows.Forms.CheckBox chkPump;
        private System.Windows.Forms.CheckBox chkBoiler;
        private System.Windows.Forms.CheckBox chkActuatorZone3;
        private System.Windows.Forms.CheckBox chkActuatorZone2;
        private System.Windows.Forms.CheckBox chkActuatorZone1;
        private System.Windows.Forms.Timer tmrRun;
        private System.Windows.Forms.CheckBox chkAuto;
        private System.Windows.Forms.TextBox txtIterations;
        private System.Windows.Forms.TabControl tabProgram;
        private System.Windows.Forms.TabPage tabWinter;
        private System.Windows.Forms.TabPage tabSummer;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox grpReboot;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnSaveReboot;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker pckHotWaterEnd;
        private System.Windows.Forms.DateTimePicker pckHotWaterStart;
        private System.Windows.Forms.DateTimePicker pckRestartTime;
        private System.Windows.Forms.CheckBox chkHotWater;
    }
}

