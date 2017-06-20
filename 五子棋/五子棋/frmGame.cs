using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Threading;
using System.Timers;
using System.Xml;

namespace 五子棋
{
    public partial class frmGame : Form
    {
        public frmGame()
        {
            InitializeComponent();
            panelChessboard.Size = new Size(580, 580);
            panelChessboard.Location = new Point(1, 20);
            panelChessboard.Visible = false;
            panelChessboard.Paint += panelChessboard.panelChessboard_Paint;
            player = Common.BlackPlayer;
            cbRuler.Items.Add(new EasyRule());
            cbRuler.Items.Add(new KinjiteRule());
            cbRuler.SelectedIndex = 0;
            //lblMouse.BackColor = Color.Transparent;
            //lblMouse.Parent = this;
        }
        private int player;
        private List<EstimatorData> AIDataList;
        private Estimator estimator1, estimator2;
        private bool ThumbnnaiCallback()
        { return false; }
        private static bool isAnalysis = false;
        /// <summary>
        /// 游戏结束时为false,轮到玩家时为false，平时为true,
        /// </summary>
        private bool AIstate = false;
        Thread black;
        Thread white;
        //int stepCount = 0;

        //窗体载入事件
        private void Form1_Load(object sender, EventArgs e)
        {
            Graphics gs = this.CreateGraphics();
            panelChessboard.setBackgroundImage("棋盘.jpg");
            black = new Thread(playerBlack);
            white = new Thread(playerWhite);
            AIDataList = EstimatorData.create("..//..//AI//AI.xml");
            cbBlack.Items.AddRange(AIDataList.ToArray());
            cbWhite.Items.AddRange(AIDataList.ToArray());
            cbBlack.SelectedIndex = 0;
            cbWhite.SelectedIndex = 0;
        }

        ////每次扫描时发生的事件
        //private void OnTimeEvent(object source,ElapsedEventArgs e)
        //{
        //    if (successfulSet == true)
        //    {
        //        successfulSet = false;
        //    }
        //}


        //鼠标点击事件
        private void panelChessboard_MouseClick(object sender, MouseEventArgs e)
        {
            if (MouseButtons.Left == e.Button)
            {
                Point stone;
                if (!panelChessboard.getPoint(e.X, e.Y, out stone))
                    return;

                //MessageBox.Show(estimator1.getGreedyScore(panelChessboard.ChessBoardMatrix,
                    //stone.X, stone.Y, player).ToString());

                setStone(stone.X, stone.Y);
                AIStart();
            }
        }

        //关闭事件
        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            //bmp.Dispose();
        }

        //认输事件
        private void btnGiveUp_Click(object sender, EventArgs e)
        {
            AIstate = false;
            winAction(player);
        }

        //按开始按钮的事件
        private void btnStart_Click(object sender, EventArgs e)
        {
            if (btnStart.Text == "游戏开始")
            {
                panelChessboard.Visible = true;
                btnStart.Text = "游戏暂停";
                if (checkBoxBlack.Checked || checkBoxWhite.Checked)
                    AIstate = true;
                AIStart();
            }
            else
            {
                panelChessboard.Visible = false;
                btnStart.Text = "游戏开始";
            }
        }


        //内部方法，表示下棋子时所触发的事件
        private void setStone(int x,int y)
        {
            if (panelChessboard.setStone(x, y, player))
            {
                if (((IRules)cbRuler.SelectedItem).TestIfWin(x, y,panelChessboard.ChessBoardMatrix, player))
                {
                    winAction(player);
                }
                else
                {
                    playerChange();
                }             
            }
        }

        public void playerBlack()
        {
            if (checkBoxBlack.Checked)
            {
                GameTree AI = new GameTree();
                AI.setChessBoardThinker(panelChessboard.ChessBoardMatrix, Common.BlackPlayer);
                AI.setEstimate(estimator1);
                Point AIStone = AI.SetChessman();
                setStone(AIStone.X, AIStone.Y);
            }
            else
            {
                AIstate = false;
            }
        }

        public void playerWhite()
        {
            if (checkBoxWhite.Checked)
            {
                GameTree AI = new GameTree();
                AI.setChessBoardThinker(panelChessboard.ChessBoardMatrix, Common.WhitePlayer);
                AI.setEstimate(estimator2);
                Point AIStone = AI.SetChessman();
                setStone(AIStone.X, AIStone.Y);
            }
            else
            {
                AIstate = false;
            }
        }


        private void AIStart()
        {
            AIstate = true;
            this.panelChessboard.MouseClick -= this.panelChessboard_MouseClick;
            while (AIstate)
            {
                if (player==1)
                {
                    playerBlack();
                }
                else if(player==2)
                {
                    playerWhite();
                }
                Thread.Sleep(100);
                
            }
            this.panelChessboard.MouseClick += this.panelChessboard_MouseClick;
        }

        private  void chkAnalysis_CheckedChanged(object sender, EventArgs e)
        {
            frmGame.isAnalysis = this.chkAnalysis.Checked;
        }

        public static bool IsAnalysis
        {
            get
            {
                return isAnalysis;
            }
        }

        private void frmGame_MouseMove(object sender, MouseEventArgs e)
        {
            Point mouse;
            panelChessboard.getPoint(e.X, e.Y, out mouse);
            lblMouse.Text ="pos: " + "X:" + (mouse.X).ToString() + " Y:" + (mouse.Y ).ToString();
        }

        //上一步事件
        private void btnStepBack_Click(object sender, EventArgs e)
        {
            panelChessboard.goBack();
            playerChange();
        }

        //下一步事件
        private void btnStepFoward_Click(object sender, EventArgs e)
        {
            panelChessboard.goForward();
            playerChange();
        }

        private void winAction(int player)
        {
            string winmsg = String.Format("恭喜{0}玩家取得胜利!", player == Common.BlackPlayer ? "黑方" : "白方");
            MessageBox.Show(winmsg);
            panelChessboard.iniPanel();
            this.player = Common.BlackPlayer;
            this.AIstate = false;
        }

        private void playerChange()
        {
            player = player % 2 + 1;
        }

        private void cbBlack_SelectedIndexChanged(object sender, EventArgs e)
        {
            estimator1 = new Estimator((EstimatorData)cbBlack.SelectedItem);
        }

        private void cbWhite_SelectedIndexChanged(object sender, EventArgs e)
        {
            estimator2 = new Estimator((EstimatorData)cbWhite.SelectedItem);
        }

        private void btnTest_Click(object sender, EventArgs e)
        {
            //MessageBox.Show(estimator1.getOverallScore(panelChessboard.ChessBoardMatrix).ToString());
            StringBuilder sb = new StringBuilder(35 * 35);
            for (int j = 0; j <= Common.ChessRows+1; j++)
            {
                for (int i = 0; i <= Common.ChessCols+1; i++)
                {
                    sb.Append(panelChessboard.ChessBoardMatrix[i, j].ToString() + " ");
                }
                sb.Append("\r\n");
            }
            MessageBox.Show(sb.ToString());
        }

        private void frmGame_MouseClick(object sender, MouseEventArgs e)
        {
            AIStart();
        }

        private void checkBoxBlack_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void checkBoxWhite_CheckedChanged(object sender, EventArgs e)
        {

        }

    }
}
