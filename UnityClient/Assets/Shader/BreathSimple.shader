// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

#warning Upgrade NOTE: unity_Scale shader variable was removed; replaced 'unity_Scale.w' with '1.0'

/*
Author:		pointer3d@gmail.com
History:	May.05.2014 ����
*/

Shader "Custom/BreathSimple" {
	Properties {
		albedoMap ("Albedo Map (RGB)", 2D) = "white" {}
		breathColor ("Tint Color", Color) = (0.5, 0.5, 0.5, 0.5)
	}
	SubShader {
		Tags {
			"RenderType" = "Opaque"
			"Queue" = "Geometry"
		}

		LOD 200

		Pass {
			Tags {
				"LightMode" = "ForwardBase"
			}

			CGPROGRAM
			#pragma vertex VFunc
			#pragma fragment PFunc

			#include "UnityCG.cginc"
			float4 _LightColor0;
			float4 breathColor;
			float4 albedoMap_ST;
			sampler2D albedoMap;

			struct V2P {
				float4 posProj : SV_POSITION;
				float2 texCoord : TEXCOORD0;
				float3 normal : TEXCOORD1;
				float3 viewDir : TEXCOORD2;
				float3 lightDir : TEXCOORD3;
				float3 ambient : TEXCOORD4;
			};
			V2P VFunc(appdata_base v) {
				V2P o;
				o.posProj = UnityObjectToClipPos(v.vertex);
				o.texCoord = v.texcoord.xy * albedoMap_ST.xy + albedoMap_ST.zw;
				o.normal = normalize(mul((float3x3)unity_ObjectToWorld, v.normal));
				float3 pos = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.viewDir = normalize(pos - _WorldSpaceCameraPos.xyz);
				o.lightDir = normalize(_WorldSpaceLightPos0.xyz);
				o.ambient = ShadeSH9(float4(o.normal , 1.f));
				return o;
			}
			float4 PFunc(V2P i) : COLOR {
				float4 albedoTex = tex2D(albedoMap, i.texCoord.xy);
				float3 albedo = pow(albedoTex.xyz,1);
				float3 diffuseColor = albedo;
				float3 breathColorCal = breathColor.rgb*(saturate(sin(_Time.y*3)))/2;
				float3 color =  breathColorCal+diffuseColor;
				return float4(color, 1.f);
			}

			ENDCG
		}
	}
	Fallback "VertexLit"
}