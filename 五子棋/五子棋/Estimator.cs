using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace 五子棋
{
    class AIState
    {
        private string stateID;
        private string stateName;
        private int stateCount;
        public AIState():this(null,null)
        {

        }
        public AIState(string stateID, string stateName)
        {
            this.stateID = stateID;
            this.stateName = stateName;
            this.stateCount = 0;
        }
        public string StateID
        {
            get { return stateID; }
            set { stateID = value; }
        }
        public string StateName
        {
            get { return stateName; }
            set { stateName = value; }
        }
        public int StateCount
        {
            get { return stateCount; }
            set { stateCount = value; }
        }
    }

    class EstimatorData
    {
        private string name;
        private List<EstimatedItem> results;
        private Dictionary<string, AIState> states;
        private Dictionary<string, int> goodChess;
        public EstimatorData():this("unName")
        {
            
        }
        public EstimatorData(string name)
        {
            this.name = name;
            results = new List<EstimatedItem>();
            states = new Dictionary<string, AIState>();
            goodChess = new Dictionary<string, int>();
        }
        public void AddData(string AIStateID,string pattern, string pname,int score)
        {
            results.Add(EstimatedItem.Creat(AIStateID, pattern, pname, score));
        }
        public void AddRData(string AIStateID, string pattern, string pname, int rscore)
        {
            char[] cpattern = new char[pattern.Length];
            for (int i = 0; i < pattern.Length; i++)
            {
                if (pattern[i] == '1')
                    cpattern[i] = '2';
                else if (pattern[i] == '2')
                    cpattern[i] = '1';
                else
                    cpattern[i] = pattern[i];
            }
            results.Add(EstimatedItem.Creat(AIStateID, new string(cpattern), pname, rscore));
        }
        public String Name
        {
            get
            {
                return name;
            }
            set
            {
                this.name = value;
            }
        }
        public int Length
        {
            get
            {
                return results.Count;
            }
        }
        public override string ToString()
        {
            return this.name;
        }
        public String getPattern(int idx)
        {
            return results[idx].Pattern;
        }
        public String getNickName(int idx)
        {
            return results[idx].Pname;
        }
        public int getScore(int idx)
        {
            return results[idx].Score;
        }
        public string getAIState(int idx)
        {
            return results[idx].AIStateID;
        }

        public void addState(string stateID, string stateName)
        {
            states.Add(stateID, new AIState(stateID,stateName));
        }
        public Dictionary<string, AIState> getAIStates()
        {
            return states;
        }

        public void addGoodChess(string name, int score)
        {
            goodChess.Add(name, score);
        }

        public Dictionary<string, int> GoodChess
        {
            get { return goodChess; }
        }

        public static List<EstimatorData> create(string uri)
        {
            List<EstimatorData> rtn = new List<EstimatorData>();
            EstimatorData esd = null;
            XmlTextReader reader = new XmlTextReader(uri);

            string stateId = null;
            string stateName = null;
            bool aiState = false;

            string itemName = null;
            string itemId = null;
            string itemRId = null;
            string itemParten = null;
            int itemValue = 0;
            int itemRValue = 0;
            bool aiItem = false;

            bool AIBegin = false;
            string AIName = null;

            bool goodStep = false;

            while (reader.Read())
            {
                switch (reader.NodeType)
                {
                    case XmlNodeType.Element:
                        switch (reader.Name)
                        {
                            case "AI":
                                esd = new EstimatorData();
                                AIBegin = true;
                                break;
                            case "GoodStep":
                                goodStep = true;
                                break;
                            case "AIName":
                                if (AIBegin)
                                {
                                    AIName = reader.ReadElementContentAsString();
                                }
                                break;
                            case "AIState":
                                aiState = true;
                                stateId = null;
                                stateName = null;
                                break;
                            case "AIItem":
                                aiItem = true;
                                itemName = null;
                                itemId = null;
                                itemParten = null;
                                itemValue = 0;
                                itemRValue = 0;
                                break;
                            case "StateID":
                                if (aiState)
                                {
                                    stateId = reader.ReadElementContentAsString();
                                }
                                if (aiItem)
                                {
                                    itemId = reader.ReadElementContentAsString();
                                }
                                break;
                            case "rStateID":
                                itemRId = reader.ReadElementContentAsString();
                                break;
                            case "StateName":
                                stateName = reader.ReadElementContentAsString();
                                break;
                            case "ItemName":
                                itemName = reader.ReadElementContentAsString();
                                break;
                            case "pattern":
                                itemParten = reader.ReadElementContentAsString();
                                break;
                            case "value":
                                itemValue = reader.ReadElementContentAsInt();
                                break;
                            case "rvalue":
                                itemRValue = reader.ReadElementContentAsInt();
                                break;
                            case "s5":
                                if (goodStep)
                                {
                                    esd.addGoodChess("s5", reader.ReadElementContentAsInt());
                                }
                                break;
                            case "r4":
                                if (goodStep)
                                {
                                    esd.addGoodChess("r4", reader.ReadElementContentAsInt());
                                }
                                break;
                            case "s4":
                                if (goodStep)
                                {
                                    esd.addGoodChess("s4", reader.ReadElementContentAsInt());
                                }
                                break;
                            case "d42":
                                if (goodStep)
                                {
                                    esd.addGoodChess("d42", reader.ReadElementContentAsInt());
                                }
                                break;
                            case "d4s3":
                                if (goodStep)
                                {
                                    esd.addGoodChess("d4s3", reader.ReadElementContentAsInt());
                                }
                                break;
                            case "r3":
                                if (goodStep)
                                {
                                    esd.addGoodChess("r3", reader.ReadElementContentAsInt());
                                }
                                break;
                            case "s32":
                                if (goodStep)
                                {
                                    esd.addGoodChess("s32", reader.ReadElementContentAsInt());
                                }
                                break;
                            case "rs2":
                                if (goodStep)
                                {
                                    esd.addGoodChess("rs2", reader.ReadElementContentAsInt());
                                }
                                break;
                        }
                        break;
                    case XmlNodeType.EndElement:
                        switch (reader.Name)
                        {
                            case "AIState":
                                esd.addState(stateId, stateName);
                                aiState = false;
                                break;
                            case "AIItem":
                                esd.AddData(itemId, itemParten, itemName, itemValue);
                                esd.AddRData(itemRId, itemParten, itemName, itemRValue);
                                aiItem = false;
                                break;
                            case "AI":
                                esd.Name = AIName;
                                rtn.Add(esd);
                                esd = null;
                                AIBegin = false;
                                break;
                            case "GoodStep":
                                goodStep = false;
                                break;
                        }
                        break;
                }
            }
            return rtn;
        }
    }

    /// <summary>
    /// 封装了AI.xml中的AIItem
    /// </summary>
    class EstimatedItem
    {
        /// <summary>
        /// 表示连三重四等模式的ID，对应AI.xml中的IAState
        /// </summary>
        private string aiStateID;
        /// <summary>
        /// 表示模式的名称，对应对应AI.xml中的ItemName
        /// </summary>
        private string pname;
        /// <summary>
        /// 表示有意义的模式串，如2011100就是一种连3的模式
        /// </summary>
        private string pattern;
        /// <summary>
        /// 模式的评分值
        /// </summary>
        private int score;

        public EstimatedItem()
        {

        }
        /// <summary>
        /// EstimatedItem的构造函数
        /// </summary>
        /// <param name="pAIStateID">模式的ID</param>
        /// <param name="pattern">模式串</param>
        /// <param name="pname">模式名称</param>
        /// <param name="score">评分</param>
        public EstimatedItem(string pAIStateID, string pattern, string pname, int score)
        {
            this.aiStateID = pAIStateID;
            this.pattern = pattern;
            this.pname = pname;
            this.score = score;
        }

        /// <summary>
        /// 表示连三重四等模式的ID，对应AI.xml中的IAState
        /// </summary>
        public string AIStateID
        {
            get { return aiStateID; }
            set { aiStateID = value; }
        }
        
        /// <summary>
        /// 表示有意义的模式串，如2011100就是一种连3的模式
        /// </summary>
        public string Pattern
        {
            get { return pattern; }
            set { pattern = value; }
        }
        
        /// <summary>
        /// 表示模式的名称，对应对应AI.xml中的ItemName
        /// </summary>
        public string Pname
        {
            get { return pname; }
            set { pname = value; }
        }
        
        /// <summary>
        /// 模式的评分值
        /// </summary>
        public int Score
        {
            get { return score; }
            set { score = value; }
        }

        /// <summary>
        /// 一种静态工厂
        /// </summary>
        /// <param name="pAIStateID">模式的ID</param>
        /// <param name="pattern">模式串</param>
        /// <param name="pname">模式名称</param>
        /// <param name="score">评分</param>
        /// <returns>返回新创建的EstimatedItem的实例</returns>
        public static EstimatedItem Creat(string AIStateID,string pattern, string pname,int score)
        {
            return new EstimatedItem(AIStateID, pattern, pname, score);
        }
        
    }

    class Estimator
    {
        private fACAutoMachine acAutoMachine;
        private EstimatorData esData;
        public static readonly int[,] greedyScoreArea;
        static Estimator()
        {
            greedyScoreArea = new int[17, 17];
            for (int j = 1; j < greedyScoreArea.GetLength(1) - 1; j++)
            {
                for (int i = 1; i < greedyScoreArea.GetLength(0) - 1; i++)
                {
                    if (Math.Abs(i - 8) > Math.Abs(j - 8))
                    {
                        greedyScoreArea[i, j] = 7 - Math.Abs(i - 8);
                    }
                    else
                    {
                        greedyScoreArea[i, j] = 7 - Math.Abs(j - 8);
                    }
                }
            }
        }
        public Estimator(EstimatorData esData)
        {
            acAutoMachine = new fACAutoMachine();
            this.esData = esData;
            for(int i=0;i<esData.Length;i++)
            {
                acAutoMachine.AddString(esData.getPattern(i), esData.getScore(i));
            }
            acAutoMachine.formFailure();
        }
        public EstimatorResult getOverallScore(int[,] chessboardMatrix)
        {
            int score = 0;

            EstimatorResult rtn = new EstimatorResult();

            //判断横行
            int x,y;
            FACtrieNode p;
            for (y = 1; y < chessboardMatrix.GetLength(1)-1; y++)
            {
                p = acAutoMachine.Root;
                for (x = 0; x < chessboardMatrix.GetLength(0); x++)
                {
                    p = (FACtrieNode)p[chessboardMatrix[x, y]];
                    if (p.IsLeaf)
                    {
                        score += esData.getScore(p.StrID);
                        rtn.AddPatern(esData.getAIState(p.StrID));
                    }
                }
            }
            //判断纵行
            for (x = 1; x < chessboardMatrix.GetLength(1) - 1; x++)
            {
                p = acAutoMachine.Root;
                for (y = 0; y < chessboardMatrix.GetLength(0); y++)
                {
                    p = (FACtrieNode)p[chessboardMatrix[x, y]];
                    if (p.IsLeaf)
                    {
                        score += esData.getScore(p.StrID);
                        rtn.AddPatern(esData.getAIState(p.StrID));
                    }
                }
            }
            //判断左斜
            for (x = 6; x <= Common.ChessCols+1; x++)
            {
                p = acAutoMachine.Root;
                int i = x, j = 0, three = 0;
                while(three<2)
                {
                    p = (FACtrieNode)p[chessboardMatrix[i, j]];
                    if (p.IsLeaf)
                    {
                        score += esData.getScore(p.StrID);
                        rtn.AddPatern(esData.getAIState(p.StrID));
                    }
                    if (chessboardMatrix[i, j] == 3) three++;
                    i -= 1; j += 1;
                } 
            }
            for (y = 1; y <= Common.ChessRows-5; y++)
            {
                p = acAutoMachine.Root;
                int i = Common.ChessCols+1, j = y, three = 0;
                while(three<2)
                {
                    p = (FACtrieNode)p[chessboardMatrix[i, j]];
                    if (p.IsLeaf)
                    {
                        score += esData.getScore(p.StrID);
                        rtn.AddPatern(esData.getAIState(p.StrID));
                    }
                    if (chessboardMatrix[i, j] == 3) three++;
                    i -= 1; j += 1;
                }
            }
            //判断右斜
            for (x = 0; x <= Common.ChessCols-5; x++)
            {
                p = acAutoMachine.Root;
                int i = x, j = 0, three = 0;
                while (three<2)
                {
                    p = (FACtrieNode)p[chessboardMatrix[i, j]];
                    if (p.IsLeaf)
                    {
                        score += esData.getScore(p.StrID);
                        rtn.AddPatern(esData.getAIState(p.StrID));
                    }
                    if (chessboardMatrix[i, j] == 3) three++;
                    i += 1; j += 1;
                } 
            }
            for (y = 1; y <= Common.ChessRows -5; y++)
            {
                p = acAutoMachine.Root;
                int i = 0, j = y, three = 0;
                while (three < 2)
                {
                    p = (FACtrieNode)p[chessboardMatrix[i, j]];
                    if (p.IsLeaf)
                    {
                        score += esData.getScore(p.StrID);
                        rtn.AddPatern(esData.getAIState(p.StrID));
                    }
                    if (chessboardMatrix[i, j] == 3) three++;
                    i += 1; j += 1;
                } 
            }
            rtn.Score = score;
            return rtn;
        }
        public EstimatorResult getGreedyScore(int[,] chessboardMatrix, int x, int y, int player)
        {
            int score = 0;
            EstimatorResult rst = new EstimatorResult();
            score += getGreedyScorePrv(chessboardMatrix, x, y,player,rst,false);
            chessboardMatrix[x, y] = player;
            score += getGreedyScorePrv(chessboardMatrix, x, y,player,rst,true);
            chessboardMatrix[x, y] = Common.EmptyPlayer;
            rst.calStepLevel(esData.GoodChess);
            rst.Score = score + greedyScoreArea[x, y];
            return rst;
        }
        private int getGreedyScorePrv(int[,] chessboardMatrix, int x, int y, int player,EstimatorResult rst,bool sig)
        {
            FACtrieNode p;
            int bx, by;
            int three;
            int score = 0;
            int rectifyPlayer=0;
            //判断横行
            bx = 0; by = y;
            p = acAutoMachine.Root;
            for (bx = 0; bx < Common.ChessCols + 2; bx++)
            {
                rectifyPlayer = Common.getRectifyPlayer(chessboardMatrix[bx, by], player);
                p = (FACtrieNode)p[rectifyPlayer];
                if (p.IsLeaf)
                {
                    if (sig)
                    {
                        rst.AddPatern(esData.getAIState(p.StrID));
                        score += esData.getScore(p.StrID);
                    }
                    else
                    {
                        rst.SubPattern(esData.getAIState(p.StrID));
                        score -= esData.getScore(p.StrID);
                    }
                }
            }
            //判断纵行
            bx = x; by = 0;
            p = acAutoMachine.Root;
            for (by = 0; by < Common.ChessRows + 2; by++)
            {
                rectifyPlayer = Common.getRectifyPlayer(chessboardMatrix[bx, by], player);
                p = (FACtrieNode)p[rectifyPlayer];
                if (p.IsLeaf)
                {
                    if (sig)
                    {
                        rst.AddPatern(esData.getAIState(p.StrID));
                        score += esData.getScore(p.StrID);
                    }
                    else
                    {
                        rst.SubPattern(esData.getAIState(p.StrID));
                        score -= esData.getScore(p.StrID);
                    }
                }
            }
            //判断左斜
            if (x + y >= 6 && x + y <= Common.ChessCols + Common.ChessRows - 4)
            {
                bx = x + y; by = 0;
                three = 0;
                while (three < 2)
                {
                    if (bx <= Common.ChessCols + 1)
                    {
                        rectifyPlayer = Common.getRectifyPlayer(chessboardMatrix[bx, by], player);
                        p = (FACtrieNode)p[rectifyPlayer];
                        if (p.IsLeaf)
                        {
                            if (sig)
                            {
                                rst.AddPatern(esData.getAIState(p.StrID));
                                score += esData.getScore(p.StrID);
                            }
                            else
                            {
                                rst.SubPattern(esData.getAIState(p.StrID));
                                score -= esData.getScore(p.StrID);
                            }
                        }
                        if (chessboardMatrix[bx, by] == 3) three++;
                    }
                    bx -= 1; by += 1;
                } 
            }
            //判断右斜
            if (x - y >= 4-Common.ChessRows && x - y <= Common.ChessCols-6)
            {
                bx = x - y; by = 0;
                three = 0;
                while (three < 2)
                {
                    if (bx >= 0)
                    {
                        rectifyPlayer = Common.getRectifyPlayer(chessboardMatrix[bx, by], player);
                        p = (FACtrieNode)p[rectifyPlayer];
                        if (p.IsLeaf)
                        {
                            if (sig)
                            {
                                rst.AddPatern(esData.getAIState(p.StrID));
                                score += esData.getScore(p.StrID);
                            }
                            else
                            {
                                rst.SubPattern(esData.getAIState(p.StrID));
                                score -= esData.getScore(p.StrID);
                            }
                        }
                        if (chessboardMatrix[bx, by] == 3) three++;
                    }
                    bx += 1; by += 1;
                } 
            }
            return score;
        }
        
    }

    /// <summary>
    /// Estimator评估函数的返回值
    /// </summary>
    class EstimatorResult
    {
        /// <summary>
        /// stateID的键值对字典，string表示StateID的字符串，int表示出现次数
        /// </summary>
        private Dictionary<string, int> paternStates;
        /// <summary>
        /// 评分
        /// </summary>
        private int score;
        /// <summary>
        /// 是否是必走的好棋
        /// </summary>
        private bool goodStep;
        /// <summary>
        /// 好棋等级
        /// </summary>
        private int stepLevel;
        public EstimatorResult()
        {
            paternStates = new Dictionary<string, int>();
            score = 0;
            goodStep = false;
            stepLevel = 0;
            paternStates.Add("AI1001", 0);
            paternStates.Add("AI1002", 0);
            paternStates.Add("AI1003", 0);
            paternStates.Add("AI1004", 0);
            paternStates.Add("AI1005", 0);
            paternStates.Add("AI1006", 0);
            paternStates.Add("AI1007", 0);
            paternStates.Add("AI1008", 0);
            paternStates.Add("AI1009", 0);
            paternStates.Add("s5",0);
            paternStates.Add("r4",0);
            paternStates.Add("s4",0);
            paternStates.Add("d42", 0);
            paternStates.Add("d4s3",0);
            paternStates.Add("r3",0);
            paternStates.Add("s32",0);
            paternStates.Add("rs2", 0);
        }
        public void AddPaternStrings(string[] pts)
        {
            foreach (string s in pts)
                paternStates.Add(s, 0);
        }
        public void AddPatern(string stateID)
        {
            paternStates[stateID]++;
        }
        public void SubPattern(string stateID)
        {
            paternStates[stateID]--;
        }
        public int Score
        {
            get { return score; }
            set { score = value; }
        }
        public bool IsGoodStep
        {
            get { return goodStep; }
            set { goodStep = value; }
        }
        public int StepLevel
        {
            get { return stepLevel; }
            set { stepLevel = value; }
        }
        public int calStepLevel(Dictionary<string, int> goodChessData)
        {
            IsGoodStep = true;
            if (paternStates["AI1001"] >= 1)
            {
                stepLevel = 8;
                paternStates["s5"] += paternStates["AI1001"];
                score = goodChessData["s5"];
                return stepLevel;
            }
            if (paternStates["AI1008"] <= -1)
            {
                stepLevel = 7;
                paternStates["r4"] += paternStates["AI1008"];
                score = goodChessData["r4"];
                return stepLevel;
            }
            if (paternStates["AI1002"] >= 1)
            {
                stepLevel = 6;
                paternStates["s4"] += paternStates["AI1002"];
                score = goodChessData["s4"];
                return stepLevel;
            }
            if (paternStates["AI1004"] >= 2)
            {
                stepLevel = 5;
                paternStates["d42"] += paternStates["AI1004"] / 2;
                score = goodChessData["d42"];
                return stepLevel;
            }
            if (paternStates["AI1004"] >= 1 && paternStates["AI1003"] >= 1)
            {
                stepLevel = 4;
                paternStates["d4s3"] += paternStates["AI1004"];
                score = goodChessData["d4s3"];
                return stepLevel;
            }
            if (paternStates["AI1007"] <= -1)
            {
                stepLevel = 3;
                paternStates["r3"] += paternStates["AI1007"];
                score = goodChessData["r3"];
                return stepLevel;
            }
            if (paternStates["AI1003"] >= 2)
            {
                stepLevel = 2;
                paternStates["s32"] += paternStates["AI1003"] / 2;
                score = goodChessData["s32"];
                return stepLevel;
            }
            if (paternStates["AI1006"] >= 2)
            {
                stepLevel = 1;
                paternStates["rs2"] += paternStates["AI1006"] / 2;
                score = goodChessData["rs2"];
                IsGoodStep = false;
                return stepLevel;
            }
            IsGoodStep = false;
            return stepLevel;
        }
    }
}
