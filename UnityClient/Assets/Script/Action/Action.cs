﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CCAction
{
    abstract class Action : ICloneable
    {
        public virtual void start(Object v_target)
        {
            onStart(v_target);
        }

        protected virtual void onStart(Object v_target)
        {

        }

        public virtual void initWithTarget(Object v_target)
        {
            onInitWithTarget(v_target);
        }
        protected abstract void onInitWithTarget(Object v_target);

        public abstract void step(Object v_target, float v_dt);
        public abstract bool isDone();

        public override string ToString()
        {
            return "Action";
        }

        public abstract object Clone();

        public Action cloneAsAction()
        {
            return Clone() as Action;
        }
    }

    abstract class ActionInstence : Action
    {
        protected override void onStart(object v_target)
        {
            Do(v_target);
        }
        public override void step(object v_target, float v_dt)
        {
            
        }

        public abstract void Do(object v_target);

        public override bool isDone()
        {
            return true;
        }

        public override string ToString()
        {
            return "ActionInstence";
        }
    }

    abstract class GameObjectActionInstence : ActionInstence
    {
        protected override void onInitWithTarget(object v_target)
        {
            ClientLog.Assert(v_target is UnityEngine.GameObject, "v_target {0} is not UnityEngine.GameObject", v_target.ToString());
        }
    }


    abstract class ActionInteval : Action
    {
        protected float m_fTime;
        public ActionInteval()
        {
            m_fTime = 0;
        }
        public override void start(Object v_target)
        {
            m_fTime = 0;
            onStart(v_target);
        }
        public override void step(Object v_target, float v_dt)
        {
            m_fTime += v_dt;
            onStep(v_target, v_dt);
        }
        protected abstract void onStep(Object v_target,float v_dt);
    }

    abstract class ActionLerp : ActionInteval
    {
        protected float m_fDuration;
        protected ILerpStrategyBase m_lerpStrategy;
        public ActionLerp()
        {
            m_fDuration = 0;
            m_lerpStrategy = null;
        }
        public override void initWithTarget(Object v_target)
        {
            if (m_lerpStrategy == null)
                m_lerpStrategy = new LinearLerp();
            base.initWithTarget(v_target);
        }
        protected override void onStep(object v_target,float v_dt)
        {
            float t = m_fTime / m_fDuration;
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
            return m_fTime >= m_fDuration;
        }

        public float Duration
        {
            get { return m_fDuration; }
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
