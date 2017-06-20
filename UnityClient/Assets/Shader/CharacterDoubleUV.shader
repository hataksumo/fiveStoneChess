// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

#warning Upgrade NOTE: unity_Scale shader variable was removed; replaced 'unity_Scale.w' with '1.0'

/*
Author:		pointer3d@gmail.com
History:	May.05.2014 ����
*/

Shader "Custom/CharacterDoubleUV" {
	Properties {
		albedoMap ("Albedo Map (RGB)", 2D) = "white" {}
		fresnelColor("Fresnel Lighting Color", Color) = (0,0,0,1)
		tintColor ("Tint Color", Color) = (0, 0, 0, 0)
		selectColor ("Select Color", Color) = (0, 0, 0, 0)
		cutoff("Alpha cutoff", Range(0, 1)) = 1

		_MixTex("Sprite Texture", 2D) = "white" {}
		uAdd("u offset", Float) = 0
		vAdd("v offset", Float) = 0
		uTile("u tile", Float) = 1
		vTile("v tile", Float) = 1
		cacuType("calcuate type", Float) = 0
		light("light", Float) = 1
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
			float4 tintColor;
			float4 fresnelColor = (1,1,1,1);
			float4 selectColor;
			float4 albedoMap_ST;
			sampler2D albedoMap;
			fixed cutoff;

			float uAdd;
			float vAdd;
			float uTile;
			float vTile;
			float scale;
			float cacuType;
			float light;
			sampler2D _MixTex;

			struct V2P2UV
			{
				//float4 4维向量、POSITION 语义，相当于告诉渲染引擎，这个变量是代表什么含义
				float4 vertex : POSITION;
				//TEXCOORD0 纹理语义
				float2 texCoord : TEXCOORD0;				
				float3 normal : NORMAL;
				float2 texCoord2 : TEXCOORD1;
			};

			struct V2P {
				float4 posProj : SV_POSITION;
				float2 texCoord : TEXCOORD0;
				float2 texCoord2 : TEXCOORD1;
				float3 normal : TEXCOORD2;
				float3 viewDir : TEXCOORD3;
				float3 lightDir : TEXCOORD4;
				float3 ambient : TEXCOORD5;
			};
			V2P VFunc(V2P2UV v) {
				V2P o;
				o.posProj = UnityObjectToClipPos(v.vertex);
				o.texCoord = v.texCoord.xy * albedoMap_ST.xy + albedoMap_ST.zw;
				o.normal = normalize(mul((float3x3)unity_ObjectToWorld, v.normal));
				float3 pos = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.viewDir = normalize(pos - _WorldSpaceCameraPos.xyz);
				o.lightDir = normalize(_WorldSpaceLightPos0.xyz);
				o.ambient = ShadeSH9(float4(o.normal , 1.f));
				o.texCoord2 = v.texCoord2.xy * albedoMap_ST.xy + albedoMap_ST.zw;
				return o;
			}
			float4 PFunc(V2P i) : COLOR {
				float4 albedoTex = tex2D(albedoMap, i.texCoord.xy);				
				float3 albedo = pow(albedoTex.xyz,1);
				float3 normal = normalize(i.normal);
				float diffuse = saturate(dot(normal, -i.viewDir));
				float3 vdirFresnel = normalize(i.viewDir);
				float3 vdir = i.viewDir;
				vdir.y += 0.7;
				vdir = normalize(vdir);
				float back_diffuse = saturate(dot(normal, vdir));
				float ambientRange = 0.8;
				float ambientS = 1.5;
				float cameraS = 1;
				float3 cameraColor = float3(1,1,1);
				float3 diffuseColor = diffuse * cameraColor.xyz * albedo;
				float3 color = 1*back_diffuse+ ambientS/2*(ambientRange +normal.y*(1-ambientRange))*albedo+ cameraS/2*diffuseColor;// +
				float3 fresnel = (1-max( dot( -vdirFresnel, normal ), 0 ))*tintColor.xyz;
				color =  color + fresnelColor/3 + pow(fresnel,1)+selectColor;

				float2 tc = float2((i.texCoord2.x + uAdd)*uTile, (i.texCoord2.y + vAdd)*vTile);
				float4 texMix = tex2D(_MixTex, tc);
				float4 colorMain = float4(color, cutoff);
				float4 colorMix;
				if (cacuType == 0)
				{
					colorMix = lerp(colorMain, texMix, texMix.a) * light;
				}
				else if (cacuType == 1)
				{
					colorMix = lerp(colorMain, texMix, texMix.a) + light;
				}
				else if (cacuType == 2)
				{
					colorMix = (colorMain + texMix) * light;
				}
				else if (cacuType == 3)
				{
					colorMix = (colorMain + texMix) + light;
				}
				return colorMix;
			}

			ENDCG
		}
	}
	Fallback "VertexLit"
}