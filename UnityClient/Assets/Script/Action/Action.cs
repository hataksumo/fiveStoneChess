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
}
