using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CCAction
{
    abstract class Action
    {
        public void start(Object v_target)
        {

        }

        protected virtual void onStart(Object v_target)
        {

        }

        public virtual void initWithTarget(Object v_target)
        {

        }

        public abstract void step(Object v_target, float v_dt);
        public abstract bool isDone();

        public virtual string ToString()
        {
            return "Action";
        }
    }

    abstract class ActionInstence : Action
    {
        public override void step(object v_target, float v_dt)
        {
            
        }

        public abstract void Do();

        public override bool isDone()
        {
            return true;
        }

        public override string ToString()
        {
            return "ActionInstence";
        }
    }

    abstract class ActionInteval : Action
    {
        protected float m_time;
        public ActionInteval()
        {
            m_time = 0;
        }
        public virtual void start(Object v_target)
        {
            m_time = 0;
            onStart(v_target);
        }
        public override void step(Object v_target, float v_dt)
        {
            m_time += v_dt;
            onStep(v_target, v_dt);
        }
        protected abstract void onStep(Object v_target,float v_dt);
    }

    abstract class ActionLerp : ActionInteval
    {
        protected float m_duration;
        protected ILerpStrategyBase m_lerpStrategy;
        public ActionLerp()
        {
            m_duration = 0;
            m_lerpStrategy = null;
        }
        public override void initWithTarget(Object v_target)
        {
            if (m_lerpStrategy == null)
                m_lerpStrategy = new LinearLerp();
            onInitWithTarget(v_target);
        }
        protected abstract void onInitWithTarget(Object v_target);
        protected override void onStep(object v_target,float v_dt)
        {
            float t = m_time / m_duration;
            update(v_target, t);
        }
        public void update(object v_target,float v_t)
        {
            float tt = m_lerpStrategy.getLerpVar(v_t);
            onUpdate(v_target, v_t);
        }
        protected abstract void onUpdate(object v_target, float v_t);
        public override bool isDone()
        {
            return m_time >= m_duration;
        }

        public float Duration
        {
            get { return m_duration; }
        }

        public ILerpStrategyBase LerpStrategy
        {
            get { return m_lerpStrategy; }
            set { m_lerpStrategy = value; }
        }

        public override string ToString()
        {
            return "ActionLerp";
        }

    }
}
