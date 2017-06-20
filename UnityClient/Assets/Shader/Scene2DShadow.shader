// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

#warning Upgrade NOTE: unity_Scale shader variable was removed; replaced 'unity_Scale.w' with '1.0'

/*
Author:		pointer3d@gmail.com
History:	May.05.2014 ����
*/

Shader "Custom/Scene2DShadow" {
	Properties
	{
	}
	CGINCLUDE
	#include "UnityCG.cginc"
	#include "AutoLight.cginc"
	#include "Lighting.cginc"
	uniform sampler2D _MainTex;
	ENDCG
	SubShader
	{
	    Tags { 
			"RenderType" = "Opaque"
			"Queue" = "Geometry-100"
	    }
	    ZWrite On
	    Blend SrcAlpha OneMinusSrcAlpha
	    Pass
	    {
	        Tags {"LightMode" = "ForwardBase"}
	        CGPROGRAM
	        #pragma vertex vert
	        #pragma fragment frag
	        #pragma multi_compile_fwdbase
	        struct VSOut
	        {
	            float4 pos        : SV_POSITION;
	            float2 uv        : TEXCOORD1;
	            LIGHTING_COORDS(3,4)
	        };
	        VSOut vert(appdata_tan v)
         	{
				VSOut o;
	            o.pos = UnityObjectToClipPos(v.vertex);
	            o.uv = v.texcoord.xy;
	            TRANSFER_VERTEX_TO_FRAGMENT(o);
	            return o;
	        }
	        float4 frag(VSOut i) : COLOR
	        {
	            float atten = LIGHT_ATTENUATION(i);
	       
	            if (atten>0.5)
	      			atten = 0;
	      		else
	      			atten = 0.55;
	            return float4(0,0,0,atten);
	        }
	        ENDCG
	    }
	} 
	FallBack "Diffuse"
}