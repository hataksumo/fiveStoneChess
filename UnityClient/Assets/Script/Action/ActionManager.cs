using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CCAction
{
    class ActionManager
    {
        protected List<ActionObject> m_actionObjects;
        public ActionObject runAction(Object v_target,Action v_action)
        {
            ActionObject ao = new ActionObject(v_target, v_action);
            m_actionObjects.Add(ao);
            return ao;
        }
        public void update(float v_dt)
        {
            m_actionObjects.RemoveAll(
                (ActionObject v_ao) => 
                {
                    return v_ao.isDeleted();
                }
            );
            foreach (var ao in m_actionObjects)
            {
                ao.update(v_dt);
            }
        }

        public void pause(Object v_target)
        {
            var arrPause = m_actionObjects;
            if(v_target != null)
            arrPause = m_actionObjects.FindAll((ActionObject v_ao) =>
                {
                    return v_ao.getTarget() == v_target;
                }
            );
            foreach (var pauseAo in arrPause)
            {
                pauseAo.pause();
            }
        }

        public void resume(Object v_target)
        {
            var arrResume = m_actionObjects;
            if (v_target != null)
                arrResume = m_actionObjects.FindAll((ActionObject v_ao) =>
                {
                    return v_ao.getTarget() == v_target;
                }
                );
            foreach (var resumeAo in arrResume)
            {
                resumeAo.resume();
            }
        }

        public void stop(Object v_target)
        {
            var arrStop = m_actionObjects;
            if (v_target != null)
                arrStop = m_actionObjects.FindAll((ActionObject v_ao) =>
                {
                    return v_ao.getTarget() == v_target;
                }
                );
            foreach (var stopAo in arrStop)
            {
                stopAo.stop();
            }
        }

        public bool isOnRuningAction(Object v_target)
        {
            var runingAction = m_actionObjects.Find((ActionObject v_ao) =>
            {
                return v_ao.getTarget() == v_target;
            }
            );
            return runingAction != null;
        }



    }
}
