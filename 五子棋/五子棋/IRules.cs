using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace 五子棋
{
    public interface IRules
    {
        bool TestIfWin(int x, int y,int[,] chessBoard,int player); 
    }
    class KinjiteRule : IRules
    {
        bool IRules.TestIfWin(int x, int y,int[,] chessBoard, int player)
        {
            return false;
        }
        public override string ToString()
        {
            return "禁手规则";
        }
    }
    class EasyRule : IRules
    {
        bool IRules.TestIfWin(int x, int y,int[,] chessBoard, int player)
        {
            int succession;
            int px=0, py=0;
            for (int i = 0; i < 4; i++)
            {
                succession = 1;
                px = x + DIR.dirX[i]; py = y + DIR.dirY[i];
                while (chessBoard[px, py] == player)
                {
                    succession++;
                    if (succession == 5)
                        return true;
                    px += DIR.dirX[i];
                    py += DIR.dirY[i];
                }
                px = x + DIR.dirX[i+4]; py = y + DIR.dirY[i+4];
                while (chessBoard[px, py] == player)
                {
                    succession++;
                    if (succession == 5)
                        return true;
                    px += DIR.dirX[i+4];
                    py += DIR.dirY[i+4];
                }
            }
            return false;
        }
        public override string ToString()
        {
            return "无禁手规则";
        }
    }
}
