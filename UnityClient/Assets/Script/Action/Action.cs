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

        public void initWithTarget(Object v_target)
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
        protected abstract void onStart(Object v_target);
    }
}
