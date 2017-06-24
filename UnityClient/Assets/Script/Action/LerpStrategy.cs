using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace CCAction
{
    public interface ILerpStrategyBase
    {
        float getLerpVar(float v_ft);
    }

    public class LinearLerp : ILerpStrategyBase
    {
        float ILerpStrategyBase.getLerpVar(float v_ft)
        {
            return Mathf.Lerp(0, 1, v_ft); 
        }
    }

    public class SquareLerp : ILerpStrategyBase
    {
        float ILerpStrategyBase.getLerpVar(float v_ft)
        {
            float t = Mathf.Lerp(0, 1, v_ft);
            return t * t;
        }
    }

    public class SmoothstepLerp : ILerpStrategyBase
    {
        float ILerpStrategyBase.getLerpVar(float v_ft)
        {
            float t = Mathf.Lerp(0, 1, v_ft * v_ft);
            return Mathf.SmoothStep(0, 1, t);
        }
    }
}
