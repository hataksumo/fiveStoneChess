using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CCAction
{
    class ActionManager
    {
        protected List<ActionObject> m_listActionObjects;
        public ActionObject runAction(Object v_target,Action v_action)
        {
            ActionObject ao = new ActionObject(v_target, v_action);
            m_listActionObjects.Add(ao);
            return ao;
        }
        public void update(float v_dt)
        {
            m_listActionObjects.RemoveAll(
                (ActionObject v_ao) => 
                {
                    return v_ao.isDeleted();
                }
            );
            foreach (var ao in m_listActionObjects)
            {
                ao.update(v_dt);
            }
        }

        public void pause(Object v_target)
        {
            var arrPause = m_listActionObjects;
            if(v_target != null)
            arrPause = m_listActionObjects.FindAll((ActionObject v_ao) =>
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
            var arrResume = m_listActionObjects;
            if (v_target != null)
                arrResume = m_listActionObjects.FindAll((ActionObject v_ao) =>
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
            var arrStop = m_listActionObjects;
            if (v_target != null)
                arrStop = m_listActionObjects.FindAll((ActionObject v_ao) =>
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
            var runingAction = m_listActionObjects.Find((ActionObject v_ao) =>
            {
                return v_ao.getTarget() == v_target;
            }
            );
            return runingAction != null;
        }



    }
}
