using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;

namespace 五子棋
{
    class ThinkChessBoard
    {
        private int[,] chessboard;//比正常棋盘大2个位置，边缘为3
        private int Maxplayer;
        private int MinPlayer;
        private Stack<Point> track;
        
        
        public ThinkChessBoard(int[,] cb, int player)
        {
            chessboard = new int[Common.ChessCols + 2, Common.ChessRows + 2];
            for (int j = 0; j <= Common.ChessRows+1; j++)
            {
                for (int i = 0; i <= Common.ChessCols+1; i++)
                {
                    chessboard[i, j] = Common.getRectifyPlayer(cb[i, j], player);
                }
            }
            track = new Stack<Point>(Common.ChessCols * Common.ChessRows);
        }
        public bool setStone(Point p, bool player)
        {
            if (chessboard[p.X, p.Y] == 0)
            {
                chessboard[p.X, p.Y] = player ? Common.MaxPlayer : Common.MinPlayer;
                track.Push(p);
                return true;
            }
            return false;
        }
        public void backStone()
        {
            if (track.Count == 0) return;
            Point p = track.Pop();
            chessboard[p.X, p.Y] = 0;
        }
        public bool IsVacant(int x, int y)
        {
            if (chessboard[x, y] == 0)
                return true;
            else
                return false;
        }
        public int[,] ChessboardMatrix
        {
            get
            {
                return chessboard;
            }
        }
        public int this[int x, int y]
        {
            get { return chessboard[x, y]; }
        }
    }
}
