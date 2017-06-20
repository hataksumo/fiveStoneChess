// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

#warning Upgrade NOTE: unity_Scale shader variable was removed; replaced 'unity_Scale.w' with '1.0'

/*
Author:		pointer3d@gmail.com
History:	May.05.2014 ����
*/

Shader "Custom/CharacterSimpleFresnel" {
	Properties {
		albedoMap ("Albedo Map (RGB)", 2D) = "white" {}
		maskMap ("Mask Map (RGB)", 2D) = "white" {}
		cameraColor ("Camera Lighting Color", Color) = (1, 1, 1)
		cameraS("Camera Lighting S", Range(0,3)) = 1
		fresnelColor("Fresnel Lighting Color", Color) = (1, 1, 1)
		fresnelS("Fresnel Lighting S", Range(0,3)) = 1
		ambientRange("Ambient Lighting Range", Range(0,1)) = 0.5
		ambientS("Ambient Lighting S", Range(0,3)) = 1
		tintColor ("Tint Color", Color) = (0.5, 0.5, 0.5, 0.5)
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

			Blend Off

			CGPROGRAM
			#pragma vertex VFunc
			#pragma fragment PFunc

			#include "UnityCG.cginc"
			float4 _LightColor0;
			float4 cameraColor;
			float4 tintColor;
			float4 backColor;
			float4 fresnelColor;
			float4 albedoMap_ST;
			float backS;
			float fresnelS;
			float ambientS;
			float ambientRange;
			float cameraS;
			sampler2D albedoMap;
			sampler2D maskMap;

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
				float mask = tex2D(maskMap,i.texCoord.xy);
				float3 albedo = pow(albedoTex.xyz,1);
				float3 normal = normalize(i.normal);
				float diffuse = saturate(dot(normal, -i.viewDir));
				float3 vdirFresnel = normalize(i.viewDir);
				float3 vdir = i.viewDir;
				vdir.y += 0.7;
				vdir = normalize(vdir);
				float back_diffuse = saturate(dot(normal, vdir));
				//float rim = saturate(dot(normal, float3(-i.lightDir.x, i.lightDir.y, -i.lightDir.z)) * 4.f) * 2.f;
				//float3 ambientColor = i.ambient ;//* albedo;
				float3 diffuseColor = diffuse * cameraColor.xyz * albedo;
				float3 color = 0.5*back_diffuse+ ambientS/2*(ambientRange +normal.y*(1-ambientRange))*albedo+ cameraS/2*diffuseColor;// +
				float3 fresnel = (1-max( dot( -vdirFresnel, normal ), 0 ))*fresnelS*fresnelColor;
				float viewSpecular = pow(max( dot( -vdirFresnel, normal ), 0 ),30);
				float3 maskColor = float3(1,0,0)*(mask*saturate(sin(_Time.y*3)));
				color =  maskColor+color * tintColor.xyz * 2.f + pow(fresnel,2)+viewSpecular*albedo;
				return float4(color, 1.f);
			}

			ENDCG
		}
	}
	Fallback "VertexLit"
}