using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Media;

namespace Simon
{
    public partial class GameForm : Form
    {
        public GameForm()
        {
            InitializeComponent();
            game = new Game(ref lblScore, ref lblStatus, ref demoTimer, ref demoTimer2, ref kbTimer, ref btnGreen, ref btnRed, ref btnBlue, ref btnYellow);
        }

        Game game;

        private void btnNewGame_Click(object sender, EventArgs e)
        {
            game.New();
        }

        private void btnAbout_Click(object sender, EventArgs e)
        {
            AboutForm aboutForm = new AboutForm();
            aboutForm.Show();
        }

        private void Tick(object sender, EventArgs e)
        {
            game.DemonstrationTick();
        }

        private void Tick2(object sender, EventArgs e)
        {
            game.DemonstrationTick2();
        }

        private void TickKB(object sender, EventArgs e)
        {
            game.KBTick();
        }

        private void btnGreen_Click(object sender, EventArgs e)
        {
            game.OnButton(0);
        }

        private void btnRed_Click(object sender, EventArgs e)
        {
            game.OnButton(1);
        }

        private void btnBlue_Click(object sender, EventArgs e)
        {
            game.OnButton(2);
        }

        private void btnYellow_Click(object sender, EventArgs e)
        {
            game.OnButton(3);
        }

        private void GameForm_KeyDown(object sender, KeyEventArgs e)
        {
            switch (e.KeyCode)
            {
                case Keys.Up:
                    game.OnButton(0, true);
                    break;
                case Keys.Right:
                    game.OnButton(1, true);
                    break;
                case Keys.Down:
                    game.OnButton(2, true);
                    break;
                case Keys.Left:
                    game.OnButton(3, true);
                    break;
            }
        }

        ///////////// stupid hack that does some stupid $!@& so GameForm_KeyDown can fire
        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            switch (keyData)
            {
                case Keys.Right:
                case Keys.Left:
                case Keys.Up:
                case Keys.Down:
                    GameForm_KeyDown(new object(), new KeyEventArgs(keyData));
                    return true;
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }
    }

    class Game
    {
        public Game(ref Label lblScore, ref Label lblStatus, ref Timer demoTimer, ref Timer demoTimer2, ref Timer kbTimer, ref Button btnGreen, ref Button btnRed, ref Button btnBlue, ref Button btnYellow)
        {
            scoreLabel = lblScore;
            statusLabel = lblStatus;
            this.demoTimer = demoTimer;
            this.demoTimer.Interval = demoTimeBetween;
            this.demoTimer2 = demoTimer2;
            this.demoTimer2.Interval = demoTimeUntilUnflash;
            this.kbTimer = kbTimer;

            random = new Random();
            ButtonQueue = new Queue<int>();

            Buttons = new Dictionary<Button, ButtonProperties>()
            {
                { btnGreen, new ButtonProperties(  //0
                    Color.FromArgb(0, 110, 0), Color.FromArgb(0, 200, 0), SystemSounds.Beep) },
                { btnRed, new ButtonProperties(    //1
                    Color.FromArgb(150, 0, 0), Color.FromArgb(240, 0, 0), SystemSounds.Beep) },
                { btnBlue, new ButtonProperties(   //2
                    Color.FromArgb(50, 80, 150), Color.FromArgb(50, 120, 240), SystemSounds.Beep) },
                { btnYellow, new ButtonProperties( //3
                    Color.FromArgb(110, 110, 0), Color.FromArgb(240, 240, 0), SystemSounds.Beep) },
            };

            //make sure every button is turned off
            foreach (var kvp in Buttons)
            {
                kvp.Key.BackColor = kvp.Value.ColorOff;
                kvp.Key.Enabled = false;
            }
        }

        Label scoreLabel;
        Label statusLabel;
        Dictionary<Button, ButtonProperties> Buttons;
        Random random;

        int Score;
        int Turns;
        int TimesPlayed = 0;
        const int StartingTurns = 3;

        Timer kbTimer;
        int kbIndexToUnflash;

        bool isGameRunning;
        bool CanInput = false;

        Timer demoTimer;
        Timer demoTimer2;
        const int demoTimeBetween = 500;
        const int demoTimeUntilUnflash = 300;
        int demoTicks = 0;
        int demoPrevIndex = -1;
        int demoIndexToDisable;

        Queue<int> ButtonQueue;

        public void New()
        {
            isGameRunning = true;
            TimesPlayed++;

            //stop and reset stuff
            demoTimer.Stop();
            demoPrevIndex = -1;

            Score = 0;
            scoreLabel.Text = "0";

            statusLabel.Text = "";

            Turns = StartingTurns;

            ButtonQueue.Clear();

            foreach (var kvp in Buttons)
            {
                kvp.Key.BackColor = kvp.Value.ColorOff;
            }

            //new demonstration
            Demonstration();
        }

        public void Demonstration()
        {
            EnableInput(false);
            demoTicks = 0;
            demoTimer.Start();
        }

        public void DemonstrationTick()
        {
            //if has ticked the required number of times, stop ticking and start waiting for player input
            if (demoTicks == Turns)
            {
                demoTimer.Stop();
                demoPrevIndex = -1;
                EnableInput(true);
                return;
            }

            //pick random button, add it to list and flash it
            int index = random.Next(0, 4);
            ButtonQueue.Enqueue(index);

            var kvp = Buttons.ElementAt(index);
            kvp.Key.BackColor = kvp.Value.ColorOn;

            demoPrevIndex = index;
            demoTicks++;

            //Wait [demoTimeBetween2] milliseconds, then unflash button
            demoIndexToDisable = index;
            demoTimer2.Start();
        }

        public void DemonstrationTick2()
        {
            var kvp = Buttons.ElementAt(demoIndexToDisable);
            kvp.Key.BackColor = kvp.Value.ColorOff;
            demoTimer2.Stop();
        }

        public void KBTick()
        {
            var kvp = Buttons.ElementAt(kbIndexToUnflash);
            kvp.Key.BackColor = kvp.Value.ColorOff;
            kbTimer.Stop();
        }

        public void OnButton(int buttonIndex, bool fromKeyboard = false)
        {
            if (isGameRunning && CanInput && buttonIndex == ButtonQueue.Peek())
            { //the correct button was pressed
                var kvp = Buttons.ElementAt(buttonIndex);

                if (fromKeyboard)
                { //if from keyboard, flash the button and unflash after 100 ms
                    kbIndexToUnflash = buttonIndex;
                    kvp.Key.BackColor = kvp.Value.ColorOn;
                    kbTimer.Start();
                }

                //play sound
                //kvp.Value.Sound.Play();

                //add score
                Score += (Turns - StartingTurns + 1) * 100;
                scoreLabel.Text = Score.ToString();
                ButtonQueue.Dequeue(); //remove the first element

                if (ButtonQueue.Count == 0)
                { //all buttons have been pressed correctly
                    Turns++;
                    Demonstration();
                }
            }
            else if (TimesPlayed == 0 || !CanInput)
            { //games hasn't even started once or can't input

            }
            else
            { //the incorrect button was pressed
                Lose();
            }
        }

        private void Lose()
        {
            isGameRunning = false;
            EnableInput(false);
            statusLabel.Text = "You lost!";
        }

        private void EnableInput(bool value)
        {
            CanInput = value;
            foreach (var kvp in Buttons)
            {
                kvp.Key.Enabled = value;
            }
        }
    }

    struct ButtonProperties
    {
        public ButtonProperties(Color colorOff, Color colorOn, SystemSound sound)
        {
            ColorOff = colorOff;
            ColorOn = colorOn;
            Sound = sound;
        }

        public Color ColorOff;
        public Color ColorOn;
        public SystemSound Sound;
    }
}
