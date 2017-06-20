// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "Custom/TransCharacter" {
	Properties {
		albedoMap ("Albedo Map (RGB)", 2D) = "white" {}
		cameraColor ("Camera Lighting Color", Color) = (1, 1, 1)
		cameraS("Camera Lighting S", Range(0,3)) = 1
		fresnelColor("Fresnel Lighting Color", Color) = (0,0,0,1)
		fresnelS("Fresnel Lighting S", Range(0,3)) = 2
		ambientRange("Ambient Lighting Range", Range(0,1)) = 0.5
		ambientS("Ambient Lighting S", Range(0,3)) = 1
		tintColor ("Tint Color", Color) = (0, 0, 0, 0)
		selectColor ("Select Color", Color) = (0, 0, 0, 0)
		_Cutoff("Alpha cutoff", Range(0, 1)) = 0.5
	}
	SubShader {
		Tags {
			"RenderType" = "Transparent"
			"Queue" = "Transparent"
		}

		LOD 200

		Pass {
			Tags {
				"LightMode" = "ForwardBase"
			}

			//Blend SrcAlpha OneMinusSrcAlpha
			Blend SrcAlpha OneMinusSrcAlpha
			//Blend One One
			Cull back
			zwrite off  //写入的z轴深度关掉 
			//ColorMask 0			
			LOD 200

			CGPROGRAM
			#pragma vertex VFunc
			#pragma fragment PFunc
			#pragma target 3.0
			#include "UnityCG.cginc"
			float4 _LightColor0;
			float4 cameraColor;
			float4 tintColor;
			float4 backColor;
			float4 fresnelColor = (1,1,1,1);
			float4 selectColor;
			float4 albedoMap_ST;
			float backS;
			float ambientS;
			float fresnelS = 1;
			float ambientRange;
			float cameraS;
			sampler2D albedoMap;
			fixed _Cutoff;

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
			float4 PFunc(V2P i,fixed facing:VFACE) : COLOR {
				float face = facing < 0 ? 1 : -1;
				float4 albedoTex = tex2D(albedoMap, i.texCoord.xy);
				float3 albedo = pow(albedoTex.xyz,1);
				float3 normal = face*normalize(i.normal);
				float diffuse = saturate(dot(normal, -i.viewDir));
				float3 vdirFresnel = normalize(i.viewDir);
				float3 vdir = i.viewDir;
				vdir.y += 0.7;
				vdir = normalize(vdir);
				float back_diffuse = saturate(dot(normal, vdir));
				//float rim = saturate(dot(normal, float3(-i.lightDir.x, i.lightDir.y, -i.lightDir.z)) * 4.f) * 2.f;
				//float3 ambientColor = i.ambient ;//* albedo;				
				float3 diffuseColor = diffuse * cameraColor.xyz * albedo;
				float3 color = 1*back_diffuse+ ambientS/2*(ambientRange +normal.y*(1-ambientRange))*albedo+ cameraS/2*diffuseColor;// +
				float3 fresnel = (1-max( dot( -vdirFresnel, normal ), 0 ))*tintColor.xyz;
				color =  color + fresnelColor/3 + pow(fresnel,1)+selectColor;
				float4 fixcolor = float4(color, 0.5f);
				
				return fixcolor;

			}

			ENDCG
		}
	}
	Fallback "VertexLit"
}