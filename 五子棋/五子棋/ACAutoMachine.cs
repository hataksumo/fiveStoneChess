using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace 五子棋
{
    class TrieNode
    {
        private char name;
        protected TrieNode[] children;
        public TrieNode(int len,char name)
        {
            children = new TrieNode[len];
            for (int i = 0; i < len; i++)
            {
                children[i] = null;
            }
            this.name = name;
        }
        public void AddChild(int key,TrieNode p)
        {
            if (key < 0 || key > children.Length)
                return;
            children[key] = p;
        }
        public TrieNode this[int id]
        {
            get
            {
                return children[id];
            }
            set
            {
                children[id] = value;
            }
        }
        public char Name
        {
            get
            {
                return this.name;
            }
            set
            {
                this.name = value;
            }
        }
        public int ChildLen
        {
            get { return children.Length; }
        }
    }

    class ACtrieNode : TrieNode
    {
        private TrieNode failure;
        public ACtrieNode(int len,char name)
            : base(len,name)
        {
            failure = null;
        }
        public TrieNode Failure
        {
            get
            {
                return failure;
            }
            set
            {
                failure = value;
            }
        }
    }

    class FACtrieNode : ACtrieNode
    {
        private bool isLeaf;
        private int strid;
        public FACtrieNode():this('r')
        {
            isLeaf = false;
        }
        public FACtrieNode(char name)
            : base(4, name)
        {
            isLeaf = false;
        }
        public bool IsLeaf
        {
            get
            {
                return isLeaf;
            }
            set
            {
                isLeaf = value;
            }
        }
        public int StrID
        {
            get
            {
                return strid;
            }
            set
            {
                strid = value;
            }
        }
        /*public FACtrieNode this[int c]
        {
            get
            {
                return (FACtrieNode)children[c];
            }
        }*/
    }
    
    class fACAutoMachine
    {
        private FACtrieNode root;
        private List<string> patterns;
        private List<int> scores;
        private FACtrieNode curNode;
        public fACAutoMachine()
        {
            root = new FACtrieNode();
            patterns = new List<string>();
            scores = new List<int>();
            root.Failure = null;
            curNode = root;
        }
        public void AddString(string s,int c)
        {
            FACtrieNode p = root,q;
            for (int i = 0; i < s.Length; i++)
            {
                q = (FACtrieNode)p[s[i] - '0'];
                if (q == null)
                {
                    q = new FACtrieNode(s[i]);
                    p[s[i] - '0'] = q;
                }
                p = q;
            }
            p.IsLeaf = true;
            p.StrID = patterns.Count;
            patterns.Add(s);
            scores.Add(c);
        }
        public void formFailure()
        {
            Queue<FACtrieNode> que = new Queue<FACtrieNode>(patterns.Count * 7);
            que.Enqueue(root);
            while (que.Count > 0)
            {
                FACtrieNode p = que.Dequeue();
                for (int i = 0; i < p.ChildLen; i++)
                {
                    FACtrieNode q = (FACtrieNode)p[i];
                    if (q != null)
                    {
                        FACtrieNode tmp = (FACtrieNode)p.Failure;
                        //q.Failure = p.Failure[q.Name];
                        while (tmp!=null&&tmp[i] == null && tmp != root)
                        {
                            tmp = (FACtrieNode)tmp.Failure;
                        }
                        if (tmp == null)
                        {
                            q.Failure = root;
                        }
                        else
                        {
                            q.Failure = tmp[i];
                        }
                        que.Enqueue(q);
                    }
                    else
                    {
                        p[i] = p.Failure[i];
                    }
                    
                }
            }
        }
        public void ProcessMachine(char c)
        {
            curNode = (FACtrieNode)curNode[c];
        }
        public FACtrieNode CurNode
        {
            get
            {
                return curNode;
            }
        }
        public FACtrieNode Root
        {
            get
            {
                return this.root;
            }
        }

    }
}
