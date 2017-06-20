Shader "Custom/UIClip"
{
	Properties{
		_Width("Light Width",float) = 0
		_Height("Light Height",float) = 0
		_Alpha("Texture Alpha",float) = 0
		_TargetPosition("Target Position", Vector) = (0, 0, 0, 1)
	}
		SubShader{
		Tags{ "RenderType" = "Transparent" }

		CGPROGRAM
#pragma surface surf Lambert alpha
		struct Input {
			float2 uv_MainTex;
			float2 uv_BumpMap;
			float4 screenPos;
		};
		sampler2D _MainTex;
		sampler2D _BumpMap;
		float4 _TargetPosition;
		float _Alpha;
		float _Width;
		float _Height;

		void surf(Input IN, inout SurfaceOutput o) {
			float3 screenPos = float3(IN.screenPos.x, (IN.screenPos.y - 0.5) * 750 / 1334 + 0.5, 0);
			float3 targetPos = float3(_TargetPosition.x, _TargetPosition.y, 0);
			float ldistance = distance(screenPos, targetPos);
			float width2 = 1.5*_Width;
			if (ldistance < _Width)
			{
				clip(-1);
			}
			else if (ldistance < width2){
				o.Alpha = lerp(_Alpha, 0, (width2 - ldistance) / (0.5*_Width));
			}
			else{
				o.Alpha = _Alpha;
			}
		}
		ENDCG
	}
	Fallback "Diffuse"
}