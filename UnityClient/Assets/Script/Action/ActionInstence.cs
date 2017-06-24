using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace CCAction
{
    class Show : GameObjectActionInstence
    {
        public static Show Create()
        {
            return new Show();
        }
        public override void Do(object v_target)
        {
            GameObject go = v_target as GameObject;
            if (ClientLog.Assert(go != null, "action's target must be GameObject")) return;
            go.SetActive(true);
        }
        public override string ToString()
        {
            return "ShowAction";
        }
        public override object Clone()
        {
            return new Show();
        }
    }

    class Hide : GameObjectActionInstence
    {
        public static Hide Create()
        {
            return new Hide();
        }
        public override void Do(object v_target)
        {
            GameObject go = v_target as GameObject;
            if (ClientLog.Assert(go != null, "action's target must be GameObject")) return;
            go.SetActive(false);
        }
        public override string ToString()
        {
            return "HideAction";
        }
        public override object Clone()
        {
            return new Hide();
        }
    }

    class RemoveSelf : GameObjectActionInstence
    {
        public static RemoveSelf Create()
        {
            return new RemoveSelf();
        }
        public override void Do(object v_target)
        {
            GameObject go = v_target as GameObject;
            if (ClientLog.Assert(go != null, "action's target must be GameObject")) return;
            go.transform.parent = null;
            GameObject.Destroy(go);
        }
        public override string ToString()
        {
            return "RemoveSelfAction";
        }
        public override object Clone()
        {
            return new RemoveSelf();
        }
    }




    class CallBack : ActionInstence
    {
        public static CallBack Create(DelCallBack v_fnCallback)
        {
            var rtn = new CallBack();
            rtn.fnCallBack = v_fnCallback;
            return rtn;
        }
        public delegate void DelCallBack(object v_target);
        protected DelCallBack m_fnCallBack;
        public CallBack()
        {
            m_fnCallBack = null;
        }
        protected override void onInitWithTarget(object v_target)
        {
            
        }
        public override void Do(object v_target)
        {
            if (m_fnCallBack != null) m_fnCallBack(v_target);
        }
        public DelCallBack fnCallBack
        {
            get { return m_fnCallBack; }
            set { m_fnCallBack = value; }
        }
        public override object Clone()
        {
            var rtn = new CallBack();
            rtn.fnCallBack = this.m_fnCallBack;
            return rtn;
        }
    }
}
