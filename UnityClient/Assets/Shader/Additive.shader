// Simplified Additive Particle shader. Differences from regular Additive Particle one:
// - no Tint color
// - no Smooth particle support
// - no AlphaTest
// - no ColorMask

Shader "Custom/Additive" {
	Properties{
		_EmisColor("Emissive Color", Color) = (0, 0, 0, 1)
		_MainTex("Particle Texture", 2D) = "white" {}
	}

		Category{
		Tags{ "Queue" = "Transparent" "IgnoreProjector" = "True" "RenderType" = "Transparent" }
		Blend SrcAlpha OneMinusSrcAlpha
		Cull Off Lighting On ZWrite Off Fog{ Color(0, 0, 0, 0) }

		BindChannels{
			Bind "Color", color
			Bind "Vertex", vertex
			Bind "TexCoord", texcoord
		}

		Material{ Emission[_EmisColor] }
		ColorMaterial AmbientAndDiffuse

		SubShader{
				Pass{
					SetTexture[_MainTex] {
						combine texture * primary
					}
				}
			}
	}
}