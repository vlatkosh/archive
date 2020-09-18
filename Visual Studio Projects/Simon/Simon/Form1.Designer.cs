namespace Simon
{
    partial class GameForm
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
            this.btnNewGame = new System.Windows.Forms.Button();
            this.btnAbout = new System.Windows.Forms.Button();
            this.lblScoreInfo = new System.Windows.Forms.Label();
            this.lblScore = new System.Windows.Forms.Label();
            this.btnGreen = new System.Windows.Forms.Button();
            this.btnRed = new System.Windows.Forms.Button();
            this.btnBlue = new System.Windows.Forms.Button();
            this.btnYellow = new System.Windows.Forms.Button();
            this.demoTimer = new System.Windows.Forms.Timer(this.components);
            this.demoTimer2 = new System.Windows.Forms.Timer(this.components);
            this.lblStatus = new System.Windows.Forms.Label();
            this.kbTimer = new System.Windows.Forms.Timer(this.components);
            this.SuspendLayout();
            // 
            // btnNewGame
            // 
            this.btnNewGame.AutoSize = true;
            this.btnNewGame.BackColor = System.Drawing.Color.Teal;
            this.btnNewGame.FlatAppearance.BorderColor = System.Drawing.Color.DarkSlateGray;
            this.btnNewGame.FlatAppearance.BorderSize = 0;
            this.btnNewGame.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNewGame.Font = new System.Drawing.Font("Segoe UI Semilight", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.btnNewGame.ForeColor = System.Drawing.Color.White;
            this.btnNewGame.Location = new System.Drawing.Point(0, 0);
            this.btnNewGame.Name = "btnNewGame";
            this.btnNewGame.Size = new System.Drawing.Size(284, 42);
            this.btnNewGame.TabIndex = 1;
            this.btnNewGame.Text = "New Game";
            this.btnNewGame.UseVisualStyleBackColor = false;
            this.btnNewGame.Click += new System.EventHandler(this.btnNewGame_Click);
            // 
            // btnAbout
            // 
            this.btnAbout.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnAbout.AutoSize = true;
            this.btnAbout.BackColor = System.Drawing.Color.Teal;
            this.btnAbout.FlatAppearance.BorderColor = System.Drawing.Color.DarkSlateGray;
            this.btnAbout.FlatAppearance.BorderSize = 0;
            this.btnAbout.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAbout.Font = new System.Drawing.Font("Segoe UI Semilight", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.btnAbout.ForeColor = System.Drawing.Color.White;
            this.btnAbout.Location = new System.Drawing.Point(284, 0);
            this.btnAbout.Name = "btnAbout";
            this.btnAbout.Size = new System.Drawing.Size(284, 42);
            this.btnAbout.TabIndex = 2;
            this.btnAbout.Text = "About";
            this.btnAbout.UseVisualStyleBackColor = false;
            this.btnAbout.Click += new System.EventHandler(this.btnAbout_Click);
            // 
            // lblScoreInfo
            // 
            this.lblScoreInfo.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblScoreInfo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lblScoreInfo.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.lblScoreInfo.Font = new System.Drawing.Font("Segoe UI Semilight", 18F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lblScoreInfo.ForeColor = System.Drawing.Color.White;
            this.lblScoreInfo.Location = new System.Drawing.Point(-3, 43);
            this.lblScoreInfo.Name = "lblScoreInfo";
            this.lblScoreInfo.Size = new System.Drawing.Size(571, 42);
            this.lblScoreInfo.TabIndex = 3;
            this.lblScoreInfo.Text = "Score";
            this.lblScoreInfo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblScore
            // 
            this.lblScore.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblScore.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.lblScore.Font = new System.Drawing.Font("Segoe UI Semilight", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lblScore.ForeColor = System.Drawing.Color.White;
            this.lblScore.Location = new System.Drawing.Point(-3, 85);
            this.lblScore.Name = "lblScore";
            this.lblScore.Size = new System.Drawing.Size(571, 42);
            this.lblScore.TabIndex = 4;
            this.lblScore.Text = "0";
            this.lblScore.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnGreen
            // 
            this.btnGreen.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnGreen.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(110)))), ((int)(((byte)(0)))));
            this.btnGreen.FlatAppearance.BorderSize = 0;
            this.btnGreen.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGreen.Location = new System.Drawing.Point(221, 147);
            this.btnGreen.Name = "btnGreen";
            this.btnGreen.Size = new System.Drawing.Size(120, 50);
            this.btnGreen.TabIndex = 5;
            this.btnGreen.TabStop = false;
            this.btnGreen.UseVisualStyleBackColor = false;
            this.btnGreen.Click += new System.EventHandler(this.btnGreen_Click);
            // 
            // btnRed
            // 
            this.btnRed.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnRed.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(150)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.btnRed.FlatAppearance.BorderSize = 0;
            this.btnRed.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRed.Location = new System.Drawing.Point(347, 203);
            this.btnRed.Name = "btnRed";
            this.btnRed.Size = new System.Drawing.Size(50, 120);
            this.btnRed.TabIndex = 6;
            this.btnRed.TabStop = false;
            this.btnRed.UseVisualStyleBackColor = false;
            this.btnRed.Click += new System.EventHandler(this.btnRed_Click);
            // 
            // btnBlue
            // 
            this.btnBlue.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnBlue.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(80)))), ((int)(((byte)(150)))));
            this.btnBlue.FlatAppearance.BorderSize = 0;
            this.btnBlue.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBlue.Location = new System.Drawing.Point(221, 331);
            this.btnBlue.Name = "btnBlue";
            this.btnBlue.Size = new System.Drawing.Size(120, 50);
            this.btnBlue.TabIndex = 7;
            this.btnBlue.TabStop = false;
            this.btnBlue.UseVisualStyleBackColor = false;
            this.btnBlue.Click += new System.EventHandler(this.btnBlue_Click);
            // 
            // btnYellow
            // 
            this.btnYellow.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnYellow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(110)))), ((int)(((byte)(110)))), ((int)(((byte)(0)))));
            this.btnYellow.FlatAppearance.BorderSize = 0;
            this.btnYellow.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnYellow.Location = new System.Drawing.Point(165, 203);
            this.btnYellow.Name = "btnYellow";
            this.btnYellow.Size = new System.Drawing.Size(50, 120);
            this.btnYellow.TabIndex = 8;
            this.btnYellow.TabStop = false;
            this.btnYellow.UseVisualStyleBackColor = false;
            this.btnYellow.Click += new System.EventHandler(this.btnYellow_Click);
            // 
            // demoTimer
            // 
            this.demoTimer.Tick += new System.EventHandler(this.Tick);
            // 
            // demoTimer2
            // 
            this.demoTimer2.Tick += new System.EventHandler(this.Tick2);
            // 
            // lblStatus
            // 
            this.lblStatus.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblStatus.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.lblStatus.Font = new System.Drawing.Font("Segoe UI Semilight", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.lblStatus.ForeColor = System.Drawing.Color.White;
            this.lblStatus.Location = new System.Drawing.Point(221, 203);
            this.lblStatus.Name = "lblStatus";
            this.lblStatus.Size = new System.Drawing.Size(120, 120);
            this.lblStatus.TabIndex = 9;
            this.lblStatus.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // kbTimer
            // 
            this.kbTimer.Tick += new System.EventHandler(this.TickKB);
            // 
            // GameForm
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.ClientSize = new System.Drawing.Size(568, 441);
            this.Controls.Add(this.lblStatus);
            this.Controls.Add(this.btnYellow);
            this.Controls.Add(this.btnBlue);
            this.Controls.Add(this.btnRed);
            this.Controls.Add(this.btnGreen);
            this.Controls.Add(this.lblScore);
            this.Controls.Add(this.lblScoreInfo);
            this.Controls.Add(this.btnAbout);
            this.Controls.Add(this.btnNewGame);
            this.KeyPreview = true;
            this.MinimumSize = new System.Drawing.Size(584, 480);
            this.Name = "GameForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Simon, a memory game";
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.GameForm_KeyDown);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnNewGame;
        private System.Windows.Forms.Button btnAbout;
        private System.Windows.Forms.Label lblScoreInfo;
        private System.Windows.Forms.Label lblScore;
        private System.Windows.Forms.Button btnGreen;
        private System.Windows.Forms.Button btnRed;
        private System.Windows.Forms.Button btnBlue;
        private System.Windows.Forms.Button btnYellow;
        private System.Windows.Forms.Timer demoTimer;
        private System.Windows.Forms.Timer demoTimer2;
        private System.Windows.Forms.Label lblStatus;
        private System.Windows.Forms.Timer kbTimer;
    }
}

