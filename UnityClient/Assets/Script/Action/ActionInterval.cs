using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CCAction
{
    class Sequence : ActionInteval
    {
        protected int m_iPlayerIndex;
        protected List<Action> m_listAction;

        public static Sequence Create(params Action[] v_arrAction)
        {
            Sequence rtn = new Sequence();
            foreach (var action in v_arrAction)
            {
                rtn.addAction(action);
            }
            return rtn;
        }


        public Sequence()
        {
            m_listAction = new List<Action>();
            m_iPlayerIndex = 0;
        }

        protected override void onInitWithTarget(object v_target)
        {
            foreach (var action in m_listAction)
                action.initWithTarget(v_target);
        }
        public override void step(object v_target, float v_dt)
        {
            base.step(v_target, v_dt);
        }
        protected override void onStart(object v_target)
        {
            m_listAction[m_iPlayerIndex].start(v_target);
        }
        protected override void onStep(object v_target, float v_dt)
        {
            if (ClientLog.Assert(m_iPlayerIndex < m_listAction.Count, "m_iPlayerIndex<m_listAction.Count")) return;
            Action curAction = m_listAction[m_iPlayerIndex];
            curAction.step(v_target, v_dt);
            if (curAction.isDone())
            {
                m_iPlayerIndex++;
                if (m_iPlayerIndex < m_listAction.Count)
                    m_listAction[m_iPlayerIndex].start(v_target);
            }
        }
        public override bool isDone()
        {
            return m_iPlayerIndex >= m_listAction.Count;
        }

        public void addAction(Action v_actionAdd)
        {
            m_listAction.Add(v_actionAdd);
        }


        public void conjointSequence(Sequence v_sequenceConjoint)
        {
            foreach (var action in v_sequenceConjoint.m_listAction)
                m_listAction.Add(action.cloneAsAction());
        }

        public override object Clone()
        {
            var rtn = new Sequence();
            foreach (var action in m_listAction)
                rtn.addAction(action.cloneAsAction());
            return rtn;
        }

        public override string ToString()
        {
            return "SequenceAction";
        }
    }

    class Spawn : ActionInteval
    {
        protected List<Action> m_listAction;
        protected int m_iOverActionNum;

        public static Spawn Create(params Action[] v_arrAction)
        {
            Spawn rtn = new Spawn();
            foreach (var action in v_arrAction)
            {
                rtn.addAction(action);
            }
            return rtn;
        }

        public Spawn()
        {
            m_listAction = new List<Action>();
            m_iOverActionNum = 0;
        }
        protected override void onStart(object v_target)
        {
            foreach (var action in m_listAction)
            {
                action.start(v_target);
                var act = action as ActionInstence;
                if (action is ActionInstence)
                    act.Do(v_target);
            }
        }
        protected override void onInitWithTarget(object v_target)
        {
            foreach (var action in m_listAction)
                action.initWithTarget(v_target);
        }
        protected override void onStep(object v_target, float v_dt)
        {
            foreach (var action in m_listAction)
            {
                if (!action.isDone())
                {
                    action.step(v_target, v_dt);
                    if (action.isDone())
                        m_iOverActionNum++;
                }
            }
        }
        public override bool isDone()
        {
            return m_iOverActionNum >= m_listAction.Count;
        }
        public void addAction(Action v_actionAdd)
        {
            m_listAction.Add(v_actionAdd);
        }

        public override object Clone()
        {
            var rtn = new Spawn();
            foreach (var action in m_listAction)
                rtn.addAction(action.cloneAsAction());
            return rtn;
        }

        public override string ToString()
        {
            return "Spawn";
        }

    }

    class Repeat : ActionInteval
    {
        protected int m_iRepeanTimes;
        protected Action m_repeatAction;
        protected bool m_bRepeatForever;
        protected int m_iExicuteTimes;

        public static Repeat Create(Action v_repeatAction, int v_iExicuteTimes)
        {
            Repeat rtn = new Repeat(v_repeatAction, v_iExicuteTimes);
            return rtn;
        }

        public static Repeat CreateForever(Action v_repeatAction)
        {
            Repeat rtn = new Repeat(v_repeatAction);
            return rtn;
        }

        public Repeat(Action v_repeatAction, int v_iExicuteTimes)
        {
            m_repeatAction = v_repeatAction;
            m_iRepeanTimes = v_iExicuteTimes;
        }
        public Repeat(Action v_repeatAction)
        {
            m_repeatAction = v_repeatAction;
            m_bRepeatForever = true;
        }
        protected override void onInitWithTarget(object v_target)
        {
            if (ClientLog.Assert(m_repeatAction != null, "RepeatAction has not setted")) return;
            m_repeatAction.initWithTarget(v_target);
        }
        protected override void onStart(object v_target)
        {
            if (ClientLog.Assert(m_repeatAction != null, "RepeatAction has not setted")) return;
            m_repeatAction.start(v_target);
        }
        protected override void onStep(object v_target, float v_dt)
        {
            m_repeatAction.step(v_target, v_dt);
            if (m_repeatAction.isDone())
            {
                m_iExicuteTimes++;
                if (!isDone())
                    m_repeatAction.start(v_target);
            }
        }
        public override bool isDone()
        {
            if (m_bRepeatForever)
                return false;
            return m_iExicuteTimes >= m_iRepeanTimes;
        }
        public override object Clone()
        {
            throw new NotImplementedException();
        }
        public override string ToString()
        {
            return "Repeat Action";
        }
    }

    class DelayTime : ActionInteval
    {
        public static DelayTime Create(float v_fDelayTime)
        {
            return new DelayTime(v_fDelayTime);
        }
        protected float m_fDelayTime;
        public DelayTime(float v_fDelayTime)
        {
            m_fDelayTime = v_fDelayTime;
        }
        public void setDelayTime(float v_fDelayTime)
        {
            m_fDelayTime = v_fDelayTime;
        }
        protected override void onStep(object v_target, float v_dt)
        {
            
        }
        protected override void onInitWithTarget(object v_target)
        {
            throw new NotImplementedException();
        }
        public override bool isDone()
        {
            return m_fTime >= m_fDelayTime;
        }
        public override object Clone()
        {
            return new DelayTime(m_fDelayTime);
        }
        public override string ToString()
        {
            return "DelayTime Action";
        }
    }

    class WaitFor : ActionInteval
    {
        public static WaitFor Create(DelWaitForWhat v_fnWaitForWhat)
        {
            WaitFor rtn = new WaitFor();
            rtn.setWaitForWhat(v_fnWaitForWhat);
            return rtn;
        }
        public delegate bool DelWaitForWhat();
        protected DelWaitForWhat m_fnWaitForWhat;
        public WaitFor()
        {
            m_fnWaitForWhat = null;
        }
        public void setWaitForWhat(DelWaitForWhat v_fnWaitForWhat)
        {
            m_fnWaitForWhat = v_fnWaitForWhat;
        }
        public override bool isDone()
        {
            return m_fnWaitForWhat();
        }
        protected override void onStep(object v_target, float v_dt)
        {
            
        }
        protected override void onInitWithTarget(object v_target)
        {
            
        }
        public override object Clone()
        {
            return Create(m_fnWaitForWhat);
        }
    }


}
