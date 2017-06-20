// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

#warning Upgrade NOTE: unity_Scale shader variable was removed; replaced 'unity_Scale.w' with '1.0'

/*
Author:		pointer3d@gmail.com
History:	May.05.2014 ����
*/

Shader "Custom/UICharacterSimple" {
	Properties {
		albedoMap ("Albedo Map (RGB)", 2D) = "white" {}
		fresnelColor("Fresnel Lighting Color", Color) = (0,0,0,1)
		tintColor ("Tint Color", Color) = (0, 0, 0, 0)
		selectColor ("Select Color", Color) = (0, 0, 0, 0)
		cutoff("Alpha cutoff", Range(0, 1)) = 1
	}
	SubShader {
		Tags {
			"RenderType" = "Opaque"
			"Queue" = "Geometry"
		}

		LOD 200
		Cull off

		Pass {
			Tags {
				"LightMode" = "ForwardBase"
			}

			CGPROGRAM
			#pragma vertex VFunc
			#pragma fragment PFunc
			#pragma target 3.0
			#include "UnityCG.cginc"
			float4 _LightColor0;
			float4 tintColor;
			float4 fresnelColor = (1,1,1,1);
			float4 selectColor;
			float4 albedoMap_ST;
			sampler2D albedoMap;
			fixed cutoff;

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
			float4 PFunc(V2P i,fixed facing:VFACE) : COLOR{
				float face = facing < 0 ? -1 : 1;
				float4 albedoTex = tex2D(albedoMap, i.texCoord.xy);
				float3 albedo = pow(albedoTex.xyz, 1);
				float3 normal = normalize(i.normal) * face;
				float3 viewDir = i.viewDir;
				viewDir.z += 1.4;
				float diffuse = saturate(dot(normal, -viewDir));
				float3 vdirFresnel = normalize(viewDir);
				float3 vdir = i.viewDir;
				vdir.y += 0.7;
				vdir.z += 0.9;
				vdir = normalize(vdir);
				float back_diffuse = saturate(dot(normal, vdir));
				float ambientRange = 0.8;
				float ambientS = 1.5;
				float cameraS = 1;
				float3 cameraColor = 0.7*float3(1, 1, 1);
				float3 diffuseColor = diffuse * cameraColor.xyz * albedo;
				float3 color = 1 * back_diffuse + ambientS / 2 * (ambientRange + normal.y*(1 - ambientRange))*albedo + cameraS / 2 * diffuseColor;// +
				float3 fresnel = (1 - max(dot(-vdirFresnel, normal), 0))*tintColor.xyz;
				color = color + fresnelColor / 3 + pow(fresnel, 1) + selectColor;
				return float4(color, cutoff);
			}
			ENDCG
		}
	}
	Fallback "VertexLit"
}