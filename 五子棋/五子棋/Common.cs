using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;

namespace 五子棋
{
    static class Common
    {
        public const int EmptyPlayer         =   0;
        public const int BlackPlayer         =   1;
        public const int WhitePlayer         =   2;
        public const int WallPlayer          =   3;
        public const int MaxPlayer           =   1;
        public const int MinPlayer           =   2;
        public const int ChessCols           =   15;
        public const int ChessRows           =   15;
        public const int ChessBoardWidth     =   580;
        public const int ChessBoardHeight    =   580;
        public const int RowSpan = (ChessBoardHeight - 20) / (ChessRows - 1);
        public const int ColSpan = (ChessBoardWidth - 20) / (ChessCols - 1);
        public const int ChessDiameter = ChessRows > ChessCols ? RowSpan : ColSpan;
        public const int Rchessman = ChessDiameter / 4;
        public const int RchessPoint = ChessDiameter / 7;
        public const int RowStart = 10;
        public const int ColStart = 10;
        public const int RowEnd = ChessBoardHeight - 10;
        public const int ColEnd = ChessBoardWidth - 10;
        public const int MinValue = -9999999;
        public const int MaxValue = 9999999;

        public static Rectangle GetPointRectangle(int x, int y, int r)
        {
            Rectangle rt = new Rectangle();
            rt.X = ColStart + x * ColSpan - r;
            rt.Y = RowStart + y * RowSpan - r;
            rt.Width = 2 * r;
            rt.Height = 2 * r;
            return rt;
        }
        public static Rectangle GetChessmanRectangle(int x, int y)
        {
            return GetPointRectangle(x, y, Rchessman);
        }
        public static int getRectifyPlayer(int source, int player)
        {
            if (source == EmptyPlayer || source == WallPlayer)
                return source;
            else if (source == player)
                return MaxPlayer;
            else
                return MinPlayer;
        }
    }
    static class DIR
    {
        public static readonly int[] dirX = { 0, 1, 1, 1, 0, -1, -1, -1 };
        public static readonly int[] dirY = { -1, -1, 0, 1, 1, 1, 0, -1 };
    }
}
