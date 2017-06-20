using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;

namespace 五子棋
{
    class ChessBoardData
    {
        private int[,] chessBoardMatrix;
        private Stack<Point> tracks;
        private Stack<Point> discard;
        public ChessBoardData()
        {
            ini();
        }
        public int this[int x, int y]
        {
            get
            {
                return chessBoardMatrix[x, y];
            }
            set 
            {
                chessBoardMatrix[x, y] = value;
            }
        }
        public int[,] Data
        {
            get
            {
                return chessBoardMatrix;
            }
        }
        public bool setStone(int x, int y, int player)
        {
            if (x < 1 || y < 1 || x > Common.ChessCols || y > Common.ChessRows)
                return false;
            if (chessBoardMatrix[x, y] != 0)
                return false;
            chessBoardMatrix[x, y] = player;
            tracks.Push(new Point(x, y));
            return true;
        }
        public void ini()
        {
            chessBoardMatrix = new int[Common.ChessCols + 2, Common.ChessRows + 2];
            tracks = new Stack<Point>();
            discard = new Stack<Point>();
            for (int i = 0; i < Common.ChessCols + 2; i++)
            {
                chessBoardMatrix[0, i] = Common.WallPlayer;
                chessBoardMatrix[i, 0] = Common.WallPlayer;
                chessBoardMatrix[i, Common.ChessCols + 1] = Common.WallPlayer;
                chessBoardMatrix[Common.ChessRows + 1, i] = Common.WallPlayer;
            }
        }
        public bool goBack(out Point p)
        {
            if (tracks.Count > 0)
            {
                p = tracks.Pop();
                discard.Push(p);
                chessBoardMatrix[p.X, p.Y] = Common.EmptyPlayer;
                return true;
            }
            p = new Point(-1, -1);
            return false;
 
        }
        public bool goFoward(out Point p,out int player)
        {
            if (discard.Count > 0)
            {
                player = discard.Count%2==0?Common.WhitePlayer:Common.BlackPlayer;
                p = discard.Pop();
                chessBoardMatrix[p.X, p.Y] = player; 
                tracks.Push(p);
                return true;
            }
            player = 0;
            p = new Point(-1, -1);
            return false;
        }
    }
}
