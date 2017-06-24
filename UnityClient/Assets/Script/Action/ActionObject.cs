using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CCAction
{
    class ActionObject
    {
        protected Object m_goTarget;
        protected Action m_action;
        protected bool m_bDel;
        protected bool m_bPause;
        protected bool m_bRuning;
        public ActionObject(Object v_target, Action v_action)
        {
            m_goTarget = v_target;
            m_action = v_action;
            m_bDel = false;
            m_bPause = false;
            m_bRuning = false;
        }
        public void start()
        {
            ClientLog.Assert(!m_bDel, "the action object has been deleted");
            m_action.start(m_goTarget);
            m_bDel = false;
            m_bPause = false;
            m_bRuning = true;
        }

        public void pause()
        {
            ClientLog.Assert(!m_bDel, "the action object has been deleted");
            m_bPause = true;
            m_bRuning = false;
        }

        public void resume()
        {
            ClientLog.Assert(!m_bDel, "the action object has been deleted");
            m_bPause = false;
            m_bRuning = true;
        }

        public void stop()
        {
            ClientLog.Assert(!m_bDel, "the action object has been deleted");
            m_bDel = true;
            m_bRuning = false;
        }

        public void update(float v_dt)
        {
            if (!m_bPause)
            {
                if (!m_bRuning)
                    this.start();
                m_action.step(m_goTarget, v_dt);
                if (m_action.isDone())
                    this.stop();
            }
        }

        public bool isDeleted()
        {
            return m_bDel;
        }

        public bool isPaused()
        {
            return m_bPause;
        }

        public bool isRuning()
        {
            return m_bRuning;
        }

        public Action getAction()
        {
            return m_action;
        }

        public Object getTarget()
        {
            return m_goTarget;
        }

        public override string ToString()
        {
            return m_action.ToString();
        }
    }
}
