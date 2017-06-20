using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Windows.Forms;
using System.IO;

namespace 五子棋
{
    class gameTreeNode
    {
        private gameTreeNode father;
        private List<gameTreeNode> children;
        private int childrenMaxScore,childrenMinScore;
        private int x, y;
        private int gs, es;//gs是贪心评分,es是全局评分
        private int stepLevel;
        public gameTreeNode()
        {
            father = null;
            children = new List<gameTreeNode>(9);
            stepLevel = x = y = 0;
            childrenMaxScore = Common.MinValue;
            childrenMinScore = Common.MaxValue;
            es = gs = Common.MinValue;
        }
        public gameTreeNode this[int idx]
        {
            get
            {
                return children[idx];
            }
        }
        public void addChild(gameTreeNode child)
        {
            children.Add(child);
            child.father = this;
        }
        public void setPosition(int x, int y)
        {
            this.x = x;
            this.y = y;
        }
        public Point Position
        {
            get
            {
                return new Point(x, y);
            }
        }
        public int ES
        {
            get
            {
                return es;
            }
            set
            {
                es = value;
            }
        }
        public int GS
        {
            get
            {
                return gs;
            }
            set
            {
                gs = value;
            }
        }
        public List<gameTreeNode> Children
        {
            get
            {
                return children;
            }
        }
        public gameTreeNode Father
        {
            get { return father; }
            set { father = value; }
        }
        public int ChildrenMaxScore
        {
            get { return childrenMaxScore; }
            set { childrenMaxScore = value; }
        }
        public int ChildrenMinScore
        {
            get { return childrenMinScore; }
            set { childrenMinScore = value; }
        }
        public int StepLevel
        {
            get { return stepLevel; }
            set { stepLevel = value; }
        }
    }
    class gameTreeNodeSortByGs : IComparer<gameTreeNode>
    {
        public int Compare(gameTreeNode left, gameTreeNode right)
        {
            if (left.StepLevel != right.StepLevel)
                return right.StepLevel - left.StepLevel;
            else
                return right.GS - left.GS;
        }
    }
    class gameTreeNodeSortByEsDESC : IComparer<gameTreeNode>
    {
        public int Compare(gameTreeNode left, gameTreeNode right)
        {
            if (left.StepLevel != right.StepLevel)
                return right.StepLevel - left.StepLevel;
            if(left.ES != right.ES)
                return right.ES - left.ES;
            return right.GS - left.GS;
        }
    }
    class gameTreeNodeSortByEsASC : IComparer<gameTreeNode>
    {
        public int Compare(gameTreeNode left, gameTreeNode right)
        {
            if (left.StepLevel != right.StepLevel)
                return left.StepLevel - right.StepLevel;
            if (left.ES != right.ES)
                return left.ES - right.ES;
            return left.GS - right.GS;
        }
    }
    class GameTree
    {
        private gameTreeNode root;
        private ThinkChessBoard chessBoardThinker;
        private Estimator estamitor;
        private int maxLayer;
        private int searchCount;//搜索的次数
        private int cutCount;//剪枝次数
        private int greedySearchCount;
        
        public GameTree()
        {
            root = new gameTreeNode();
            root.Father = new gameTreeNode();          
            chessBoardThinker = null;
            estamitor = null;
            maxLayer = 5;
            searchCount = 0;
            cutCount = 0;
            greedySearchCount = 9;
        }
        public void setChessBoardThinker(int[,] chessBoard,int player)
        {
            chessBoardThinker = new ThinkChessBoard(chessBoard, player);
        }
        public void setEstimate(Estimator est)
        {
            estamitor = est;
        }
        public Point SetChessman()
        {
            evaluateComputerMove(root, 1);
           // MessageBox.Show(String.Format(@"
                //searchCount = {0}, cut = {1}", searchCount, cutCount));
            return root.Children[0].Position;
        }
        private int evaluateComputerMove(gameTreeNode rt, int layer)
        {
            EstimatorResult rst;
            bool goodChess = false;
            searchCount++;
            for (int j = 1; j <= Common.ChessRows; j++)
            {
                for (int i = 1; i <= Common.ChessCols; i++)
                {
                    if (chessBoardThinker.IsVacant(i, j))
                    {
                        gameTreeNode nodeNew = new gameTreeNode();
                        nodeNew.setPosition(i, j);
                        rst = estamitor.getGreedyScore(chessBoardThinker.ChessboardMatrix,
                            i, j,Common.MaxPlayer);
                        if (rst.IsGoodStep)
                        {
                            nodeNew.StepLevel = rst.StepLevel;
                            goodChess = true;
                        }
                        else
                        {
                            nodeNew.GS = rst.Score;
                        }
                        
                        rt.addChild(nodeNew);
                    }
                } 
            }
            rt.Children.Sort(new gameTreeNodeSortByGs());
            int es = Common.MinValue;

            for (int i = 0; i < Math.Min(rt.Children.Count, greedySearchCount); i++)
            {
                if (rt.Children[i].StepLevel == 0 && goodChess)
                {
                    cutCount++;
                    break;
                }
                chessBoardThinker.setStone(rt.Children[i].Position, true);
                es = Math.Max(evaluateHumanMove(rt.Children[i], layer+1), es);
                rt.ChildrenMaxScore = Math.Max(rt.ChildrenMaxScore, es);
                rt.ChildrenMinScore = Math.Min(rt.ChildrenMinScore, es);
                chessBoardThinker.backStone();
                if (es >= rt.Father.ChildrenMinScore)
                {
                    cutCount++;
                    break;
                }
            }
            rt.Children.Sort(0, Math.Min(rt.Children.Count, greedySearchCount), new gameTreeNodeSortByEsDESC());
            rt.ES = es;
            return es;
        }
        private int evaluateHumanMove(gameTreeNode rt, int layer)
        {
            EstimatorResult rst;
            bool goodChess = false;
            searchCount++;
            if (layer > maxLayer)
            {
                return estamitor.getOverallScore(chessBoardThinker.ChessboardMatrix).Score;
            }
            for (int j = 1; j <= Common.ChessRows; j++)
            {
                for (int i = 1; i <= Common.ChessCols; i++)
                {
                    if (chessBoardThinker.IsVacant(i, j))
                    {
                        gameTreeNode nodeNew = new gameTreeNode();
                        nodeNew.setPosition(i, j);
                       rst = estamitor.getGreedyScore(chessBoardThinker.ChessboardMatrix,
                            i, j, Common.MinPlayer);
                       if (rst.IsGoodStep)
                       {
                           nodeNew.StepLevel = rst.StepLevel;
                           goodChess = true;
                       }
                       else
                       {
                           nodeNew.GS = rst.Score;
                       }
                       rt.addChild(nodeNew);
                    }
                }
            }
            rt.Children.Sort(new gameTreeNodeSortByGs());
            int es = Common.MaxValue;
            for (int i = 0; i < Math.Min(rt.Children.Count, greedySearchCount); i++)
            {
                if (rt.Children[i].StepLevel == 0 && goodChess)
                {
                    cutCount++;
                    break;
                }
                chessBoardThinker.setStone(rt.Children[i].Position, false);
                es = Math.Min(evaluateComputerMove(rt.Children[i], layer + 1), es);
                rt.ChildrenMaxScore = Math.Max(rt.ChildrenMaxScore, es);
                rt.ChildrenMinScore = Math.Min(rt.ChildrenMinScore, es);
                chessBoardThinker.backStone();
                if (es <= rt.Father.ChildrenMaxScore)
                {
                    cutCount++;
                    break;
                }
            }
            rt.Children.Sort(0, Math.Min(rt.Children.Count, greedySearchCount), new gameTreeNodeSortByEsASC());
            rt.ES = es;
            return es;
        }
    }
}
