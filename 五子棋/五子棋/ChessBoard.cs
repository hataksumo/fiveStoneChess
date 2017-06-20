using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Windows.Forms;
using System.IO;
using System.Xml;

namespace 五子棋
{
    class ChessBoard : Panel
    {
        private ChessBoardData chessBoardMatrix;
        //绘图相关私有变量
        private Image backgroundImage = null;//背景图片
        //private Graphics gs;//panel的graphics对象
        private Bitmap bmp;//画布
        private Pen line;//画线的笔
        private Brush[] brsPlayer;
        

        public ChessBoard()
        {
            chessBoardMatrix = new ChessBoardData();
            line = new Pen(Brushes.Black,1);
            //gs = this.CreateGraphics();
            brsPlayer = new Brush[2];
            brsPlayer[0] = new SolidBrush(Color.Black);
            brsPlayer[1] = new SolidBrush(Color.White);
        }
        private bool ThumbnnaiCallback(){ return false; }
        public void setBackgroundImage(string imgPath)
        {
            if (backgroundImage != null)
            {
                backgroundImage.Dispose();
                backgroundImage = null;
            }
            string picInfo =
                Path.GetDirectoryName(Application.ExecutablePath) + "\\..\\..\\chessboardImage\\" + imgPath;
           // D:\MyProgram\第七学期\大四小学期\五子棋\background\三妻四妾.jpg
            try
            {
                //this.backgroundImage = Image.FromFile(picInfo);
                //this.BackgroundImageLayout = ImageLayout.Tile;
                bmp = new Bitmap(picInfo);
                Image.GetThumbnailImageAbort myCallback =
                    new Image.GetThumbnailImageAbort(ThumbnnaiCallback);
                backgroundImage = bmp.GetThumbnailImage(
                    Common.ChessBoardWidth, Common.ChessBoardHeight, myCallback, IntPtr.Zero);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            
        }

        public void panelChessboard_Paint(object sender, PaintEventArgs e)
        {
           Graphics gs = e.Graphics;
           gs.DrawImage(backgroundImage, new Rectangle(0, 0, Common.ChessBoardWidth, Common.ChessBoardHeight));
           //画横线
           for (int i = 0; i < Common.ChessRows; i++)
           {
               gs.DrawLine(line, Common.RowStart, Common.RowStart + i * Common.RowSpan,
                   Common.ColEnd, Common.RowStart + i * Common.RowSpan);
           }
           //画竖线
           for (int i = 0; i < Common.ChessCols; i++)
           {
               gs.DrawLine(line, Common.ColStart + i * Common.RowSpan, Common.RowStart,
                   Common.ColStart + i * Common.RowSpan, Common.RowEnd);
           }
           //画棋点
           Point[] chessPoints = new Point[5]{
            new Point(3,3),
            new Point(11,3),
            new Point(3,11),
            new Point(11,11),
            new Point(7,7)};
           for (int i = 0; i < chessPoints.Length; i++)
           {
               gs.FillEllipse(Brushes.Black,
                   Common.GetPointRectangle(chessPoints[i].X, chessPoints[i].Y, Common.RchessPoint));
           }
          //画旗子
           Rectangle tmp;
           for (int i = 1; i < Common.ChessRows; i++)
           {
               for (int j = 1; j < Common.ChessCols; j++)
               {
                   if (chessBoardMatrix[j, i] > 0)
                   {
                       tmp = Common.GetChessmanRectangle(j-1, i-1);
                       gs.FillEllipse(brsPlayer[chessBoardMatrix[j, i]-1], tmp);
                   }
               }
           }
        }

        private void paintChessman(int x, int y, int player)
        {
            Graphics gs = this.CreateGraphics();
            Rectangle chessmanRectangle = Common.GetChessmanRectangle(x, y);
            gs.FillEllipse(brsPlayer[player - 1], chessmanRectangle);
            gs.Dispose();
        }

        private void clearChessman(Point backPoint)
        {
            //用背景图片清除棋子
            Rectangle chessBack = Common.GetChessmanRectangle(backPoint.X-1, backPoint.Y-1);
            GraphicsUnit units = GraphicsUnit.Pixel;
            Graphics gs = this.CreateGraphics();
            gs.DrawImage(backgroundImage, chessBack.Left, chessBack.Top, chessBack, units);
            //重新画横线
            gs.DrawLine(line, chessBack.Left,
                chessBack.Top + Common.Rchessman, chessBack.Right, chessBack.Top + Common.Rchessman);
            //重新画竖线
            gs.DrawLine(line, chessBack.Left + Common.Rchessman,
                chessBack.Top, chessBack.Left + Common.Rchessman, chessBack.Bottom);
        }

        public void iniPanel()
        {
            chessBoardMatrix.ini();
            this.Invalidate();
        }

        public bool getPoint(int x, int y,out Point stone)
        {
            double dx;
            double dy;
            int px;
            int py;
            double distract;
            stone = new Point(-1,-1);
            dx = (double)(x - Common.ColStart) / Common.ColSpan;
            dy = (double)(y - Common.RowStart) / Common.RowSpan;
            px = (int)(dx + 0.5);
            py = (int)(dy + 0.5);
            distract = 0.25;
            //如果鼠标点击的地方偏离过大
            if (Math.Abs(dx - px) > distract || Math.Abs(dy - py) > distract)
                return false;
            stone.X = px+1;
            stone.Y = py+1;
            if (chessBoardMatrix[stone.X, stone.Y] > 0)//如果该点已经被放上棋子
                return false;
           
            return true;
        }

        public bool setStone(int x, int y,int player)
        {
            if (x < 1 || y < 1 || x > Common.ChessCols || y > Common.ChessRows)
                return false;
            if (chessBoardMatrix[x, y] != 0)
                return false;
            chessBoardMatrix.setStone(x,y,player);
            paintChessman(x-1, y-1, player);
            return true;
        }


        public void goBack()
        {
            Point p;
            if (chessBoardMatrix.goBack(out p))
            {
                clearChessman(p);
            }
        }

        public void goForward()
        {
            Point p;
            int player;
            if (chessBoardMatrix.goFoward(out p,out player))
            {
                paintChessman(p.X,p.Y,player);
            }
        }


        public int[,] ChessBoardMatrix
        {
            get
            {
                return chessBoardMatrix.Data;
            }
        }

       

    }
}
