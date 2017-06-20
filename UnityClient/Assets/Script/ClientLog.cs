using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

static class ClientLog
{
    public static void Error(string v_msg, params object[] v_params)
    {
        Debug.LogError(string.Format(v_msg, v_params));
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPaused = true;
#endif
    }

    public static void Warning(string v_msg, params object[] v_params)
    {
        Debug.LogWarning(string.Format(v_msg, v_params));
    }

    public static void Message(string v_msg, params object[] v_params)
    {
        Debug.Log(string.Format(v_msg, v_params));
    }

    public static void Assert(bool v_condition, string v_msg, params object[] v_params)
    {
        if (!v_condition)
        {
            Error(string.Format(v_msg, v_params));
        } 
    }
}