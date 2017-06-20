// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/ME Alpha Blended" {
Properties {
	_TintColor ("Tint Color", Color) = (0.5,0.5,0.5,0.5)
	_MainTex ("Particle Texture", 2D) = "white" {}
	_InvFade ("Soft Particles Factor", Range(0.01,3.0)) = 1.0
	_TexRotation("Texture Rotation",float)=0
}

Category {
	Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
	Blend SrcAlpha OneMinusSrcAlpha
	ColorMask RGB
	Cull Off Lighting Off ZWrite Off

	SubShader {
		Pass {
		
			CGPROGRAM
// Upgrade NOTE: excluded shader from DX11 and Xbox360; has structs without semantics (struct appdata_t members uv_MainTex)
#pragma exclude_renderers d3d11 xbox360
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_particles
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			sampler2D _MainTex;
			fixed4 _TintColor;
			float _TexRotation;
			
			struct appdata_t {
				
				float4 vertex : POSITION;
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f {
				float4 vertex : SV_POSITION;
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				#ifdef SOFTPARTICLES_ON
				float4 projPos : TEXCOORD2;
				#endif
			};
			
			float4 _MainTex_ST;

			v2f vert (appdata_t v)
			{
				v2f o;
				//float2 uv = v.uv_MainTex;
				//uv = float2(cos(_Rotation)*v.vertex.x - sin(_Rotation)*v.vertex.y, cos(_Rotation)*v.vertex.y + sin(_Rotation)*v.vertex.x);
				o.vertex = UnityObjectToClipPos(v.vertex);
				#ifdef SOFTPARTICLES_ON
				o.projPos = ComputeScreenPos (o.vertex);
				COMPUTE_EYEDEPTH(o.projPos.z);
				#endif
				o.color = v.color;
				o.texcoord = TRANSFORM_TEX(v.texcoord,_MainTex);
				//o.texcoord = float2(cos(180)*o.texcoord.x - sin(180)*o.texcoord.y, cos(180)*o.texcoord.y + sin(180)*o.texcoord.x);
				float rx0 = 0.5;
				float ry0 = 0.5;
				float pi = 3.1415926;
				_TexRotation = _TexRotation * pi / 180;
				o.texcoord = float2((o.texcoord.x - rx0)*cos(_TexRotation) - (o.texcoord.y - ry0)*sin(_TexRotation) + rx0, (o.texcoord.x - rx0)*sin(_TexRotation) + (o.texcoord.y - ry0)*cos(_TexRotation) + ry0);

				//float2 uv = v.texcoord.xy - float2(0.5, 0.5);
				//	uv = float2(uv.x*cos(_TexRotation) - uv.y*sin(_TexRotation),
				//	uv.x*sin(_TexRotation) + uv.y*cos(_TexRotation));
				//uv += float2(0.5, 0.5);
				//o.texcoord = TRANSFORM_TEX(uv, _MainTex);

				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}

			sampler2D_float _CameraDepthTexture;
			float _InvFade;
			
			fixed4 frag (v2f i) : SV_Target
			{
				#ifdef SOFTPARTICLES_ON
				float sceneZ = LinearEyeDepth (SAMPLE_DEPTH_TEXTURE_PROJ(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)));
				float partZ = i.projPos.z;
				float fade = saturate (_InvFade * (sceneZ-partZ));
				i.color.a *= fade;
				#endif
				

				fixed4 col = 2.0f * i.color * _TintColor * tex2D(_MainTex, i.texcoord);
				UNITY_APPLY_FOG(i.fogCoord, col);
				return col;
			}
			ENDCG 
		}
	}	
}
}
