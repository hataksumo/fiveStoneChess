// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

#warning Upgrade NOTE: unity_Scale shader variable was removed; replaced 'unity_Scale.w' with '1.0'

/*
Author:		pointer3d@gmail.com
History:	May.05.2014 ����
*/

Shader "Custom/Scene2D" {
	Properties {
		albedoMap ("Albedo Map (RGB)", 2D) = "white" {}
	}
	SubShader {
		Tags {
			"RenderType" = "Opaque"
			"Queue" = "Geometry-200"
		}
	    ZWrite Off
	
		Pass {
			Tags {
				"LightMode" = "ForwardBase"
			}

			Blend Off

			CGPROGRAM
			#pragma vertex VFunc
			#pragma fragment PFunc

			#include "UnityCG.cginc"
			float4 _LightColor0;
			float4 albedoMap_ST;
			sampler2D albedoMap;

			struct V2P {
				float4 posProj : SV_POSITION;
				float2 texCoord : TEXCOORD0;
			};
			V2P VFunc(appdata_base v) {
				V2P o;
				o.posProj = UnityObjectToClipPos(v.vertex);
				o.texCoord = v.texcoord.xy * albedoMap_ST.xy + albedoMap_ST.zw;
				return o;
			}
			float4 PFunc(V2P i) : COLOR {
				float4 albedoTex = tex2D(albedoMap, i.texCoord.xy);
				return float4(albedoTex.rgb, 1);
			}

			ENDCG
		}
	}
	Fallback "VertexLit"
}