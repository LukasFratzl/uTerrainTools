// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "uTerrains_Displacement_Shader"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin][Header(Textures 1)][NoScaleOffset][SingleLineTexture]_Albedo1("Albedo 1", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal1("Normal 1", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion1("Occlusion 1", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Height1("Height 1", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Displacement1("Displacement 1", 2D) = "white" {}
		_NormalStrength1("Normal Strength 1", Range( 0 , 2)) = 1
		_OcclusionStrength1("Occlusion Strength 1", Range( -10 , 10)) = 0.1
		_Tiling1("Tiling 1", Range( 0.01 , 2)) = 0.1
		_Shiny1("Shiny 1", Range( 0 , 10)) = 0.1
		_Smooth1("Smooth 1", Range( 0 , 10)) = 0.1
		_HeightParallax1("Height Parallax 1", Range( 0 , 0.1)) = 0
		_DisplacementStrength1("Displacement Strength 1", Range( -1 , 1)) = 0.1
		[Header(Textures 2)][NoScaleOffset][SingleLineTexture]_Albedo2("Albedo 2", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal2("Normal 2", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion2("Occlusion 2", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Height2("Height 2", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Displacement2("Displacement 2", 2D) = "white" {}
		_NormalStrength2("Normal Strength 2", Range( 0 , 2)) = 1
		_OcclusionStrength2("Occlusion Strength 2", Range( -10 , 10)) = 0.1
		_Tiling2("Tiling 2", Range( 0.01 , 2)) = 0.1
		_Shiny2("Shiny 2", Range( 0 , 10)) = 0.1
		_Smooth2("Smooth 2", Range( 0 , 10)) = 0.1
		_HeightParallax2("Height Parallax 2", Range( 0 , 0.1)) = 0
		_DisplacementStrength2("Displacement Strength 2", Range( -1 , 1)) = 0.1
		[Header(Textures 3)][NoScaleOffset][SingleLineTexture]_Albedo3("Albedo 3", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal3("Normal 3", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion3("Occlusion 3", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Height3("Height 3", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Displacement3("Displacement 3", 2D) = "white" {}
		_NormalStrength3("Normal Strength 3", Range( 0 , 2)) = 1
		_OcclusionStrength3("Occlusion Strength 3", Range( -10 , 10)) = 0.1
		_Tiling3("Tiling 3", Range( 0.01 , 2)) = 0.1
		_Shiny3("Shiny 3", Range( 0 , 10)) = 0.1
		_Smooth3("Smooth 3", Range( 0 , 10)) = 0.1
		_HeightParallax3("Height Parallax 3", Range( 0 , 0.1)) = 0
		_DisplacementStrength3("Displacement Strength 3", Range( -1 , 1)) = 0.1
		[Header(Textures 4)][NoScaleOffset][SingleLineTexture]_Albedo4("Albedo 4", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal4("Normal 4", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion4("Occlusion 4", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Height4("Height 4", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Displacement4("Displacement 4", 2D) = "white" {}
		_NormalStrength4("Normal Strength 4", Range( 0 , 2)) = 1
		_OcclusionStrength4("Occlusion Strength 4", Range( -10 , 10)) = 0.1
		_Tiling4("Tiling 4", Range( 0.01 , 2)) = 0.1
		_Shiny4("Shiny 4", Range( 0 , 10)) = 0.1
		_Smooth4("Smooth 4", Range( 0 , 10)) = 0.1
		_HeightParallax4("Height Parallax 4", Range( 0 , 0.1)) = 0
		_DisplacementStrength4("Displacement Strength 4", Range( -1 , 1)) = 0.1
		[Header(Textures 5)][NoScaleOffset][SingleLineTexture]_Albedo5("Albedo 5", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal5("Normal 5", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion5("Occlusion 5", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Height5("Height 5", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Displacement5("Displacement 5", 2D) = "white" {}
		_NormalStrength5("Normal Strength 5", Range( 0 , 2)) = 1
		_OcclusionStrength5("Occlusion Strength 5", Range( -10 , 10)) = 0.1
		_Tiling5("Tiling 5", Range( 0.01 , 2)) = 0.1
		_Shiny5("Shiny 5", Range( 0 , 10)) = 0.1
		_Smooth5("Smooth 5", Range( 0 , 10)) = 0.1
		_HeightParallax5("Height Parallax 5", Range( 0 , 0.1)) = 0
		_DisplacementStrength5("Displacement Strength 5", Range( -1 , 1)) = 0.1
		[Header(Textures 6)][NoScaleOffset][SingleLineTexture]_Albedo6("Albedo 6", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal6("Normal 6", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion6("Occlusion 6", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Height6("Height 6", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_Displacement6("Displacement 6", 2D) = "white" {}
		_NormalStrength6("Normal Strength 6", Range( 0 , 2)) = 1
		_OcclusionStrength6("Occlusion Strength 6", Range( -10 , 10)) = 0.1
		_Tiling6("Tiling 6", Range( 0.01 , 2)) = 0.1
		_Shiny6("Shiny 6", Range( 0 , 10)) = 0.1
		_Smooth6("Smooth 6", Range( 0 , 10)) = 0.1
		_HeightParallax6("Height Parallax 6", Range( 0 , 0.1)) = 0
		_DisplacementStrength6("Displacement Strength 6", Range( -1 , 1)) = 1
		[Header(Other Parameter)]_Falloff("Fall off", Range( 0 , 4)) = 1.56
		_FadeOffset("Fade Offset", Range( 0 , 10)) = 0.5
		_FadeRange("Fade Range", Range( 0 , 1)) = 0.5
		[ASEEnd]_FadeColor("Fade Color", Color) = (0,0,0,0)
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

		[HideInInspector]_QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector]_QueueControl("_QueueControl", Float) = -1
        [HideInInspector][NoScaleOffset]unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset]unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset]unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		_TessPhongStrength( "Phong Tess Strength", Range( 0, 1 ) ) = 0.5
		_TessValue( "Max Tessellation", Range( 1, 32 ) ) = 16
		_TessMin( "Tess Min Distance", Float ) = 10
		_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		
		
		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" }
		Cull Back
		ZWrite On
		ZTest LEqual
		Offset 0 , 0
		AlphaToMask Off
		
		HLSLINCLUDE
		#pragma target 4.6

		#pragma prefer_hlslcc gles
		#pragma exclude_renderers d3d11_9x 

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS

		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }
			
			Blend One Zero, One Zero
			ColorMask RGBA
			

			HLSLPROGRAM

			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_PHONG_TESSELLATION
			#define _SPECULAR_SETUP 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma multi_compile _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS _ADDITIONAL_OFF
			#pragma multi_compile _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile _ _SHADOWS_SOFT
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			
			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK

			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON

			#pragma multi_compile _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile _ _LIGHT_LAYERS
			
			#pragma multi_compile _ _LIGHT_COOKIES
			#pragma multi_compile _ _CLUSTERED_RENDERING

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_FORWARD

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
			    #define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_SCREEN_POSITION


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 lightmapUVOrVertexSH : TEXCOORD0;
				half4 fogFactorAndVertexLight : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_color : COLOR;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _Tiling1;
			float _NormalStrength4;
			float _NormalStrength5;
			float _NormalStrength6;
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _NormalStrength3;
			float _Shiny6;
			float _Smooth2;
			float _Smooth3;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth1;
			float _NormalStrength2;
			float _NormalStrength1;
			float _FadeRange;
			float _DisplacementStrength1;
			float _Falloff;
			float _Tiling2;
			float _DisplacementStrength2;
			float _Tiling3;
			float _DisplacementStrength3;
			float _Tiling4;
			float _DisplacementStrength4;
			float _Tiling5;
			float _DisplacementStrength5;
			float _Tiling6;
			float _DisplacementStrength6;
			float _HeightParallax1;
			float _HeightParallax2;
			float _HeightParallax3;
			float _HeightParallax4;
			float _HeightParallax5;
			float _HeightParallax6;
			float _FadeOffset;
			float _OcclusionStrength5;
			float _OcclusionStrength6;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Displacement1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Displacement2);
			TEXTURE2D(_Displacement3);
			TEXTURE2D(_Displacement4);
			TEXTURE2D(_Displacement5);
			TEXTURE2D(_Displacement6);
			TEXTURE2D(_Albedo1);
			TEXTURE2D(_Height1);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Height2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Height3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Height4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Height5);
			TEXTURE2D(_Albedo6);
			TEXTURE2D(_Height6);
			TEXTURE2D(_Normal1);
			TEXTURE2D(_Normal2);
			TEXTURE2D(_Normal3);
			TEXTURE2D(_Normal4);
			TEXTURE2D(_Normal5);
			TEXTURE2D(_Normal6);
			TEXTURE2D(_Occlusion1);
			TEXTURE2D(_Occlusion2);
			TEXTURE2D(_Occlusion3);
			TEXTURE2D(_Occlusion4);
			TEXTURE2D(_Occlusion5);
			TEXTURE2D(_Occlusion6);


			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float3 break372 = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float temp_output_118_0_g141 = _DisplacementStrength1;
				float3 unpack104_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_4_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack104_g141.z = lerp( 1, unpack104_g141.z, saturate(temp_output_118_0_g141) );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float3 unpack105_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_5_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack105_g141.z = lerp( 1, unpack105_g141.z, saturate(temp_output_118_0_g141) );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float3 unpack106_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_6_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack106_g141.z = lerp( 1, unpack106_g141.z, saturate(temp_output_118_0_g141) );
				float temp_output_55_0_g141 = v.ase_color.r;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float temp_output_118_0_g142 = _DisplacementStrength2;
				float3 unpack104_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_4_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack104_g142.z = lerp( 1, unpack104_g142.z, saturate(temp_output_118_0_g142) );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float3 unpack105_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_5_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack105_g142.z = lerp( 1, unpack105_g142.z, saturate(temp_output_118_0_g142) );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float3 unpack106_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_6_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack106_g142.z = lerp( 1, unpack106_g142.z, saturate(temp_output_118_0_g142) );
				float temp_output_55_0_g142 = v.ase_color.g;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float temp_output_118_0_g143 = _DisplacementStrength3;
				float3 unpack104_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_4_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack104_g143.z = lerp( 1, unpack104_g143.z, saturate(temp_output_118_0_g143) );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float3 unpack105_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_5_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack105_g143.z = lerp( 1, unpack105_g143.z, saturate(temp_output_118_0_g143) );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float3 unpack106_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_6_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack106_g143.z = lerp( 1, unpack106_g143.z, saturate(temp_output_118_0_g143) );
				float temp_output_55_0_g143 = v.ase_color.b;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float temp_output_118_0_g145 = _DisplacementStrength4;
				float3 unpack104_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_4_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack104_g145.z = lerp( 1, unpack104_g145.z, saturate(temp_output_118_0_g145) );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float3 unpack105_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_5_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack105_g145.z = lerp( 1, unpack105_g145.z, saturate(temp_output_118_0_g145) );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float3 unpack106_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_6_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack106_g145.z = lerp( 1, unpack106_g145.z, saturate(temp_output_118_0_g145) );
				float temp_output_55_0_g145 = v.ase_color.a;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float temp_output_118_0_g146 = _DisplacementStrength5;
				float3 unpack104_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_4_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack104_g146.z = lerp( 1, unpack104_g146.z, saturate(temp_output_118_0_g146) );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float3 unpack105_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_5_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack105_g146.z = lerp( 1, unpack105_g146.z, saturate(temp_output_118_0_g146) );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float3 unpack106_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_6_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack106_g146.z = lerp( 1, unpack106_g146.z, saturate(temp_output_118_0_g146) );
				float temp_output_55_0_g146 = v.texcoord1.x;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float temp_output_118_0_g147 = _DisplacementStrength6;
				float3 unpack104_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_4_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack104_g147.z = lerp( 1, unpack104_g147.z, saturate(temp_output_118_0_g147) );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float3 unpack105_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_5_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack105_g147.z = lerp( 1, unpack105_g147.z, saturate(temp_output_118_0_g147) );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float3 unpack106_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_6_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack106_g147.z = lerp( 1, unpack106_g147.z, saturate(temp_output_118_0_g147) );
				float temp_output_55_0_g147 = v.texcoord1.y;
				
				o.ase_color = v.ase_color;
				o.ase_texcoord8.xy = v.texcoord.xy;
				o.ase_texcoord8.zw = v.texcoord1.xy;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = max( max( max( max( max( ( ( ( ( ( unpack104_g141.r * break54_g141.x ) + ( unpack105_g141.r * break54_g141.y ) ) + ( unpack106_g141.r * break54_g141.z ) ) * v.ase_normal ) * temp_output_55_0_g141 ) , ( ( ( ( ( unpack104_g142.r * break54_g142.x ) + ( unpack105_g142.r * break54_g142.y ) ) + ( unpack106_g142.r * break54_g142.z ) ) * v.ase_normal ) * temp_output_55_0_g142 ) ) , ( ( ( ( ( unpack104_g143.r * break54_g143.x ) + ( unpack105_g143.r * break54_g143.y ) ) + ( unpack106_g143.r * break54_g143.z ) ) * v.ase_normal ) * temp_output_55_0_g143 ) ) , ( ( ( ( ( unpack104_g145.r * break54_g145.x ) + ( unpack105_g145.r * break54_g145.y ) ) + ( unpack106_g145.r * break54_g145.z ) ) * v.ase_normal ) * temp_output_55_0_g145 ) ) , ( ( ( ( ( unpack104_g146.r * break54_g146.x ) + ( unpack105_g146.r * break54_g146.y ) ) + ( unpack106_g146.r * break54_g146.z ) ) * v.ase_normal ) * temp_output_55_0_g146 ) ) , ( ( ( ( ( unpack104_g147.r * break54_g147.x ) + ( unpack105_g147.r * break54_g147.y ) ) + ( unpack106_g147.r * break54_g147.z ) ) * v.ase_normal ) * temp_output_55_0_g147 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 positionVS = TransformWorldToView( positionWS );
				float4 positionCS = TransformWorldToHClip( positionWS );

				VertexNormalInputs normalInput = GetVertexNormalInputs( v.ase_normal, v.ase_tangent );

				o.tSpace0 = float4( normalInput.normalWS, positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, positionWS.z);

				#if defined(LIGHTMAP_ON)
				OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
				o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if !defined(LIGHTMAP_ON)
				OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord;
					o.lightmapUVOrVertexSH.xy = v.texcoord * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( positionWS, normalInput.normalWS );
				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( positionCS.z );
				#else
					half fogFactor = 0;
				#endif
				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
				
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = positionCS;
				o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				
				o.clipPos = positionCS;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				o.screenPos = ComputeScreenPos(positionCS);
				#endif
				return o;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif

			half4 frag ( VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif
				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif
	
				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float temp_output_55_0_g141 = IN.ase_color.r;
				float3 break372 = WorldPosition;
				float3 break602 = sign( WorldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float2 uv_Height131_g141 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g141 = SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, uv_Height131_g141 );
				float temp_output_34_0_g141 = _HeightParallax1;
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * WorldViewDirection.x + tanToWorld1 * WorldViewDirection.y  + tanToWorld2 * WorldViewDirection.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_output_102_0_g141 = ase_tanViewDir;
				float2 Offset11_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_4_0_g141;
				float2 Offset33_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset11_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset11_g141;
				float2 Offset23_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset33_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset33_g141;
				float2 Offset12_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset23_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset23_g141;
				float2 temp_output_126_0_g141 = ddx( Offset12_g141 );
				float2 temp_output_129_0_g141 = ddy( Offset12_g141 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( WorldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float2 Offset16_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_5_0_g141;
				float2 Offset13_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset16_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset16_g141;
				float2 Offset20_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset13_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset13_g141;
				float2 Offset10_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset20_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset20_g141;
				float2 temp_output_127_0_g141 = ddx( Offset10_g141 );
				float2 temp_output_130_0_g141 = ddy( Offset10_g141 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float2 Offset27_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_6_0_g141;
				float2 Offset17_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset27_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset27_g141;
				float2 Offset14_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset17_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset17_g141;
				float2 Offset15_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset14_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset14_g141;
				float2 temp_output_128_0_g141 = ddx( Offset15_g141 );
				float2 temp_output_131_0_g141 = ddy( Offset15_g141 );
				float temp_output_55_0_g142 = IN.ase_color.g;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float2 uv_Height231_g142 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g142 = SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, uv_Height231_g142 );
				float temp_output_34_0_g142 = _HeightParallax2;
				float3 temp_output_102_0_g142 = ase_tanViewDir;
				float2 Offset11_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_4_0_g142;
				float2 Offset33_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset11_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset11_g142;
				float2 Offset23_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset33_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset33_g142;
				float2 Offset12_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset23_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset23_g142;
				float2 temp_output_126_0_g142 = ddx( Offset12_g142 );
				float2 temp_output_129_0_g142 = ddy( Offset12_g142 );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float2 Offset16_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_5_0_g142;
				float2 Offset13_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset16_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset16_g142;
				float2 Offset20_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset13_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset13_g142;
				float2 Offset10_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset20_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset20_g142;
				float2 temp_output_127_0_g142 = ddx( Offset10_g142 );
				float2 temp_output_130_0_g142 = ddy( Offset10_g142 );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float2 Offset27_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_6_0_g142;
				float2 Offset17_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset27_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset27_g142;
				float2 Offset14_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset17_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset17_g142;
				float2 Offset15_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset14_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset14_g142;
				float2 temp_output_128_0_g142 = ddx( Offset15_g142 );
				float2 temp_output_131_0_g142 = ddy( Offset15_g142 );
				float temp_output_55_0_g143 = IN.ase_color.b;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float2 uv_Height331_g143 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g143 = SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, uv_Height331_g143 );
				float temp_output_34_0_g143 = _HeightParallax3;
				float3 temp_output_102_0_g143 = ase_tanViewDir;
				float2 Offset11_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_4_0_g143;
				float2 Offset33_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset11_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset11_g143;
				float2 Offset23_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset33_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset33_g143;
				float2 Offset12_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset23_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset23_g143;
				float2 temp_output_126_0_g143 = ddx( Offset12_g143 );
				float2 temp_output_129_0_g143 = ddy( Offset12_g143 );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float2 Offset16_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_5_0_g143;
				float2 Offset13_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset16_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset16_g143;
				float2 Offset20_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset13_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset13_g143;
				float2 Offset10_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset20_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset20_g143;
				float2 temp_output_127_0_g143 = ddx( Offset10_g143 );
				float2 temp_output_130_0_g143 = ddy( Offset10_g143 );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float2 Offset27_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_6_0_g143;
				float2 Offset17_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset27_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset27_g143;
				float2 Offset14_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset17_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset17_g143;
				float2 Offset15_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset14_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset14_g143;
				float2 temp_output_128_0_g143 = ddx( Offset15_g143 );
				float2 temp_output_131_0_g143 = ddy( Offset15_g143 );
				float temp_output_55_0_g145 = IN.ase_color.a;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float2 uv_Height431_g145 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g145 = SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, uv_Height431_g145 );
				float temp_output_34_0_g145 = _HeightParallax4;
				float3 temp_output_102_0_g145 = ase_tanViewDir;
				float2 Offset11_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_4_0_g145;
				float2 Offset33_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset11_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset11_g145;
				float2 Offset23_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset33_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset33_g145;
				float2 Offset12_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset23_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset23_g145;
				float2 temp_output_126_0_g145 = ddx( Offset12_g145 );
				float2 temp_output_129_0_g145 = ddy( Offset12_g145 );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float2 Offset16_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_5_0_g145;
				float2 Offset13_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset16_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset16_g145;
				float2 Offset20_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset13_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset13_g145;
				float2 Offset10_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset20_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset20_g145;
				float2 temp_output_127_0_g145 = ddx( Offset10_g145 );
				float2 temp_output_130_0_g145 = ddy( Offset10_g145 );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float2 Offset27_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_6_0_g145;
				float2 Offset17_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset27_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset27_g145;
				float2 Offset14_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset17_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset17_g145;
				float2 Offset15_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset14_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset14_g145;
				float2 temp_output_128_0_g145 = ddx( Offset15_g145 );
				float2 temp_output_131_0_g145 = ddy( Offset15_g145 );
				float temp_output_55_0_g146 = IN.ase_texcoord8.zw.x;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float2 uv_Height531_g146 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g146 = SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, uv_Height531_g146 );
				float temp_output_34_0_g146 = _HeightParallax5;
				float3 temp_output_102_0_g146 = ase_tanViewDir;
				float2 Offset11_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_4_0_g146;
				float2 Offset33_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset11_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset11_g146;
				float2 Offset23_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset33_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset33_g146;
				float2 Offset12_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset23_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset23_g146;
				float2 temp_output_126_0_g146 = ddx( Offset12_g146 );
				float2 temp_output_129_0_g146 = ddy( Offset12_g146 );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float2 Offset16_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_5_0_g146;
				float2 Offset13_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset16_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset16_g146;
				float2 Offset20_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset13_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset13_g146;
				float2 Offset10_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset20_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset20_g146;
				float2 temp_output_127_0_g146 = ddx( Offset10_g146 );
				float2 temp_output_130_0_g146 = ddy( Offset10_g146 );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float2 Offset27_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_6_0_g146;
				float2 Offset17_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset27_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset27_g146;
				float2 Offset14_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset17_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset17_g146;
				float2 Offset15_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset14_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset14_g146;
				float2 temp_output_128_0_g146 = ddx( Offset15_g146 );
				float2 temp_output_131_0_g146 = ddy( Offset15_g146 );
				float temp_output_55_0_g147 = IN.ase_texcoord8.zw.y;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float2 uv_Height631_g147 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g147 = SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, uv_Height631_g147 );
				float temp_output_34_0_g147 = _HeightParallax6;
				float3 temp_output_102_0_g147 = ase_tanViewDir;
				float2 Offset11_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_4_0_g147;
				float2 Offset33_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset11_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset11_g147;
				float2 Offset23_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset33_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset33_g147;
				float2 Offset12_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset23_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset23_g147;
				float2 temp_output_126_0_g147 = ddx( Offset12_g147 );
				float2 temp_output_129_0_g147 = ddy( Offset12_g147 );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float2 Offset16_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_5_0_g147;
				float2 Offset13_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset16_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset16_g147;
				float2 Offset20_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset13_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset13_g147;
				float2 Offset10_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset20_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset20_g147;
				float2 temp_output_127_0_g147 = ddx( Offset10_g147 );
				float2 temp_output_130_0_g147 = ddy( Offset10_g147 );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float2 Offset27_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_6_0_g147;
				float2 Offset17_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset27_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset27_g147;
				float2 Offset14_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset17_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset17_g147;
				float2 Offset15_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset14_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset14_g147;
				float2 temp_output_128_0_g147 = ddx( Offset15_g147 );
				float2 temp_output_131_0_g147 = ddy( Offset15_g147 );
				float clampResult1261 = clamp( ( ( ScreenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( temp_output_55_0_g141 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset12_g141, temp_output_126_0_g141, temp_output_129_0_g141 ) * break54_g141.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset10_g141, temp_output_127_0_g141, temp_output_130_0_g141 ) * break54_g141.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset15_g141, temp_output_128_0_g141, temp_output_131_0_g141 ) * break54_g141.z ) ) ) + ( temp_output_55_0_g142 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset12_g142, temp_output_126_0_g142, temp_output_129_0_g142 ) * break54_g142.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset10_g142, temp_output_127_0_g142, temp_output_130_0_g142 ) * break54_g142.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset15_g142, temp_output_128_0_g142, temp_output_131_0_g142 ) * break54_g142.z ) ) ) ) + ( temp_output_55_0_g143 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset12_g143, temp_output_126_0_g143, temp_output_129_0_g143 ) * break54_g143.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset10_g143, temp_output_127_0_g143, temp_output_130_0_g143 ) * break54_g143.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset15_g143, temp_output_128_0_g143, temp_output_131_0_g143 ) * break54_g143.z ) ) ) ) + ( temp_output_55_0_g145 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset12_g145, temp_output_126_0_g145, temp_output_129_0_g145 ) * break54_g145.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset10_g145, temp_output_127_0_g145, temp_output_130_0_g145 ) * break54_g145.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset15_g145, temp_output_128_0_g145, temp_output_131_0_g145 ) * break54_g145.z ) ) ) ) + ( temp_output_55_0_g146 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset12_g146, temp_output_126_0_g146, temp_output_129_0_g146 ) * break54_g146.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset10_g146, temp_output_127_0_g146, temp_output_130_0_g146 ) * break54_g146.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset15_g146, temp_output_128_0_g146, temp_output_131_0_g146 ) * break54_g146.z ) ) ) ) + ( temp_output_55_0_g147 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset12_g147, temp_output_126_0_g147, temp_output_129_0_g147 ) * break54_g147.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset10_g147, temp_output_127_0_g147, temp_output_130_0_g147 ) * break54_g147.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset15_g147, temp_output_128_0_g147, temp_output_131_0_g147 ) * break54_g147.z ) ) ) ) , clampResult1261);
				
				float temp_output_99_0_g141 = _NormalStrength1;
				float3 unpack87_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_point_repeat, Offset12_g141, temp_output_126_0_g141, temp_output_129_0_g141 ), temp_output_99_0_g141 );
				unpack87_g141.z = lerp( 1, unpack87_g141.z, saturate(temp_output_99_0_g141) );
				float3 unpack88_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_point_repeat, Offset10_g141, temp_output_127_0_g141, temp_output_130_0_g141 ), temp_output_99_0_g141 );
				unpack88_g141.z = lerp( 1, unpack88_g141.z, saturate(temp_output_99_0_g141) );
				float3 unpack89_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_point_repeat, Offset15_g141, temp_output_128_0_g141, temp_output_131_0_g141 ), temp_output_99_0_g141 );
				unpack89_g141.z = lerp( 1, unpack89_g141.z, saturate(temp_output_99_0_g141) );
				float temp_output_99_0_g142 = _NormalStrength2;
				float3 unpack87_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_point_repeat, Offset12_g142, temp_output_126_0_g142, temp_output_129_0_g142 ), temp_output_99_0_g142 );
				unpack87_g142.z = lerp( 1, unpack87_g142.z, saturate(temp_output_99_0_g142) );
				float3 unpack88_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_point_repeat, Offset10_g142, temp_output_127_0_g142, temp_output_130_0_g142 ), temp_output_99_0_g142 );
				unpack88_g142.z = lerp( 1, unpack88_g142.z, saturate(temp_output_99_0_g142) );
				float3 unpack89_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_point_repeat, Offset15_g142, temp_output_128_0_g142, temp_output_131_0_g142 ), temp_output_99_0_g142 );
				unpack89_g142.z = lerp( 1, unpack89_g142.z, saturate(temp_output_99_0_g142) );
				float temp_output_99_0_g143 = _NormalStrength3;
				float3 unpack87_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_point_repeat, Offset12_g143, temp_output_126_0_g143, temp_output_129_0_g143 ), temp_output_99_0_g143 );
				unpack87_g143.z = lerp( 1, unpack87_g143.z, saturate(temp_output_99_0_g143) );
				float3 unpack88_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_point_repeat, Offset10_g143, temp_output_127_0_g143, temp_output_130_0_g143 ), temp_output_99_0_g143 );
				unpack88_g143.z = lerp( 1, unpack88_g143.z, saturate(temp_output_99_0_g143) );
				float3 unpack89_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_point_repeat, Offset15_g143, temp_output_128_0_g143, temp_output_131_0_g143 ), temp_output_99_0_g143 );
				unpack89_g143.z = lerp( 1, unpack89_g143.z, saturate(temp_output_99_0_g143) );
				float temp_output_99_0_g145 = _NormalStrength4;
				float3 unpack87_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_point_repeat, Offset12_g145, temp_output_126_0_g145, temp_output_129_0_g145 ), temp_output_99_0_g145 );
				unpack87_g145.z = lerp( 1, unpack87_g145.z, saturate(temp_output_99_0_g145) );
				float3 unpack88_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_point_repeat, Offset10_g145, temp_output_127_0_g145, temp_output_130_0_g145 ), temp_output_99_0_g145 );
				unpack88_g145.z = lerp( 1, unpack88_g145.z, saturate(temp_output_99_0_g145) );
				float3 unpack89_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_point_repeat, Offset15_g145, temp_output_128_0_g145, temp_output_131_0_g145 ), temp_output_99_0_g145 );
				unpack89_g145.z = lerp( 1, unpack89_g145.z, saturate(temp_output_99_0_g145) );
				float temp_output_99_0_g146 = _NormalStrength5;
				float3 unpack87_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_point_repeat, Offset12_g146, temp_output_126_0_g146, temp_output_129_0_g146 ), temp_output_99_0_g146 );
				unpack87_g146.z = lerp( 1, unpack87_g146.z, saturate(temp_output_99_0_g146) );
				float3 unpack88_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_point_repeat, Offset10_g146, temp_output_127_0_g146, temp_output_130_0_g146 ), temp_output_99_0_g146 );
				unpack88_g146.z = lerp( 1, unpack88_g146.z, saturate(temp_output_99_0_g146) );
				float3 unpack89_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_point_repeat, Offset15_g146, temp_output_128_0_g146, temp_output_131_0_g146 ), temp_output_99_0_g146 );
				unpack89_g146.z = lerp( 1, unpack89_g146.z, saturate(temp_output_99_0_g146) );
				float temp_output_99_0_g147 = _NormalStrength6;
				float3 unpack87_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_point_repeat, Offset12_g147, temp_output_126_0_g147, temp_output_129_0_g147 ), temp_output_99_0_g147 );
				unpack87_g147.z = lerp( 1, unpack87_g147.z, saturate(temp_output_99_0_g147) );
				float3 unpack88_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_point_repeat, Offset10_g147, temp_output_127_0_g147, temp_output_130_0_g147 ), temp_output_99_0_g147 );
				unpack88_g147.z = lerp( 1, unpack88_g147.z, saturate(temp_output_99_0_g147) );
				float3 unpack89_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_point_repeat, Offset15_g147, temp_output_128_0_g147, temp_output_131_0_g147 ), temp_output_99_0_g147 );
				unpack89_g147.z = lerp( 1, unpack89_g147.z, saturate(temp_output_99_0_g147) );
				
				float temp_output_100_0_g141 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_point_repeat, Offset12_g141, temp_output_126_0_g141, temp_output_129_0_g141 ).r * break54_g141.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_point_repeat, Offset10_g141, temp_output_127_0_g141, temp_output_130_0_g141 ).r * break54_g141.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_point_repeat, Offset15_g141, temp_output_128_0_g141, temp_output_131_0_g141 ).r * break54_g141.z ) ) * temp_output_55_0_g141 );
				float temp_output_100_0_g142 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_point_repeat, Offset12_g142, temp_output_126_0_g142, temp_output_129_0_g142 ).r * break54_g142.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_point_repeat, Offset10_g142, temp_output_127_0_g142, temp_output_130_0_g142 ).r * break54_g142.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_point_repeat, Offset15_g142, temp_output_128_0_g142, temp_output_131_0_g142 ).r * break54_g142.z ) ) * temp_output_55_0_g142 );
				float temp_output_100_0_g143 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_point_repeat, Offset12_g143, temp_output_126_0_g143, temp_output_129_0_g143 ).r * break54_g143.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_point_repeat, Offset10_g143, temp_output_127_0_g143, temp_output_130_0_g143 ).r * break54_g143.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_point_repeat, Offset15_g143, temp_output_128_0_g143, temp_output_131_0_g143 ).r * break54_g143.z ) ) * temp_output_55_0_g143 );
				float temp_output_100_0_g145 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_point_repeat, Offset12_g145, temp_output_126_0_g145, temp_output_129_0_g145 ).r * break54_g145.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_point_repeat, Offset10_g145, temp_output_127_0_g145, temp_output_130_0_g145 ).r * break54_g145.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_point_repeat, Offset15_g145, temp_output_128_0_g145, temp_output_131_0_g145 ).r * break54_g145.z ) ) * temp_output_55_0_g145 );
				float temp_output_100_0_g146 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_point_repeat, Offset12_g146, temp_output_126_0_g146, temp_output_129_0_g146 ).r * break54_g146.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_point_repeat, Offset10_g146, temp_output_127_0_g146, temp_output_130_0_g146 ).r * break54_g146.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_point_repeat, Offset15_g146, temp_output_128_0_g146, temp_output_131_0_g146 ).r * break54_g146.z ) ) * temp_output_55_0_g146 );
				float temp_output_100_0_g147 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_point_repeat, Offset12_g147, temp_output_126_0_g147, temp_output_129_0_g147 ).r * break54_g147.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_point_repeat, Offset10_g147, temp_output_127_0_g147, temp_output_130_0_g147 ).r * break54_g147.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_point_repeat, Offset15_g147, temp_output_128_0_g147, temp_output_131_0_g147 ).r * break54_g147.z ) ) * temp_output_55_0_g147 );
				half3 temp_cast_2 = (( ( ( ( ( ( _Shiny1 * temp_output_100_0_g141 ) + ( _Shiny2 * temp_output_100_0_g142 ) ) + ( _Shiny3 * temp_output_100_0_g143 ) ) + ( _Shiny4 * temp_output_100_0_g145 ) ) + ( _Shiny5 * temp_output_100_0_g146 ) ) + ( _Shiny6 * temp_output_100_0_g147 ) )).xxx;
				
				float3 Albedo = lerpResult1262.rgb;
				float3 Normal = ( ( ( ( ( ( temp_output_55_0_g141 * ( ( ( unpack87_g141 * break54_g141.x ) + ( unpack88_g141 * break54_g141.y ) ) + ( unpack89_g141 * break54_g141.z ) ) ) + ( temp_output_55_0_g142 * ( ( ( unpack87_g142 * break54_g142.x ) + ( unpack88_g142 * break54_g142.y ) ) + ( unpack89_g142 * break54_g142.z ) ) ) ) + ( temp_output_55_0_g143 * ( ( ( unpack87_g143 * break54_g143.x ) + ( unpack88_g143 * break54_g143.y ) ) + ( unpack89_g143 * break54_g143.z ) ) ) ) + ( temp_output_55_0_g145 * ( ( ( unpack87_g145 * break54_g145.x ) + ( unpack88_g145 * break54_g145.y ) ) + ( unpack89_g145 * break54_g145.z ) ) ) ) + ( temp_output_55_0_g146 * ( ( ( unpack87_g146 * break54_g146.x ) + ( unpack88_g146 * break54_g146.y ) ) + ( unpack89_g146 * break54_g146.z ) ) ) ) + ( temp_output_55_0_g147 * ( ( ( unpack87_g147 * break54_g147.x ) + ( unpack88_g147 * break54_g147.y ) ) + ( unpack89_g147 * break54_g147.z ) ) ) );
				float3 Emission = 0;
				float3 Specular = temp_cast_2;
				float Metallic = 0;
				float Smoothness = ( ( ( ( ( ( _Smooth1 * temp_output_100_0_g141 ) + ( _Smooth2 * temp_output_100_0_g142 ) ) + ( _Smooth3 * temp_output_100_0_g143 ) ) + ( _Smooth4 * temp_output_100_0_g145 ) ) + ( _Smooth5 * temp_output_100_0_g146 ) ) + ( _Smooth6 * temp_output_100_0_g147 ) );
				float Occlusion = ( ( ( ( ( ( _OcclusionStrength1 * temp_output_100_0_g141 ) + ( _OcclusionStrength2 * temp_output_100_0_g142 ) ) + ( _OcclusionStrength3 * temp_output_100_0_g143 ) ) + ( _OcclusionStrength4 * temp_output_100_0_g145 ) ) + ( _OcclusionStrength5 * temp_output_100_0_g146 ) ) + ( _OcclusionStrength6 * temp_output_100_0_g147 ) );
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif
				
				#ifdef _CLEARCOAT
				float CoatMask = 0;
				float CoatSmoothness = 0;
				#endif


				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.viewDirectionWS = WorldViewDirection;
				

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
					inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
					inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
					inputData.normalWS = Normal;
					#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					inputData.shadowCoord = ShadowCoords;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					inputData.shadowCoord = TransformWorldToShadowCoord(inputData.positionWS);
				#else
					inputData.shadowCoord = float4(0, 0, 0, 0);
				#endif


				#ifdef ASE_FOG
					inputData.fogCoord = IN.fogFactorAndVertexLight.x;
				#endif

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;
				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
				inputData.bakedGI = SAMPLE_GI(IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
				#else
				inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
				#endif

				#ifdef _ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif
				
				inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.clipPos);
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
					#endif

					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				SurfaceData surfaceData;
				surfaceData.albedo              = Albedo;
				surfaceData.metallic            = saturate(Metallic);
				surfaceData.specular            = Specular;
				surfaceData.smoothness          = saturate(Smoothness),
				surfaceData.occlusion           = Occlusion,
				surfaceData.emission            = Emission,
				surfaceData.alpha               = saturate(Alpha);
				surfaceData.normalTS            = Normal;
				surfaceData.clearCoatMask       = 0;
				surfaceData.clearCoatSmoothness = 1;


				#ifdef _CLEARCOAT
					surfaceData.clearCoatMask       = saturate(CoatMask);
					surfaceData.clearCoatSmoothness = saturate(CoatSmoothness);
				#endif

				#ifdef _DBUFFER
					ApplyDecalToSurfaceData(IN.clipPos, surfaceData, inputData);
				#endif

				half4 color = UniversalFragmentPBR( inputData, surfaceData);

				#ifdef _TRANSMISSION_ASE
				{
					float shadow = _TransmissionShadow;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );
					half3 mainTransmission = max(0 , -dot(inputData.normalWS, mainLight.direction)) * mainAtten * Transmission;
					color.rgb += Albedo * mainTransmission;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 transmission = max(0 , -dot(inputData.normalWS, light.direction)) * atten * Transmission;
							color.rgb += Albedo * transmission;
						}
					#endif
				}
				#endif

				#ifdef _TRANSLUCENCY_ASE
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );

					half3 mainLightDir = mainLight.direction + inputData.normalWS * normal;
					half mainVdotL = pow( saturate( dot( inputData.viewDirectionWS, -mainLightDir ) ), scattering );
					half3 mainTranslucency = mainAtten * ( mainVdotL * direct + inputData.bakedGI * ambient ) * Translucency;
					color.rgb += Albedo * mainTranslucency * strength;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 lightDir = light.direction + inputData.normalWS * normal;
							half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );
							half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;
							color.rgb += Albedo * translucency * strength;
						}
					#endif
				}
				#endif

				#ifdef _REFRACTION_ASE
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( WorldNormal,0 ) ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return color;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM
			
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_PHONG_TESSELLATION
			#define _SPECULAR_SETUP 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#pragma multi_compile _ _CASTING_PUNCTUAL_LIGHT_SHADOW

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_NORMAL


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _Tiling1;
			float _NormalStrength4;
			float _NormalStrength5;
			float _NormalStrength6;
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _NormalStrength3;
			float _Shiny6;
			float _Smooth2;
			float _Smooth3;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth1;
			float _NormalStrength2;
			float _NormalStrength1;
			float _FadeRange;
			float _DisplacementStrength1;
			float _Falloff;
			float _Tiling2;
			float _DisplacementStrength2;
			float _Tiling3;
			float _DisplacementStrength3;
			float _Tiling4;
			float _DisplacementStrength4;
			float _Tiling5;
			float _DisplacementStrength5;
			float _Tiling6;
			float _DisplacementStrength6;
			float _HeightParallax1;
			float _HeightParallax2;
			float _HeightParallax3;
			float _HeightParallax4;
			float _HeightParallax5;
			float _HeightParallax6;
			float _FadeOffset;
			float _OcclusionStrength5;
			float _OcclusionStrength6;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Displacement1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Displacement2);
			TEXTURE2D(_Displacement3);
			TEXTURE2D(_Displacement4);
			TEXTURE2D(_Displacement5);
			TEXTURE2D(_Displacement6);


			
			float3 _LightDirection;
			float3 _LightPosition;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float3 break372 = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float temp_output_118_0_g141 = _DisplacementStrength1;
				float3 unpack104_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_4_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack104_g141.z = lerp( 1, unpack104_g141.z, saturate(temp_output_118_0_g141) );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float3 unpack105_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_5_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack105_g141.z = lerp( 1, unpack105_g141.z, saturate(temp_output_118_0_g141) );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float3 unpack106_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_6_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack106_g141.z = lerp( 1, unpack106_g141.z, saturate(temp_output_118_0_g141) );
				float temp_output_55_0_g141 = v.ase_color.r;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float temp_output_118_0_g142 = _DisplacementStrength2;
				float3 unpack104_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_4_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack104_g142.z = lerp( 1, unpack104_g142.z, saturate(temp_output_118_0_g142) );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float3 unpack105_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_5_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack105_g142.z = lerp( 1, unpack105_g142.z, saturate(temp_output_118_0_g142) );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float3 unpack106_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_6_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack106_g142.z = lerp( 1, unpack106_g142.z, saturate(temp_output_118_0_g142) );
				float temp_output_55_0_g142 = v.ase_color.g;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float temp_output_118_0_g143 = _DisplacementStrength3;
				float3 unpack104_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_4_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack104_g143.z = lerp( 1, unpack104_g143.z, saturate(temp_output_118_0_g143) );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float3 unpack105_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_5_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack105_g143.z = lerp( 1, unpack105_g143.z, saturate(temp_output_118_0_g143) );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float3 unpack106_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_6_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack106_g143.z = lerp( 1, unpack106_g143.z, saturate(temp_output_118_0_g143) );
				float temp_output_55_0_g143 = v.ase_color.b;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float temp_output_118_0_g145 = _DisplacementStrength4;
				float3 unpack104_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_4_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack104_g145.z = lerp( 1, unpack104_g145.z, saturate(temp_output_118_0_g145) );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float3 unpack105_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_5_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack105_g145.z = lerp( 1, unpack105_g145.z, saturate(temp_output_118_0_g145) );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float3 unpack106_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_6_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack106_g145.z = lerp( 1, unpack106_g145.z, saturate(temp_output_118_0_g145) );
				float temp_output_55_0_g145 = v.ase_color.a;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float temp_output_118_0_g146 = _DisplacementStrength5;
				float3 unpack104_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_4_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack104_g146.z = lerp( 1, unpack104_g146.z, saturate(temp_output_118_0_g146) );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float3 unpack105_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_5_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack105_g146.z = lerp( 1, unpack105_g146.z, saturate(temp_output_118_0_g146) );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float3 unpack106_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_6_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack106_g146.z = lerp( 1, unpack106_g146.z, saturate(temp_output_118_0_g146) );
				float temp_output_55_0_g146 = v.ase_texcoord1.x;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float temp_output_118_0_g147 = _DisplacementStrength6;
				float3 unpack104_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_4_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack104_g147.z = lerp( 1, unpack104_g147.z, saturate(temp_output_118_0_g147) );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float3 unpack105_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_5_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack105_g147.z = lerp( 1, unpack105_g147.z, saturate(temp_output_118_0_g147) );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float3 unpack106_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_6_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack106_g147.z = lerp( 1, unpack106_g147.z, saturate(temp_output_118_0_g147) );
				float temp_output_55_0_g147 = v.ase_texcoord1.y;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = max( max( max( max( max( ( ( ( ( ( unpack104_g141.r * break54_g141.x ) + ( unpack105_g141.r * break54_g141.y ) ) + ( unpack106_g141.r * break54_g141.z ) ) * v.ase_normal ) * temp_output_55_0_g141 ) , ( ( ( ( ( unpack104_g142.r * break54_g142.x ) + ( unpack105_g142.r * break54_g142.y ) ) + ( unpack106_g142.r * break54_g142.z ) ) * v.ase_normal ) * temp_output_55_0_g142 ) ) , ( ( ( ( ( unpack104_g143.r * break54_g143.x ) + ( unpack105_g143.r * break54_g143.y ) ) + ( unpack106_g143.r * break54_g143.z ) ) * v.ase_normal ) * temp_output_55_0_g143 ) ) , ( ( ( ( ( unpack104_g145.r * break54_g145.x ) + ( unpack105_g145.r * break54_g145.y ) ) + ( unpack106_g145.r * break54_g145.z ) ) * v.ase_normal ) * temp_output_55_0_g145 ) ) , ( ( ( ( ( unpack104_g146.r * break54_g146.x ) + ( unpack105_g146.r * break54_g146.y ) ) + ( unpack106_g146.r * break54_g146.z ) ) * v.ase_normal ) * temp_output_55_0_g146 ) ) , ( ( ( ( ( unpack104_g147.r * break54_g147.x ) + ( unpack105_g147.r * break54_g147.y ) ) + ( unpack106_g147.r * break54_g147.z ) ) * v.ase_normal ) * temp_output_55_0_g147 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif
				float3 normalWS = TransformObjectToWorldDir(v.ase_normal);


			#if _CASTING_PUNCTUAL_LIGHT_SHADOW
				float3 lightDirectionWS = normalize(_LightPosition - positionWS);
			#else
				float3 lightDirectionWS = _LightDirection;
			#endif

				float4 clipPos = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));
			
			#if UNITY_REVERSED_Z
				clipPos.z = min(clipPos.z, UNITY_NEAR_CLIP_VALUE);
			#else
				clipPos.z = max(clipPos.z, UNITY_NEAR_CLIP_VALUE);
			#endif


				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = clipPos;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_color = v.ase_color;
				o.ase_texcoord1 = v.ase_texcoord1;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif

			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );
				
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif
				return 0;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM
			
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_PHONG_TESSELLATION
			#define _SPECULAR_SETUP 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_DEPTHONLY
        
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_NORMAL


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _Tiling1;
			float _NormalStrength4;
			float _NormalStrength5;
			float _NormalStrength6;
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _NormalStrength3;
			float _Shiny6;
			float _Smooth2;
			float _Smooth3;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth1;
			float _NormalStrength2;
			float _NormalStrength1;
			float _FadeRange;
			float _DisplacementStrength1;
			float _Falloff;
			float _Tiling2;
			float _DisplacementStrength2;
			float _Tiling3;
			float _DisplacementStrength3;
			float _Tiling4;
			float _DisplacementStrength4;
			float _Tiling5;
			float _DisplacementStrength5;
			float _Tiling6;
			float _DisplacementStrength6;
			float _HeightParallax1;
			float _HeightParallax2;
			float _HeightParallax3;
			float _HeightParallax4;
			float _HeightParallax5;
			float _HeightParallax6;
			float _FadeOffset;
			float _OcclusionStrength5;
			float _OcclusionStrength6;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Displacement1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Displacement2);
			TEXTURE2D(_Displacement3);
			TEXTURE2D(_Displacement4);
			TEXTURE2D(_Displacement5);
			TEXTURE2D(_Displacement6);


			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float3 break372 = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float temp_output_118_0_g141 = _DisplacementStrength1;
				float3 unpack104_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_4_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack104_g141.z = lerp( 1, unpack104_g141.z, saturate(temp_output_118_0_g141) );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float3 unpack105_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_5_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack105_g141.z = lerp( 1, unpack105_g141.z, saturate(temp_output_118_0_g141) );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float3 unpack106_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_6_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack106_g141.z = lerp( 1, unpack106_g141.z, saturate(temp_output_118_0_g141) );
				float temp_output_55_0_g141 = v.ase_color.r;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float temp_output_118_0_g142 = _DisplacementStrength2;
				float3 unpack104_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_4_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack104_g142.z = lerp( 1, unpack104_g142.z, saturate(temp_output_118_0_g142) );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float3 unpack105_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_5_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack105_g142.z = lerp( 1, unpack105_g142.z, saturate(temp_output_118_0_g142) );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float3 unpack106_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_6_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack106_g142.z = lerp( 1, unpack106_g142.z, saturate(temp_output_118_0_g142) );
				float temp_output_55_0_g142 = v.ase_color.g;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float temp_output_118_0_g143 = _DisplacementStrength3;
				float3 unpack104_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_4_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack104_g143.z = lerp( 1, unpack104_g143.z, saturate(temp_output_118_0_g143) );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float3 unpack105_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_5_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack105_g143.z = lerp( 1, unpack105_g143.z, saturate(temp_output_118_0_g143) );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float3 unpack106_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_6_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack106_g143.z = lerp( 1, unpack106_g143.z, saturate(temp_output_118_0_g143) );
				float temp_output_55_0_g143 = v.ase_color.b;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float temp_output_118_0_g145 = _DisplacementStrength4;
				float3 unpack104_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_4_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack104_g145.z = lerp( 1, unpack104_g145.z, saturate(temp_output_118_0_g145) );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float3 unpack105_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_5_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack105_g145.z = lerp( 1, unpack105_g145.z, saturate(temp_output_118_0_g145) );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float3 unpack106_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_6_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack106_g145.z = lerp( 1, unpack106_g145.z, saturate(temp_output_118_0_g145) );
				float temp_output_55_0_g145 = v.ase_color.a;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float temp_output_118_0_g146 = _DisplacementStrength5;
				float3 unpack104_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_4_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack104_g146.z = lerp( 1, unpack104_g146.z, saturate(temp_output_118_0_g146) );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float3 unpack105_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_5_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack105_g146.z = lerp( 1, unpack105_g146.z, saturate(temp_output_118_0_g146) );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float3 unpack106_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_6_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack106_g146.z = lerp( 1, unpack106_g146.z, saturate(temp_output_118_0_g146) );
				float temp_output_55_0_g146 = v.ase_texcoord1.x;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float temp_output_118_0_g147 = _DisplacementStrength6;
				float3 unpack104_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_4_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack104_g147.z = lerp( 1, unpack104_g147.z, saturate(temp_output_118_0_g147) );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float3 unpack105_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_5_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack105_g147.z = lerp( 1, unpack105_g147.z, saturate(temp_output_118_0_g147) );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float3 unpack106_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_6_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack106_g147.z = lerp( 1, unpack106_g147.z, saturate(temp_output_118_0_g147) );
				float temp_output_55_0_g147 = v.ase_texcoord1.y;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = max( max( max( max( max( ( ( ( ( ( unpack104_g141.r * break54_g141.x ) + ( unpack105_g141.r * break54_g141.y ) ) + ( unpack106_g141.r * break54_g141.z ) ) * v.ase_normal ) * temp_output_55_0_g141 ) , ( ( ( ( ( unpack104_g142.r * break54_g142.x ) + ( unpack105_g142.r * break54_g142.y ) ) + ( unpack106_g142.r * break54_g142.z ) ) * v.ase_normal ) * temp_output_55_0_g142 ) ) , ( ( ( ( ( unpack104_g143.r * break54_g143.x ) + ( unpack105_g143.r * break54_g143.y ) ) + ( unpack106_g143.r * break54_g143.z ) ) * v.ase_normal ) * temp_output_55_0_g143 ) ) , ( ( ( ( ( unpack104_g145.r * break54_g145.x ) + ( unpack105_g145.r * break54_g145.y ) ) + ( unpack106_g145.r * break54_g145.z ) ) * v.ase_normal ) * temp_output_55_0_g145 ) ) , ( ( ( ( ( unpack104_g146.r * break54_g146.x ) + ( unpack105_g146.r * break54_g146.y ) ) + ( unpack106_g146.r * break54_g146.z ) ) * v.ase_normal ) * temp_output_55_0_g146 ) ) , ( ( ( ( ( unpack104_g147.r * break54_g147.x ) + ( unpack105_g147.r * break54_g147.y ) ) + ( unpack106_g147.r * break54_g147.z ) ) * v.ase_normal ) * temp_output_55_0_g147 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;
				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_color = v.ase_color;
				o.ase_texcoord1 = v.ase_texcoord1;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif
			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				#ifdef ASE_DEPTH_WRITE_ON
				outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}
		
		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_PHONG_TESSELLATION
			#define _SPECULAR_SETUP 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#pragma shader_feature _ EDITOR_VISUALIZATION

			#define SHADERPASS SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_COLOR


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef EDITOR_VISUALIZATION
				float4 VizUV : TEXCOORD2;
				float4 LightCoord : TEXCOORD3;
				#endif
				float4 ase_color : COLOR;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _Tiling1;
			float _NormalStrength4;
			float _NormalStrength5;
			float _NormalStrength6;
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _NormalStrength3;
			float _Shiny6;
			float _Smooth2;
			float _Smooth3;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth1;
			float _NormalStrength2;
			float _NormalStrength1;
			float _FadeRange;
			float _DisplacementStrength1;
			float _Falloff;
			float _Tiling2;
			float _DisplacementStrength2;
			float _Tiling3;
			float _DisplacementStrength3;
			float _Tiling4;
			float _DisplacementStrength4;
			float _Tiling5;
			float _DisplacementStrength5;
			float _Tiling6;
			float _DisplacementStrength6;
			float _HeightParallax1;
			float _HeightParallax2;
			float _HeightParallax3;
			float _HeightParallax4;
			float _HeightParallax5;
			float _HeightParallax6;
			float _FadeOffset;
			float _OcclusionStrength5;
			float _OcclusionStrength6;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Displacement1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Displacement2);
			TEXTURE2D(_Displacement3);
			TEXTURE2D(_Displacement4);
			TEXTURE2D(_Displacement5);
			TEXTURE2D(_Displacement6);
			TEXTURE2D(_Albedo1);
			TEXTURE2D(_Height1);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Height2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Height3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Height4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Height5);
			TEXTURE2D(_Albedo6);
			TEXTURE2D(_Height6);


			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float3 break372 = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float temp_output_118_0_g141 = _DisplacementStrength1;
				float3 unpack104_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_4_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack104_g141.z = lerp( 1, unpack104_g141.z, saturate(temp_output_118_0_g141) );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float3 unpack105_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_5_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack105_g141.z = lerp( 1, unpack105_g141.z, saturate(temp_output_118_0_g141) );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float3 unpack106_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_6_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack106_g141.z = lerp( 1, unpack106_g141.z, saturate(temp_output_118_0_g141) );
				float temp_output_55_0_g141 = v.ase_color.r;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float temp_output_118_0_g142 = _DisplacementStrength2;
				float3 unpack104_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_4_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack104_g142.z = lerp( 1, unpack104_g142.z, saturate(temp_output_118_0_g142) );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float3 unpack105_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_5_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack105_g142.z = lerp( 1, unpack105_g142.z, saturate(temp_output_118_0_g142) );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float3 unpack106_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_6_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack106_g142.z = lerp( 1, unpack106_g142.z, saturate(temp_output_118_0_g142) );
				float temp_output_55_0_g142 = v.ase_color.g;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float temp_output_118_0_g143 = _DisplacementStrength3;
				float3 unpack104_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_4_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack104_g143.z = lerp( 1, unpack104_g143.z, saturate(temp_output_118_0_g143) );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float3 unpack105_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_5_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack105_g143.z = lerp( 1, unpack105_g143.z, saturate(temp_output_118_0_g143) );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float3 unpack106_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_6_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack106_g143.z = lerp( 1, unpack106_g143.z, saturate(temp_output_118_0_g143) );
				float temp_output_55_0_g143 = v.ase_color.b;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float temp_output_118_0_g145 = _DisplacementStrength4;
				float3 unpack104_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_4_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack104_g145.z = lerp( 1, unpack104_g145.z, saturate(temp_output_118_0_g145) );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float3 unpack105_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_5_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack105_g145.z = lerp( 1, unpack105_g145.z, saturate(temp_output_118_0_g145) );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float3 unpack106_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_6_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack106_g145.z = lerp( 1, unpack106_g145.z, saturate(temp_output_118_0_g145) );
				float temp_output_55_0_g145 = v.ase_color.a;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float temp_output_118_0_g146 = _DisplacementStrength5;
				float3 unpack104_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_4_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack104_g146.z = lerp( 1, unpack104_g146.z, saturate(temp_output_118_0_g146) );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float3 unpack105_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_5_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack105_g146.z = lerp( 1, unpack105_g146.z, saturate(temp_output_118_0_g146) );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float3 unpack106_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_6_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack106_g146.z = lerp( 1, unpack106_g146.z, saturate(temp_output_118_0_g146) );
				float temp_output_55_0_g146 = v.texcoord1.x;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float temp_output_118_0_g147 = _DisplacementStrength6;
				float3 unpack104_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_4_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack104_g147.z = lerp( 1, unpack104_g147.z, saturate(temp_output_118_0_g147) );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float3 unpack105_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_5_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack105_g147.z = lerp( 1, unpack105_g147.z, saturate(temp_output_118_0_g147) );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float3 unpack106_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_6_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack106_g147.z = lerp( 1, unpack106_g147.z, saturate(temp_output_118_0_g147) );
				float temp_output_55_0_g147 = v.texcoord1.y;
				
				o.ase_texcoord4.xyz = ase_worldNormal;
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				o.ase_texcoord6.xyz = ase_worldTangent;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord7.xyz = ase_worldBitangent;
				float4 ase_clipPos = TransformObjectToHClip((v.vertex).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord8 = screenPos;
				
				o.ase_color = v.ase_color;
				o.ase_texcoord5.xy = v.texcoord0.xy;
				o.ase_texcoord5.zw = v.texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = max( max( max( max( max( ( ( ( ( ( unpack104_g141.r * break54_g141.x ) + ( unpack105_g141.r * break54_g141.y ) ) + ( unpack106_g141.r * break54_g141.z ) ) * v.ase_normal ) * temp_output_55_0_g141 ) , ( ( ( ( ( unpack104_g142.r * break54_g142.x ) + ( unpack105_g142.r * break54_g142.y ) ) + ( unpack106_g142.r * break54_g142.z ) ) * v.ase_normal ) * temp_output_55_0_g142 ) ) , ( ( ( ( ( unpack104_g143.r * break54_g143.x ) + ( unpack105_g143.r * break54_g143.y ) ) + ( unpack106_g143.r * break54_g143.z ) ) * v.ase_normal ) * temp_output_55_0_g143 ) ) , ( ( ( ( ( unpack104_g145.r * break54_g145.x ) + ( unpack105_g145.r * break54_g145.y ) ) + ( unpack106_g145.r * break54_g145.z ) ) * v.ase_normal ) * temp_output_55_0_g145 ) ) , ( ( ( ( ( unpack104_g146.r * break54_g146.x ) + ( unpack105_g146.r * break54_g146.y ) ) + ( unpack106_g146.r * break54_g146.z ) ) * v.ase_normal ) * temp_output_55_0_g146 ) ) , ( ( ( ( ( unpack104_g147.r * break54_g147.x ) + ( unpack105_g147.r * break54_g147.y ) ) + ( unpack106_g147.r * break54_g147.z ) ) * v.ase_normal ) * temp_output_55_0_g147 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				o.clipPos = MetaVertexPosition( v.vertex, v.texcoord1.xy, v.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );

			#ifdef EDITOR_VISUALIZATION
				float2 VizUV = 0;
				float4 LightCoord = 0;
				UnityEditorVizData(v.vertex.xyz, v.texcoord0.xy, v.texcoord1.xy, v.texcoord2.xy, VizUV, LightCoord);
				o.VizUV = float4(VizUV, 0, 0);
				o.LightCoord = LightCoord;
			#endif

			#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = o.clipPos;
				o.shadowCoord = GetShadowCoord( vertexInput );
			#endif
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.texcoord0 = v.texcoord0;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_color = v.ase_color;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.texcoord0 = patch[0].texcoord0 * bary.x + patch[1].texcoord0 * bary.y + patch[2].texcoord0 * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float temp_output_55_0_g141 = IN.ase_color.r;
				float3 break372 = WorldPosition;
				float3 ase_worldNormal = IN.ase_texcoord4.xyz;
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float2 uv_Height131_g141 = IN.ase_texcoord5.xy;
				float4 tex2DNode31_g141 = SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, uv_Height131_g141 );
				float temp_output_34_0_g141 = _HeightParallax1;
				float3 ase_worldTangent = IN.ase_texcoord6.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord7.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_output_102_0_g141 = ase_tanViewDir;
				float2 Offset11_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_4_0_g141;
				float2 Offset33_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset11_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset11_g141;
				float2 Offset23_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset33_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset33_g141;
				float2 Offset12_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset23_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset23_g141;
				float2 temp_output_126_0_g141 = ddx( Offset12_g141 );
				float2 temp_output_129_0_g141 = ddy( Offset12_g141 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float2 Offset16_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_5_0_g141;
				float2 Offset13_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset16_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset16_g141;
				float2 Offset20_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset13_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset13_g141;
				float2 Offset10_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset20_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset20_g141;
				float2 temp_output_127_0_g141 = ddx( Offset10_g141 );
				float2 temp_output_130_0_g141 = ddy( Offset10_g141 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float2 Offset27_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_6_0_g141;
				float2 Offset17_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset27_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset27_g141;
				float2 Offset14_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset17_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset17_g141;
				float2 Offset15_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset14_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset14_g141;
				float2 temp_output_128_0_g141 = ddx( Offset15_g141 );
				float2 temp_output_131_0_g141 = ddy( Offset15_g141 );
				float temp_output_55_0_g142 = IN.ase_color.g;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float2 uv_Height231_g142 = IN.ase_texcoord5.xy;
				float4 tex2DNode31_g142 = SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, uv_Height231_g142 );
				float temp_output_34_0_g142 = _HeightParallax2;
				float3 temp_output_102_0_g142 = ase_tanViewDir;
				float2 Offset11_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_4_0_g142;
				float2 Offset33_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset11_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset11_g142;
				float2 Offset23_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset33_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset33_g142;
				float2 Offset12_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset23_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset23_g142;
				float2 temp_output_126_0_g142 = ddx( Offset12_g142 );
				float2 temp_output_129_0_g142 = ddy( Offset12_g142 );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float2 Offset16_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_5_0_g142;
				float2 Offset13_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset16_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset16_g142;
				float2 Offset20_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset13_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset13_g142;
				float2 Offset10_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset20_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset20_g142;
				float2 temp_output_127_0_g142 = ddx( Offset10_g142 );
				float2 temp_output_130_0_g142 = ddy( Offset10_g142 );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float2 Offset27_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_6_0_g142;
				float2 Offset17_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset27_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset27_g142;
				float2 Offset14_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset17_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset17_g142;
				float2 Offset15_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset14_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset14_g142;
				float2 temp_output_128_0_g142 = ddx( Offset15_g142 );
				float2 temp_output_131_0_g142 = ddy( Offset15_g142 );
				float temp_output_55_0_g143 = IN.ase_color.b;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float2 uv_Height331_g143 = IN.ase_texcoord5.xy;
				float4 tex2DNode31_g143 = SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, uv_Height331_g143 );
				float temp_output_34_0_g143 = _HeightParallax3;
				float3 temp_output_102_0_g143 = ase_tanViewDir;
				float2 Offset11_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_4_0_g143;
				float2 Offset33_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset11_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset11_g143;
				float2 Offset23_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset33_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset33_g143;
				float2 Offset12_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset23_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset23_g143;
				float2 temp_output_126_0_g143 = ddx( Offset12_g143 );
				float2 temp_output_129_0_g143 = ddy( Offset12_g143 );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float2 Offset16_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_5_0_g143;
				float2 Offset13_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset16_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset16_g143;
				float2 Offset20_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset13_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset13_g143;
				float2 Offset10_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset20_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset20_g143;
				float2 temp_output_127_0_g143 = ddx( Offset10_g143 );
				float2 temp_output_130_0_g143 = ddy( Offset10_g143 );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float2 Offset27_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_6_0_g143;
				float2 Offset17_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset27_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset27_g143;
				float2 Offset14_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset17_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset17_g143;
				float2 Offset15_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset14_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset14_g143;
				float2 temp_output_128_0_g143 = ddx( Offset15_g143 );
				float2 temp_output_131_0_g143 = ddy( Offset15_g143 );
				float temp_output_55_0_g145 = IN.ase_color.a;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float2 uv_Height431_g145 = IN.ase_texcoord5.xy;
				float4 tex2DNode31_g145 = SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, uv_Height431_g145 );
				float temp_output_34_0_g145 = _HeightParallax4;
				float3 temp_output_102_0_g145 = ase_tanViewDir;
				float2 Offset11_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_4_0_g145;
				float2 Offset33_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset11_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset11_g145;
				float2 Offset23_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset33_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset33_g145;
				float2 Offset12_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset23_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset23_g145;
				float2 temp_output_126_0_g145 = ddx( Offset12_g145 );
				float2 temp_output_129_0_g145 = ddy( Offset12_g145 );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float2 Offset16_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_5_0_g145;
				float2 Offset13_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset16_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset16_g145;
				float2 Offset20_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset13_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset13_g145;
				float2 Offset10_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset20_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset20_g145;
				float2 temp_output_127_0_g145 = ddx( Offset10_g145 );
				float2 temp_output_130_0_g145 = ddy( Offset10_g145 );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float2 Offset27_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_6_0_g145;
				float2 Offset17_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset27_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset27_g145;
				float2 Offset14_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset17_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset17_g145;
				float2 Offset15_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset14_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset14_g145;
				float2 temp_output_128_0_g145 = ddx( Offset15_g145 );
				float2 temp_output_131_0_g145 = ddy( Offset15_g145 );
				float temp_output_55_0_g146 = IN.ase_texcoord5.zw.x;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float2 uv_Height531_g146 = IN.ase_texcoord5.xy;
				float4 tex2DNode31_g146 = SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, uv_Height531_g146 );
				float temp_output_34_0_g146 = _HeightParallax5;
				float3 temp_output_102_0_g146 = ase_tanViewDir;
				float2 Offset11_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_4_0_g146;
				float2 Offset33_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset11_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset11_g146;
				float2 Offset23_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset33_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset33_g146;
				float2 Offset12_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset23_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset23_g146;
				float2 temp_output_126_0_g146 = ddx( Offset12_g146 );
				float2 temp_output_129_0_g146 = ddy( Offset12_g146 );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float2 Offset16_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_5_0_g146;
				float2 Offset13_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset16_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset16_g146;
				float2 Offset20_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset13_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset13_g146;
				float2 Offset10_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset20_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset20_g146;
				float2 temp_output_127_0_g146 = ddx( Offset10_g146 );
				float2 temp_output_130_0_g146 = ddy( Offset10_g146 );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float2 Offset27_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_6_0_g146;
				float2 Offset17_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset27_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset27_g146;
				float2 Offset14_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset17_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset17_g146;
				float2 Offset15_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset14_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset14_g146;
				float2 temp_output_128_0_g146 = ddx( Offset15_g146 );
				float2 temp_output_131_0_g146 = ddy( Offset15_g146 );
				float temp_output_55_0_g147 = IN.ase_texcoord5.zw.y;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float2 uv_Height631_g147 = IN.ase_texcoord5.xy;
				float4 tex2DNode31_g147 = SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, uv_Height631_g147 );
				float temp_output_34_0_g147 = _HeightParallax6;
				float3 temp_output_102_0_g147 = ase_tanViewDir;
				float2 Offset11_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_4_0_g147;
				float2 Offset33_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset11_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset11_g147;
				float2 Offset23_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset33_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset33_g147;
				float2 Offset12_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset23_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset23_g147;
				float2 temp_output_126_0_g147 = ddx( Offset12_g147 );
				float2 temp_output_129_0_g147 = ddy( Offset12_g147 );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float2 Offset16_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_5_0_g147;
				float2 Offset13_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset16_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset16_g147;
				float2 Offset20_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset13_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset13_g147;
				float2 Offset10_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset20_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset20_g147;
				float2 temp_output_127_0_g147 = ddx( Offset10_g147 );
				float2 temp_output_130_0_g147 = ddy( Offset10_g147 );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float2 Offset27_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_6_0_g147;
				float2 Offset17_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset27_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset27_g147;
				float2 Offset14_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset17_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset17_g147;
				float2 Offset15_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset14_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset14_g147;
				float2 temp_output_128_0_g147 = ddx( Offset15_g147 );
				float2 temp_output_131_0_g147 = ddy( Offset15_g147 );
				float4 screenPos = IN.ase_texcoord8;
				float clampResult1261 = clamp( ( ( screenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( temp_output_55_0_g141 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset12_g141, temp_output_126_0_g141, temp_output_129_0_g141 ) * break54_g141.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset10_g141, temp_output_127_0_g141, temp_output_130_0_g141 ) * break54_g141.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset15_g141, temp_output_128_0_g141, temp_output_131_0_g141 ) * break54_g141.z ) ) ) + ( temp_output_55_0_g142 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset12_g142, temp_output_126_0_g142, temp_output_129_0_g142 ) * break54_g142.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset10_g142, temp_output_127_0_g142, temp_output_130_0_g142 ) * break54_g142.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset15_g142, temp_output_128_0_g142, temp_output_131_0_g142 ) * break54_g142.z ) ) ) ) + ( temp_output_55_0_g143 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset12_g143, temp_output_126_0_g143, temp_output_129_0_g143 ) * break54_g143.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset10_g143, temp_output_127_0_g143, temp_output_130_0_g143 ) * break54_g143.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset15_g143, temp_output_128_0_g143, temp_output_131_0_g143 ) * break54_g143.z ) ) ) ) + ( temp_output_55_0_g145 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset12_g145, temp_output_126_0_g145, temp_output_129_0_g145 ) * break54_g145.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset10_g145, temp_output_127_0_g145, temp_output_130_0_g145 ) * break54_g145.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset15_g145, temp_output_128_0_g145, temp_output_131_0_g145 ) * break54_g145.z ) ) ) ) + ( temp_output_55_0_g146 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset12_g146, temp_output_126_0_g146, temp_output_129_0_g146 ) * break54_g146.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset10_g146, temp_output_127_0_g146, temp_output_130_0_g146 ) * break54_g146.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset15_g146, temp_output_128_0_g146, temp_output_131_0_g146 ) * break54_g146.z ) ) ) ) + ( temp_output_55_0_g147 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset12_g147, temp_output_126_0_g147, temp_output_129_0_g147 ) * break54_g147.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset10_g147, temp_output_127_0_g147, temp_output_130_0_g147 ) * break54_g147.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset15_g147, temp_output_128_0_g147, temp_output_131_0_g147 ) * break54_g147.z ) ) ) ) , clampResult1261);
				
				
				float3 Albedo = lerpResult1262.rgb;
				float3 Emission = 0;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = Albedo;
				metaInput.Emission = Emission;
			#ifdef EDITOR_VISUALIZATION
				metaInput.VizUV = IN.VizUV.xy;
				metaInput.LightCoord = IN.LightCoord;
			#endif
				
				return MetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend One Zero, One Zero
			ColorMask RGBA

			HLSLPROGRAM
			
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_PHONG_TESSELLATION
			#define _SPECULAR_SETUP 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_2D
        
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
			
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_COLOR


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_color : COLOR;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _Tiling1;
			float _NormalStrength4;
			float _NormalStrength5;
			float _NormalStrength6;
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _NormalStrength3;
			float _Shiny6;
			float _Smooth2;
			float _Smooth3;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth1;
			float _NormalStrength2;
			float _NormalStrength1;
			float _FadeRange;
			float _DisplacementStrength1;
			float _Falloff;
			float _Tiling2;
			float _DisplacementStrength2;
			float _Tiling3;
			float _DisplacementStrength3;
			float _Tiling4;
			float _DisplacementStrength4;
			float _Tiling5;
			float _DisplacementStrength5;
			float _Tiling6;
			float _DisplacementStrength6;
			float _HeightParallax1;
			float _HeightParallax2;
			float _HeightParallax3;
			float _HeightParallax4;
			float _HeightParallax5;
			float _HeightParallax6;
			float _FadeOffset;
			float _OcclusionStrength5;
			float _OcclusionStrength6;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Displacement1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Displacement2);
			TEXTURE2D(_Displacement3);
			TEXTURE2D(_Displacement4);
			TEXTURE2D(_Displacement5);
			TEXTURE2D(_Displacement6);
			TEXTURE2D(_Albedo1);
			TEXTURE2D(_Height1);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Height2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Height3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Height4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Height5);
			TEXTURE2D(_Albedo6);
			TEXTURE2D(_Height6);


			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float3 break372 = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float temp_output_118_0_g141 = _DisplacementStrength1;
				float3 unpack104_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_4_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack104_g141.z = lerp( 1, unpack104_g141.z, saturate(temp_output_118_0_g141) );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float3 unpack105_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_5_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack105_g141.z = lerp( 1, unpack105_g141.z, saturate(temp_output_118_0_g141) );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float3 unpack106_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_6_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack106_g141.z = lerp( 1, unpack106_g141.z, saturate(temp_output_118_0_g141) );
				float temp_output_55_0_g141 = v.ase_color.r;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float temp_output_118_0_g142 = _DisplacementStrength2;
				float3 unpack104_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_4_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack104_g142.z = lerp( 1, unpack104_g142.z, saturate(temp_output_118_0_g142) );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float3 unpack105_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_5_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack105_g142.z = lerp( 1, unpack105_g142.z, saturate(temp_output_118_0_g142) );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float3 unpack106_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_6_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack106_g142.z = lerp( 1, unpack106_g142.z, saturate(temp_output_118_0_g142) );
				float temp_output_55_0_g142 = v.ase_color.g;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float temp_output_118_0_g143 = _DisplacementStrength3;
				float3 unpack104_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_4_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack104_g143.z = lerp( 1, unpack104_g143.z, saturate(temp_output_118_0_g143) );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float3 unpack105_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_5_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack105_g143.z = lerp( 1, unpack105_g143.z, saturate(temp_output_118_0_g143) );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float3 unpack106_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_6_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack106_g143.z = lerp( 1, unpack106_g143.z, saturate(temp_output_118_0_g143) );
				float temp_output_55_0_g143 = v.ase_color.b;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float temp_output_118_0_g145 = _DisplacementStrength4;
				float3 unpack104_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_4_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack104_g145.z = lerp( 1, unpack104_g145.z, saturate(temp_output_118_0_g145) );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float3 unpack105_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_5_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack105_g145.z = lerp( 1, unpack105_g145.z, saturate(temp_output_118_0_g145) );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float3 unpack106_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_6_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack106_g145.z = lerp( 1, unpack106_g145.z, saturate(temp_output_118_0_g145) );
				float temp_output_55_0_g145 = v.ase_color.a;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float temp_output_118_0_g146 = _DisplacementStrength5;
				float3 unpack104_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_4_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack104_g146.z = lerp( 1, unpack104_g146.z, saturate(temp_output_118_0_g146) );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float3 unpack105_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_5_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack105_g146.z = lerp( 1, unpack105_g146.z, saturate(temp_output_118_0_g146) );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float3 unpack106_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_6_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack106_g146.z = lerp( 1, unpack106_g146.z, saturate(temp_output_118_0_g146) );
				float temp_output_55_0_g146 = v.ase_texcoord1.x;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float temp_output_118_0_g147 = _DisplacementStrength6;
				float3 unpack104_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_4_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack104_g147.z = lerp( 1, unpack104_g147.z, saturate(temp_output_118_0_g147) );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float3 unpack105_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_5_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack105_g147.z = lerp( 1, unpack105_g147.z, saturate(temp_output_118_0_g147) );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float3 unpack106_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_6_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack106_g147.z = lerp( 1, unpack106_g147.z, saturate(temp_output_118_0_g147) );
				float temp_output_55_0_g147 = v.ase_texcoord1.y;
				
				o.ase_texcoord2.xyz = ase_worldNormal;
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				o.ase_texcoord4.xyz = ase_worldTangent;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
				float4 ase_clipPos = TransformObjectToHClip((v.vertex).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord6 = screenPos;
				
				o.ase_color = v.ase_color;
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				o.ase_texcoord3.zw = v.ase_texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = max( max( max( max( max( ( ( ( ( ( unpack104_g141.r * break54_g141.x ) + ( unpack105_g141.r * break54_g141.y ) ) + ( unpack106_g141.r * break54_g141.z ) ) * v.ase_normal ) * temp_output_55_0_g141 ) , ( ( ( ( ( unpack104_g142.r * break54_g142.x ) + ( unpack105_g142.r * break54_g142.y ) ) + ( unpack106_g142.r * break54_g142.z ) ) * v.ase_normal ) * temp_output_55_0_g142 ) ) , ( ( ( ( ( unpack104_g143.r * break54_g143.x ) + ( unpack105_g143.r * break54_g143.y ) ) + ( unpack106_g143.r * break54_g143.z ) ) * v.ase_normal ) * temp_output_55_0_g143 ) ) , ( ( ( ( ( unpack104_g145.r * break54_g145.x ) + ( unpack105_g145.r * break54_g145.y ) ) + ( unpack106_g145.r * break54_g145.z ) ) * v.ase_normal ) * temp_output_55_0_g145 ) ) , ( ( ( ( ( unpack104_g146.r * break54_g146.x ) + ( unpack105_g146.r * break54_g146.y ) ) + ( unpack106_g146.r * break54_g146.z ) ) * v.ase_normal ) * temp_output_55_0_g146 ) ) , ( ( ( ( ( unpack104_g147.r * break54_g147.x ) + ( unpack105_g147.r * break54_g147.y ) ) + ( unpack106_g147.r * break54_g147.z ) ) * v.ase_normal ) * temp_output_55_0_g147 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_color = v.ase_color;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float temp_output_55_0_g141 = IN.ase_color.r;
				float3 break372 = WorldPosition;
				float3 ase_worldNormal = IN.ase_texcoord2.xyz;
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float2 uv_Height131_g141 = IN.ase_texcoord3.xy;
				float4 tex2DNode31_g141 = SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, uv_Height131_g141 );
				float temp_output_34_0_g141 = _HeightParallax1;
				float3 ase_worldTangent = IN.ase_texcoord4.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_output_102_0_g141 = ase_tanViewDir;
				float2 Offset11_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_4_0_g141;
				float2 Offset33_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset11_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset11_g141;
				float2 Offset23_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset33_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset33_g141;
				float2 Offset12_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset23_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset23_g141;
				float2 temp_output_126_0_g141 = ddx( Offset12_g141 );
				float2 temp_output_129_0_g141 = ddy( Offset12_g141 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float2 Offset16_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_5_0_g141;
				float2 Offset13_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset16_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset16_g141;
				float2 Offset20_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset13_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset13_g141;
				float2 Offset10_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset20_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset20_g141;
				float2 temp_output_127_0_g141 = ddx( Offset10_g141 );
				float2 temp_output_130_0_g141 = ddy( Offset10_g141 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float2 Offset27_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_6_0_g141;
				float2 Offset17_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset27_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset27_g141;
				float2 Offset14_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset17_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset17_g141;
				float2 Offset15_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset14_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset14_g141;
				float2 temp_output_128_0_g141 = ddx( Offset15_g141 );
				float2 temp_output_131_0_g141 = ddy( Offset15_g141 );
				float temp_output_55_0_g142 = IN.ase_color.g;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float2 uv_Height231_g142 = IN.ase_texcoord3.xy;
				float4 tex2DNode31_g142 = SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, uv_Height231_g142 );
				float temp_output_34_0_g142 = _HeightParallax2;
				float3 temp_output_102_0_g142 = ase_tanViewDir;
				float2 Offset11_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_4_0_g142;
				float2 Offset33_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset11_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset11_g142;
				float2 Offset23_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset33_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset33_g142;
				float2 Offset12_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset23_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset23_g142;
				float2 temp_output_126_0_g142 = ddx( Offset12_g142 );
				float2 temp_output_129_0_g142 = ddy( Offset12_g142 );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float2 Offset16_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_5_0_g142;
				float2 Offset13_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset16_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset16_g142;
				float2 Offset20_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset13_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset13_g142;
				float2 Offset10_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset20_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset20_g142;
				float2 temp_output_127_0_g142 = ddx( Offset10_g142 );
				float2 temp_output_130_0_g142 = ddy( Offset10_g142 );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float2 Offset27_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_6_0_g142;
				float2 Offset17_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset27_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset27_g142;
				float2 Offset14_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset17_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset17_g142;
				float2 Offset15_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset14_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset14_g142;
				float2 temp_output_128_0_g142 = ddx( Offset15_g142 );
				float2 temp_output_131_0_g142 = ddy( Offset15_g142 );
				float temp_output_55_0_g143 = IN.ase_color.b;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float2 uv_Height331_g143 = IN.ase_texcoord3.xy;
				float4 tex2DNode31_g143 = SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, uv_Height331_g143 );
				float temp_output_34_0_g143 = _HeightParallax3;
				float3 temp_output_102_0_g143 = ase_tanViewDir;
				float2 Offset11_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_4_0_g143;
				float2 Offset33_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset11_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset11_g143;
				float2 Offset23_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset33_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset33_g143;
				float2 Offset12_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset23_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset23_g143;
				float2 temp_output_126_0_g143 = ddx( Offset12_g143 );
				float2 temp_output_129_0_g143 = ddy( Offset12_g143 );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float2 Offset16_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_5_0_g143;
				float2 Offset13_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset16_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset16_g143;
				float2 Offset20_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset13_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset13_g143;
				float2 Offset10_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset20_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset20_g143;
				float2 temp_output_127_0_g143 = ddx( Offset10_g143 );
				float2 temp_output_130_0_g143 = ddy( Offset10_g143 );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float2 Offset27_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_6_0_g143;
				float2 Offset17_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset27_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset27_g143;
				float2 Offset14_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset17_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset17_g143;
				float2 Offset15_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset14_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset14_g143;
				float2 temp_output_128_0_g143 = ddx( Offset15_g143 );
				float2 temp_output_131_0_g143 = ddy( Offset15_g143 );
				float temp_output_55_0_g145 = IN.ase_color.a;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float2 uv_Height431_g145 = IN.ase_texcoord3.xy;
				float4 tex2DNode31_g145 = SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, uv_Height431_g145 );
				float temp_output_34_0_g145 = _HeightParallax4;
				float3 temp_output_102_0_g145 = ase_tanViewDir;
				float2 Offset11_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_4_0_g145;
				float2 Offset33_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset11_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset11_g145;
				float2 Offset23_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset33_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset33_g145;
				float2 Offset12_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset23_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset23_g145;
				float2 temp_output_126_0_g145 = ddx( Offset12_g145 );
				float2 temp_output_129_0_g145 = ddy( Offset12_g145 );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float2 Offset16_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_5_0_g145;
				float2 Offset13_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset16_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset16_g145;
				float2 Offset20_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset13_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset13_g145;
				float2 Offset10_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset20_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset20_g145;
				float2 temp_output_127_0_g145 = ddx( Offset10_g145 );
				float2 temp_output_130_0_g145 = ddy( Offset10_g145 );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float2 Offset27_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_6_0_g145;
				float2 Offset17_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset27_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset27_g145;
				float2 Offset14_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset17_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset17_g145;
				float2 Offset15_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset14_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset14_g145;
				float2 temp_output_128_0_g145 = ddx( Offset15_g145 );
				float2 temp_output_131_0_g145 = ddy( Offset15_g145 );
				float temp_output_55_0_g146 = IN.ase_texcoord3.zw.x;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float2 uv_Height531_g146 = IN.ase_texcoord3.xy;
				float4 tex2DNode31_g146 = SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, uv_Height531_g146 );
				float temp_output_34_0_g146 = _HeightParallax5;
				float3 temp_output_102_0_g146 = ase_tanViewDir;
				float2 Offset11_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_4_0_g146;
				float2 Offset33_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset11_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset11_g146;
				float2 Offset23_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset33_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset33_g146;
				float2 Offset12_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset23_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset23_g146;
				float2 temp_output_126_0_g146 = ddx( Offset12_g146 );
				float2 temp_output_129_0_g146 = ddy( Offset12_g146 );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float2 Offset16_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_5_0_g146;
				float2 Offset13_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset16_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset16_g146;
				float2 Offset20_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset13_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset13_g146;
				float2 Offset10_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset20_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset20_g146;
				float2 temp_output_127_0_g146 = ddx( Offset10_g146 );
				float2 temp_output_130_0_g146 = ddy( Offset10_g146 );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float2 Offset27_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_6_0_g146;
				float2 Offset17_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset27_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset27_g146;
				float2 Offset14_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset17_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset17_g146;
				float2 Offset15_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset14_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset14_g146;
				float2 temp_output_128_0_g146 = ddx( Offset15_g146 );
				float2 temp_output_131_0_g146 = ddy( Offset15_g146 );
				float temp_output_55_0_g147 = IN.ase_texcoord3.zw.y;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float2 uv_Height631_g147 = IN.ase_texcoord3.xy;
				float4 tex2DNode31_g147 = SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, uv_Height631_g147 );
				float temp_output_34_0_g147 = _HeightParallax6;
				float3 temp_output_102_0_g147 = ase_tanViewDir;
				float2 Offset11_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_4_0_g147;
				float2 Offset33_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset11_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset11_g147;
				float2 Offset23_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset33_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset33_g147;
				float2 Offset12_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset23_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset23_g147;
				float2 temp_output_126_0_g147 = ddx( Offset12_g147 );
				float2 temp_output_129_0_g147 = ddy( Offset12_g147 );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float2 Offset16_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_5_0_g147;
				float2 Offset13_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset16_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset16_g147;
				float2 Offset20_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset13_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset13_g147;
				float2 Offset10_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset20_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset20_g147;
				float2 temp_output_127_0_g147 = ddx( Offset10_g147 );
				float2 temp_output_130_0_g147 = ddy( Offset10_g147 );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float2 Offset27_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_6_0_g147;
				float2 Offset17_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset27_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset27_g147;
				float2 Offset14_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset17_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset17_g147;
				float2 Offset15_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset14_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset14_g147;
				float2 temp_output_128_0_g147 = ddx( Offset15_g147 );
				float2 temp_output_131_0_g147 = ddy( Offset15_g147 );
				float4 screenPos = IN.ase_texcoord6;
				float clampResult1261 = clamp( ( ( screenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( temp_output_55_0_g141 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset12_g141, temp_output_126_0_g141, temp_output_129_0_g141 ) * break54_g141.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset10_g141, temp_output_127_0_g141, temp_output_130_0_g141 ) * break54_g141.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset15_g141, temp_output_128_0_g141, temp_output_131_0_g141 ) * break54_g141.z ) ) ) + ( temp_output_55_0_g142 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset12_g142, temp_output_126_0_g142, temp_output_129_0_g142 ) * break54_g142.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset10_g142, temp_output_127_0_g142, temp_output_130_0_g142 ) * break54_g142.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset15_g142, temp_output_128_0_g142, temp_output_131_0_g142 ) * break54_g142.z ) ) ) ) + ( temp_output_55_0_g143 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset12_g143, temp_output_126_0_g143, temp_output_129_0_g143 ) * break54_g143.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset10_g143, temp_output_127_0_g143, temp_output_130_0_g143 ) * break54_g143.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset15_g143, temp_output_128_0_g143, temp_output_131_0_g143 ) * break54_g143.z ) ) ) ) + ( temp_output_55_0_g145 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset12_g145, temp_output_126_0_g145, temp_output_129_0_g145 ) * break54_g145.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset10_g145, temp_output_127_0_g145, temp_output_130_0_g145 ) * break54_g145.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset15_g145, temp_output_128_0_g145, temp_output_131_0_g145 ) * break54_g145.z ) ) ) ) + ( temp_output_55_0_g146 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset12_g146, temp_output_126_0_g146, temp_output_129_0_g146 ) * break54_g146.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset10_g146, temp_output_127_0_g146, temp_output_130_0_g146 ) * break54_g146.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset15_g146, temp_output_128_0_g146, temp_output_131_0_g146 ) * break54_g146.z ) ) ) ) + ( temp_output_55_0_g147 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset12_g147, temp_output_126_0_g147, temp_output_129_0_g147 ) * break54_g147.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset10_g147, temp_output_127_0_g147, temp_output_130_0_g147 ) * break54_g147.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset15_g147, temp_output_128_0_g147, temp_output_131_0_g147 ) * break54_g147.z ) ) ) ) , clampResult1261);
				
				
				float3 Albedo = lerpResult1262.rgb;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				half4 color = half4( Albedo, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormals" }

			ZWrite On
			Blend One Zero
            ZTest LEqual
            ZWrite On

			HLSLPROGRAM
			
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_PHONG_TESSELLATION
			#define _SPECULAR_SETUP 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_COLOR


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float3 worldNormal : TEXCOORD2;
				float4 worldTangent : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _Tiling1;
			float _NormalStrength4;
			float _NormalStrength5;
			float _NormalStrength6;
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _NormalStrength3;
			float _Shiny6;
			float _Smooth2;
			float _Smooth3;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth1;
			float _NormalStrength2;
			float _NormalStrength1;
			float _FadeRange;
			float _DisplacementStrength1;
			float _Falloff;
			float _Tiling2;
			float _DisplacementStrength2;
			float _Tiling3;
			float _DisplacementStrength3;
			float _Tiling4;
			float _DisplacementStrength4;
			float _Tiling5;
			float _DisplacementStrength5;
			float _Tiling6;
			float _DisplacementStrength6;
			float _HeightParallax1;
			float _HeightParallax2;
			float _HeightParallax3;
			float _HeightParallax4;
			float _HeightParallax5;
			float _HeightParallax6;
			float _FadeOffset;
			float _OcclusionStrength5;
			float _OcclusionStrength6;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Displacement1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Displacement2);
			TEXTURE2D(_Displacement3);
			TEXTURE2D(_Displacement4);
			TEXTURE2D(_Displacement5);
			TEXTURE2D(_Displacement6);
			TEXTURE2D(_Normal1);
			TEXTURE2D(_Height1);
			TEXTURE2D(_Normal2);
			TEXTURE2D(_Height2);
			TEXTURE2D(_Normal3);
			TEXTURE2D(_Height3);
			TEXTURE2D(_Normal4);
			TEXTURE2D(_Height4);
			TEXTURE2D(_Normal5);
			TEXTURE2D(_Height5);
			TEXTURE2D(_Normal6);
			TEXTURE2D(_Height6);


			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float3 break372 = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float temp_output_118_0_g141 = _DisplacementStrength1;
				float3 unpack104_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_4_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack104_g141.z = lerp( 1, unpack104_g141.z, saturate(temp_output_118_0_g141) );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float3 unpack105_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_5_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack105_g141.z = lerp( 1, unpack105_g141.z, saturate(temp_output_118_0_g141) );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float3 unpack106_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_6_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack106_g141.z = lerp( 1, unpack106_g141.z, saturate(temp_output_118_0_g141) );
				float temp_output_55_0_g141 = v.ase_color.r;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float temp_output_118_0_g142 = _DisplacementStrength2;
				float3 unpack104_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_4_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack104_g142.z = lerp( 1, unpack104_g142.z, saturate(temp_output_118_0_g142) );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float3 unpack105_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_5_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack105_g142.z = lerp( 1, unpack105_g142.z, saturate(temp_output_118_0_g142) );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float3 unpack106_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_6_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack106_g142.z = lerp( 1, unpack106_g142.z, saturate(temp_output_118_0_g142) );
				float temp_output_55_0_g142 = v.ase_color.g;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float temp_output_118_0_g143 = _DisplacementStrength3;
				float3 unpack104_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_4_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack104_g143.z = lerp( 1, unpack104_g143.z, saturate(temp_output_118_0_g143) );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float3 unpack105_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_5_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack105_g143.z = lerp( 1, unpack105_g143.z, saturate(temp_output_118_0_g143) );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float3 unpack106_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_6_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack106_g143.z = lerp( 1, unpack106_g143.z, saturate(temp_output_118_0_g143) );
				float temp_output_55_0_g143 = v.ase_color.b;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float temp_output_118_0_g145 = _DisplacementStrength4;
				float3 unpack104_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_4_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack104_g145.z = lerp( 1, unpack104_g145.z, saturate(temp_output_118_0_g145) );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float3 unpack105_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_5_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack105_g145.z = lerp( 1, unpack105_g145.z, saturate(temp_output_118_0_g145) );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float3 unpack106_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_6_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack106_g145.z = lerp( 1, unpack106_g145.z, saturate(temp_output_118_0_g145) );
				float temp_output_55_0_g145 = v.ase_color.a;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float temp_output_118_0_g146 = _DisplacementStrength5;
				float3 unpack104_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_4_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack104_g146.z = lerp( 1, unpack104_g146.z, saturate(temp_output_118_0_g146) );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float3 unpack105_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_5_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack105_g146.z = lerp( 1, unpack105_g146.z, saturate(temp_output_118_0_g146) );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float3 unpack106_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_6_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack106_g146.z = lerp( 1, unpack106_g146.z, saturate(temp_output_118_0_g146) );
				float temp_output_55_0_g146 = v.ase_texcoord1.x;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float temp_output_118_0_g147 = _DisplacementStrength6;
				float3 unpack104_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_4_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack104_g147.z = lerp( 1, unpack104_g147.z, saturate(temp_output_118_0_g147) );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float3 unpack105_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_5_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack105_g147.z = lerp( 1, unpack105_g147.z, saturate(temp_output_118_0_g147) );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float3 unpack106_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_6_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack106_g147.z = lerp( 1, unpack106_g147.z, saturate(temp_output_118_0_g147) );
				float temp_output_55_0_g147 = v.ase_texcoord1.y;
				
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
				
				o.ase_color = v.ase_color;
				o.ase_texcoord4.xy = v.ase_texcoord.xy;
				o.ase_texcoord4.zw = v.ase_texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord5.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = max( max( max( max( max( ( ( ( ( ( unpack104_g141.r * break54_g141.x ) + ( unpack105_g141.r * break54_g141.y ) ) + ( unpack106_g141.r * break54_g141.z ) ) * v.ase_normal ) * temp_output_55_0_g141 ) , ( ( ( ( ( unpack104_g142.r * break54_g142.x ) + ( unpack105_g142.r * break54_g142.y ) ) + ( unpack106_g142.r * break54_g142.z ) ) * v.ase_normal ) * temp_output_55_0_g142 ) ) , ( ( ( ( ( unpack104_g143.r * break54_g143.x ) + ( unpack105_g143.r * break54_g143.y ) ) + ( unpack106_g143.r * break54_g143.z ) ) * v.ase_normal ) * temp_output_55_0_g143 ) ) , ( ( ( ( ( unpack104_g145.r * break54_g145.x ) + ( unpack105_g145.r * break54_g145.y ) ) + ( unpack106_g145.r * break54_g145.z ) ) * v.ase_normal ) * temp_output_55_0_g145 ) ) , ( ( ( ( ( unpack104_g146.r * break54_g146.x ) + ( unpack105_g146.r * break54_g146.y ) ) + ( unpack106_g146.r * break54_g146.z ) ) * v.ase_normal ) * temp_output_55_0_g146 ) ) , ( ( ( ( ( unpack104_g147.r * break54_g147.x ) + ( unpack105_g147.r * break54_g147.y ) ) + ( unpack106_g147.r * break54_g147.z ) ) * v.ase_normal ) * temp_output_55_0_g147 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;
				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 normalWS = TransformObjectToWorldNormal( v.ase_normal );
				float4 tangentWS = float4(TransformObjectToWorldDir( v.ase_tangent.xyz), v.ase_tangent.w);
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				o.worldNormal = normalWS;
				o.worldTangent = tangentWS;

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.ase_color = v.ase_color;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif
			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				
				float3 WorldNormal = IN.worldNormal;
				float4 WorldTangent = IN.worldTangent;

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float temp_output_55_0_g141 = IN.ase_color.r;
				float3 break372 = WorldPosition;
				float3 break602 = sign( WorldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float2 uv_Height131_g141 = IN.ase_texcoord4.xy;
				float4 tex2DNode31_g141 = SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, uv_Height131_g141 );
				float temp_output_34_0_g141 = _HeightParallax1;
				float3 ase_worldBitangent = IN.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( WorldTangent.xyz.x, ase_worldBitangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.xyz.y, ase_worldBitangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.xyz.z, ase_worldBitangent.z, WorldNormal.z );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_output_102_0_g141 = ase_tanViewDir;
				float2 Offset11_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_4_0_g141;
				float2 Offset33_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset11_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset11_g141;
				float2 Offset23_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset33_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset33_g141;
				float2 Offset12_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset23_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset23_g141;
				float2 temp_output_126_0_g141 = ddx( Offset12_g141 );
				float2 temp_output_129_0_g141 = ddy( Offset12_g141 );
				float temp_output_99_0_g141 = _NormalStrength1;
				float3 unpack87_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_point_repeat, Offset12_g141, temp_output_126_0_g141, temp_output_129_0_g141 ), temp_output_99_0_g141 );
				unpack87_g141.z = lerp( 1, unpack87_g141.z, saturate(temp_output_99_0_g141) );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( WorldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float2 Offset16_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_5_0_g141;
				float2 Offset13_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset16_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset16_g141;
				float2 Offset20_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset13_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset13_g141;
				float2 Offset10_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset20_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset20_g141;
				float2 temp_output_127_0_g141 = ddx( Offset10_g141 );
				float2 temp_output_130_0_g141 = ddy( Offset10_g141 );
				float3 unpack88_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_point_repeat, Offset10_g141, temp_output_127_0_g141, temp_output_130_0_g141 ), temp_output_99_0_g141 );
				unpack88_g141.z = lerp( 1, unpack88_g141.z, saturate(temp_output_99_0_g141) );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float2 Offset27_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_6_0_g141;
				float2 Offset17_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset27_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset27_g141;
				float2 Offset14_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset17_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset17_g141;
				float2 Offset15_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset14_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset14_g141;
				float2 temp_output_128_0_g141 = ddx( Offset15_g141 );
				float2 temp_output_131_0_g141 = ddy( Offset15_g141 );
				float3 unpack89_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_point_repeat, Offset15_g141, temp_output_128_0_g141, temp_output_131_0_g141 ), temp_output_99_0_g141 );
				unpack89_g141.z = lerp( 1, unpack89_g141.z, saturate(temp_output_99_0_g141) );
				float temp_output_55_0_g142 = IN.ase_color.g;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float2 uv_Height231_g142 = IN.ase_texcoord4.xy;
				float4 tex2DNode31_g142 = SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, uv_Height231_g142 );
				float temp_output_34_0_g142 = _HeightParallax2;
				float3 temp_output_102_0_g142 = ase_tanViewDir;
				float2 Offset11_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_4_0_g142;
				float2 Offset33_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset11_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset11_g142;
				float2 Offset23_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset33_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset33_g142;
				float2 Offset12_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset23_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset23_g142;
				float2 temp_output_126_0_g142 = ddx( Offset12_g142 );
				float2 temp_output_129_0_g142 = ddy( Offset12_g142 );
				float temp_output_99_0_g142 = _NormalStrength2;
				float3 unpack87_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_point_repeat, Offset12_g142, temp_output_126_0_g142, temp_output_129_0_g142 ), temp_output_99_0_g142 );
				unpack87_g142.z = lerp( 1, unpack87_g142.z, saturate(temp_output_99_0_g142) );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float2 Offset16_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_5_0_g142;
				float2 Offset13_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset16_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset16_g142;
				float2 Offset20_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset13_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset13_g142;
				float2 Offset10_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset20_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset20_g142;
				float2 temp_output_127_0_g142 = ddx( Offset10_g142 );
				float2 temp_output_130_0_g142 = ddy( Offset10_g142 );
				float3 unpack88_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_point_repeat, Offset10_g142, temp_output_127_0_g142, temp_output_130_0_g142 ), temp_output_99_0_g142 );
				unpack88_g142.z = lerp( 1, unpack88_g142.z, saturate(temp_output_99_0_g142) );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float2 Offset27_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_6_0_g142;
				float2 Offset17_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset27_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset27_g142;
				float2 Offset14_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset17_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset17_g142;
				float2 Offset15_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset14_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset14_g142;
				float2 temp_output_128_0_g142 = ddx( Offset15_g142 );
				float2 temp_output_131_0_g142 = ddy( Offset15_g142 );
				float3 unpack89_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_point_repeat, Offset15_g142, temp_output_128_0_g142, temp_output_131_0_g142 ), temp_output_99_0_g142 );
				unpack89_g142.z = lerp( 1, unpack89_g142.z, saturate(temp_output_99_0_g142) );
				float temp_output_55_0_g143 = IN.ase_color.b;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float2 uv_Height331_g143 = IN.ase_texcoord4.xy;
				float4 tex2DNode31_g143 = SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, uv_Height331_g143 );
				float temp_output_34_0_g143 = _HeightParallax3;
				float3 temp_output_102_0_g143 = ase_tanViewDir;
				float2 Offset11_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_4_0_g143;
				float2 Offset33_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset11_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset11_g143;
				float2 Offset23_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset33_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset33_g143;
				float2 Offset12_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset23_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset23_g143;
				float2 temp_output_126_0_g143 = ddx( Offset12_g143 );
				float2 temp_output_129_0_g143 = ddy( Offset12_g143 );
				float temp_output_99_0_g143 = _NormalStrength3;
				float3 unpack87_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_point_repeat, Offset12_g143, temp_output_126_0_g143, temp_output_129_0_g143 ), temp_output_99_0_g143 );
				unpack87_g143.z = lerp( 1, unpack87_g143.z, saturate(temp_output_99_0_g143) );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float2 Offset16_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_5_0_g143;
				float2 Offset13_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset16_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset16_g143;
				float2 Offset20_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset13_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset13_g143;
				float2 Offset10_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset20_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset20_g143;
				float2 temp_output_127_0_g143 = ddx( Offset10_g143 );
				float2 temp_output_130_0_g143 = ddy( Offset10_g143 );
				float3 unpack88_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_point_repeat, Offset10_g143, temp_output_127_0_g143, temp_output_130_0_g143 ), temp_output_99_0_g143 );
				unpack88_g143.z = lerp( 1, unpack88_g143.z, saturate(temp_output_99_0_g143) );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float2 Offset27_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_6_0_g143;
				float2 Offset17_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset27_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset27_g143;
				float2 Offset14_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset17_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset17_g143;
				float2 Offset15_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset14_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset14_g143;
				float2 temp_output_128_0_g143 = ddx( Offset15_g143 );
				float2 temp_output_131_0_g143 = ddy( Offset15_g143 );
				float3 unpack89_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_point_repeat, Offset15_g143, temp_output_128_0_g143, temp_output_131_0_g143 ), temp_output_99_0_g143 );
				unpack89_g143.z = lerp( 1, unpack89_g143.z, saturate(temp_output_99_0_g143) );
				float temp_output_55_0_g145 = IN.ase_color.a;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float2 uv_Height431_g145 = IN.ase_texcoord4.xy;
				float4 tex2DNode31_g145 = SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, uv_Height431_g145 );
				float temp_output_34_0_g145 = _HeightParallax4;
				float3 temp_output_102_0_g145 = ase_tanViewDir;
				float2 Offset11_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_4_0_g145;
				float2 Offset33_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset11_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset11_g145;
				float2 Offset23_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset33_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset33_g145;
				float2 Offset12_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset23_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset23_g145;
				float2 temp_output_126_0_g145 = ddx( Offset12_g145 );
				float2 temp_output_129_0_g145 = ddy( Offset12_g145 );
				float temp_output_99_0_g145 = _NormalStrength4;
				float3 unpack87_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_point_repeat, Offset12_g145, temp_output_126_0_g145, temp_output_129_0_g145 ), temp_output_99_0_g145 );
				unpack87_g145.z = lerp( 1, unpack87_g145.z, saturate(temp_output_99_0_g145) );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float2 Offset16_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_5_0_g145;
				float2 Offset13_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset16_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset16_g145;
				float2 Offset20_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset13_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset13_g145;
				float2 Offset10_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset20_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset20_g145;
				float2 temp_output_127_0_g145 = ddx( Offset10_g145 );
				float2 temp_output_130_0_g145 = ddy( Offset10_g145 );
				float3 unpack88_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_point_repeat, Offset10_g145, temp_output_127_0_g145, temp_output_130_0_g145 ), temp_output_99_0_g145 );
				unpack88_g145.z = lerp( 1, unpack88_g145.z, saturate(temp_output_99_0_g145) );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float2 Offset27_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_6_0_g145;
				float2 Offset17_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset27_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset27_g145;
				float2 Offset14_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset17_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset17_g145;
				float2 Offset15_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset14_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset14_g145;
				float2 temp_output_128_0_g145 = ddx( Offset15_g145 );
				float2 temp_output_131_0_g145 = ddy( Offset15_g145 );
				float3 unpack89_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_point_repeat, Offset15_g145, temp_output_128_0_g145, temp_output_131_0_g145 ), temp_output_99_0_g145 );
				unpack89_g145.z = lerp( 1, unpack89_g145.z, saturate(temp_output_99_0_g145) );
				float temp_output_55_0_g146 = IN.ase_texcoord4.zw.x;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float2 uv_Height531_g146 = IN.ase_texcoord4.xy;
				float4 tex2DNode31_g146 = SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, uv_Height531_g146 );
				float temp_output_34_0_g146 = _HeightParallax5;
				float3 temp_output_102_0_g146 = ase_tanViewDir;
				float2 Offset11_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_4_0_g146;
				float2 Offset33_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset11_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset11_g146;
				float2 Offset23_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset33_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset33_g146;
				float2 Offset12_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset23_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset23_g146;
				float2 temp_output_126_0_g146 = ddx( Offset12_g146 );
				float2 temp_output_129_0_g146 = ddy( Offset12_g146 );
				float temp_output_99_0_g146 = _NormalStrength5;
				float3 unpack87_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_point_repeat, Offset12_g146, temp_output_126_0_g146, temp_output_129_0_g146 ), temp_output_99_0_g146 );
				unpack87_g146.z = lerp( 1, unpack87_g146.z, saturate(temp_output_99_0_g146) );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float2 Offset16_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_5_0_g146;
				float2 Offset13_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset16_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset16_g146;
				float2 Offset20_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset13_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset13_g146;
				float2 Offset10_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset20_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset20_g146;
				float2 temp_output_127_0_g146 = ddx( Offset10_g146 );
				float2 temp_output_130_0_g146 = ddy( Offset10_g146 );
				float3 unpack88_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_point_repeat, Offset10_g146, temp_output_127_0_g146, temp_output_130_0_g146 ), temp_output_99_0_g146 );
				unpack88_g146.z = lerp( 1, unpack88_g146.z, saturate(temp_output_99_0_g146) );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float2 Offset27_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_6_0_g146;
				float2 Offset17_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset27_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset27_g146;
				float2 Offset14_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset17_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset17_g146;
				float2 Offset15_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset14_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset14_g146;
				float2 temp_output_128_0_g146 = ddx( Offset15_g146 );
				float2 temp_output_131_0_g146 = ddy( Offset15_g146 );
				float3 unpack89_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_point_repeat, Offset15_g146, temp_output_128_0_g146, temp_output_131_0_g146 ), temp_output_99_0_g146 );
				unpack89_g146.z = lerp( 1, unpack89_g146.z, saturate(temp_output_99_0_g146) );
				float temp_output_55_0_g147 = IN.ase_texcoord4.zw.y;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float2 uv_Height631_g147 = IN.ase_texcoord4.xy;
				float4 tex2DNode31_g147 = SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, uv_Height631_g147 );
				float temp_output_34_0_g147 = _HeightParallax6;
				float3 temp_output_102_0_g147 = ase_tanViewDir;
				float2 Offset11_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_4_0_g147;
				float2 Offset33_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset11_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset11_g147;
				float2 Offset23_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset33_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset33_g147;
				float2 Offset12_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset23_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset23_g147;
				float2 temp_output_126_0_g147 = ddx( Offset12_g147 );
				float2 temp_output_129_0_g147 = ddy( Offset12_g147 );
				float temp_output_99_0_g147 = _NormalStrength6;
				float3 unpack87_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_point_repeat, Offset12_g147, temp_output_126_0_g147, temp_output_129_0_g147 ), temp_output_99_0_g147 );
				unpack87_g147.z = lerp( 1, unpack87_g147.z, saturate(temp_output_99_0_g147) );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float2 Offset16_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_5_0_g147;
				float2 Offset13_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset16_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset16_g147;
				float2 Offset20_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset13_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset13_g147;
				float2 Offset10_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset20_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset20_g147;
				float2 temp_output_127_0_g147 = ddx( Offset10_g147 );
				float2 temp_output_130_0_g147 = ddy( Offset10_g147 );
				float3 unpack88_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_point_repeat, Offset10_g147, temp_output_127_0_g147, temp_output_130_0_g147 ), temp_output_99_0_g147 );
				unpack88_g147.z = lerp( 1, unpack88_g147.z, saturate(temp_output_99_0_g147) );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float2 Offset27_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_6_0_g147;
				float2 Offset17_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset27_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset27_g147;
				float2 Offset14_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset17_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset17_g147;
				float2 Offset15_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset14_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset14_g147;
				float2 temp_output_128_0_g147 = ddx( Offset15_g147 );
				float2 temp_output_131_0_g147 = ddy( Offset15_g147 );
				float3 unpack89_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_point_repeat, Offset15_g147, temp_output_128_0_g147, temp_output_131_0_g147 ), temp_output_99_0_g147 );
				unpack89_g147.z = lerp( 1, unpack89_g147.z, saturate(temp_output_99_0_g147) );
				
				float3 Normal = ( ( ( ( ( ( temp_output_55_0_g141 * ( ( ( unpack87_g141 * break54_g141.x ) + ( unpack88_g141 * break54_g141.y ) ) + ( unpack89_g141 * break54_g141.z ) ) ) + ( temp_output_55_0_g142 * ( ( ( unpack87_g142 * break54_g142.x ) + ( unpack88_g142 * break54_g142.y ) ) + ( unpack89_g142 * break54_g142.z ) ) ) ) + ( temp_output_55_0_g143 * ( ( ( unpack87_g143 * break54_g143.x ) + ( unpack88_g143 * break54_g143.y ) ) + ( unpack89_g143 * break54_g143.z ) ) ) ) + ( temp_output_55_0_g145 * ( ( ( unpack87_g145 * break54_g145.x ) + ( unpack88_g145 * break54_g145.y ) ) + ( unpack89_g145 * break54_g145.z ) ) ) ) + ( temp_output_55_0_g146 * ( ( ( unpack87_g146 * break54_g146.x ) + ( unpack88_g146 * break54_g146.y ) ) + ( unpack89_g146 * break54_g146.z ) ) ) ) + ( temp_output_55_0_g147 * ( ( ( unpack87_g147 * break54_g147.x ) + ( unpack88_g147 * break54_g147.y ) ) + ( unpack89_g147 * break54_g147.z ) ) ) );
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				
				#ifdef ASE_DEPTH_WRITE_ON
				outputDepth = DepthValue;
				#endif
				
				#if defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(WorldNormal);
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					return half4(packedNormalWS, 0.0);
				#else
					
					#if defined(_NORMALMAP)
						#if _NORMAL_DROPOFF_TS
							float crossSign = (WorldTangent.w > 0.0 ? 1.0 : -1.0) * GetOddNegativeScale();
							float3 bitangent = crossSign * cross(WorldNormal.xyz, WorldTangent.xyz);
							float3 normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent.xyz, bitangent, WorldNormal.xyz));
						#elif _NORMAL_DROPOFF_OS
							float3 normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							float3 normalWS = Normal;
						#endif
					#else
						float3 normalWS = WorldNormal;
					#endif

					return half4(NormalizeNormalPerPixel(normalWS), 0.0);
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }
			
			Blend One Zero, One Zero
			ColorMask RGBA
			

			HLSLPROGRAM
			
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_PHONG_TESSELLATION
			#define _SPECULAR_SETUP 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			
			#pragma multi_compile _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile _ _REFLECTION_PROBE_BOX_PROJECTION

			#pragma multi_compile _ _SHADOWS_SOFT
			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			#pragma multi_compile _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile _ _GBUFFER_NORMALS_OCT
			#pragma multi_compile _ _LIGHT_LAYERS
			#pragma multi_compile _ _RENDER_PASS_ENABLED

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_GBUFFER

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"


			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
			    #define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_SCREEN_POSITION


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 lightmapUVOrVertexSH : TEXCOORD0;
				half4 fogFactorAndVertexLight : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_color : COLOR;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _Tiling1;
			float _NormalStrength4;
			float _NormalStrength5;
			float _NormalStrength6;
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _NormalStrength3;
			float _Shiny6;
			float _Smooth2;
			float _Smooth3;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth1;
			float _NormalStrength2;
			float _NormalStrength1;
			float _FadeRange;
			float _DisplacementStrength1;
			float _Falloff;
			float _Tiling2;
			float _DisplacementStrength2;
			float _Tiling3;
			float _DisplacementStrength3;
			float _Tiling4;
			float _DisplacementStrength4;
			float _Tiling5;
			float _DisplacementStrength5;
			float _Tiling6;
			float _DisplacementStrength6;
			float _HeightParallax1;
			float _HeightParallax2;
			float _HeightParallax3;
			float _HeightParallax4;
			float _HeightParallax5;
			float _HeightParallax6;
			float _FadeOffset;
			float _OcclusionStrength5;
			float _OcclusionStrength6;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Displacement1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Displacement2);
			TEXTURE2D(_Displacement3);
			TEXTURE2D(_Displacement4);
			TEXTURE2D(_Displacement5);
			TEXTURE2D(_Displacement6);
			TEXTURE2D(_Albedo1);
			TEXTURE2D(_Height1);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Height2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Height3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Height4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Height5);
			TEXTURE2D(_Albedo6);
			TEXTURE2D(_Height6);
			TEXTURE2D(_Normal1);
			TEXTURE2D(_Normal2);
			TEXTURE2D(_Normal3);
			TEXTURE2D(_Normal4);
			TEXTURE2D(_Normal5);
			TEXTURE2D(_Normal6);
			TEXTURE2D(_Occlusion1);
			TEXTURE2D(_Occlusion2);
			TEXTURE2D(_Occlusion3);
			TEXTURE2D(_Occlusion4);
			TEXTURE2D(_Occlusion5);
			TEXTURE2D(_Occlusion6);


			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float3 break372 = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float temp_output_118_0_g141 = _DisplacementStrength1;
				float3 unpack104_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_4_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack104_g141.z = lerp( 1, unpack104_g141.z, saturate(temp_output_118_0_g141) );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float3 unpack105_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_5_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack105_g141.z = lerp( 1, unpack105_g141.z, saturate(temp_output_118_0_g141) );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float3 unpack106_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_6_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack106_g141.z = lerp( 1, unpack106_g141.z, saturate(temp_output_118_0_g141) );
				float temp_output_55_0_g141 = v.ase_color.r;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float temp_output_118_0_g142 = _DisplacementStrength2;
				float3 unpack104_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_4_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack104_g142.z = lerp( 1, unpack104_g142.z, saturate(temp_output_118_0_g142) );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float3 unpack105_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_5_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack105_g142.z = lerp( 1, unpack105_g142.z, saturate(temp_output_118_0_g142) );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float3 unpack106_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_6_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack106_g142.z = lerp( 1, unpack106_g142.z, saturate(temp_output_118_0_g142) );
				float temp_output_55_0_g142 = v.ase_color.g;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float temp_output_118_0_g143 = _DisplacementStrength3;
				float3 unpack104_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_4_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack104_g143.z = lerp( 1, unpack104_g143.z, saturate(temp_output_118_0_g143) );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float3 unpack105_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_5_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack105_g143.z = lerp( 1, unpack105_g143.z, saturate(temp_output_118_0_g143) );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float3 unpack106_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_6_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack106_g143.z = lerp( 1, unpack106_g143.z, saturate(temp_output_118_0_g143) );
				float temp_output_55_0_g143 = v.ase_color.b;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float temp_output_118_0_g145 = _DisplacementStrength4;
				float3 unpack104_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_4_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack104_g145.z = lerp( 1, unpack104_g145.z, saturate(temp_output_118_0_g145) );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float3 unpack105_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_5_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack105_g145.z = lerp( 1, unpack105_g145.z, saturate(temp_output_118_0_g145) );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float3 unpack106_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_6_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack106_g145.z = lerp( 1, unpack106_g145.z, saturate(temp_output_118_0_g145) );
				float temp_output_55_0_g145 = v.ase_color.a;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float temp_output_118_0_g146 = _DisplacementStrength5;
				float3 unpack104_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_4_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack104_g146.z = lerp( 1, unpack104_g146.z, saturate(temp_output_118_0_g146) );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float3 unpack105_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_5_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack105_g146.z = lerp( 1, unpack105_g146.z, saturate(temp_output_118_0_g146) );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float3 unpack106_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_6_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack106_g146.z = lerp( 1, unpack106_g146.z, saturate(temp_output_118_0_g146) );
				float temp_output_55_0_g146 = v.texcoord1.x;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float temp_output_118_0_g147 = _DisplacementStrength6;
				float3 unpack104_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_4_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack104_g147.z = lerp( 1, unpack104_g147.z, saturate(temp_output_118_0_g147) );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float3 unpack105_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_5_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack105_g147.z = lerp( 1, unpack105_g147.z, saturate(temp_output_118_0_g147) );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float3 unpack106_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_6_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack106_g147.z = lerp( 1, unpack106_g147.z, saturate(temp_output_118_0_g147) );
				float temp_output_55_0_g147 = v.texcoord1.y;
				
				o.ase_color = v.ase_color;
				o.ase_texcoord8.xy = v.texcoord.xy;
				o.ase_texcoord8.zw = v.texcoord1.xy;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = max( max( max( max( max( ( ( ( ( ( unpack104_g141.r * break54_g141.x ) + ( unpack105_g141.r * break54_g141.y ) ) + ( unpack106_g141.r * break54_g141.z ) ) * v.ase_normal ) * temp_output_55_0_g141 ) , ( ( ( ( ( unpack104_g142.r * break54_g142.x ) + ( unpack105_g142.r * break54_g142.y ) ) + ( unpack106_g142.r * break54_g142.z ) ) * v.ase_normal ) * temp_output_55_0_g142 ) ) , ( ( ( ( ( unpack104_g143.r * break54_g143.x ) + ( unpack105_g143.r * break54_g143.y ) ) + ( unpack106_g143.r * break54_g143.z ) ) * v.ase_normal ) * temp_output_55_0_g143 ) ) , ( ( ( ( ( unpack104_g145.r * break54_g145.x ) + ( unpack105_g145.r * break54_g145.y ) ) + ( unpack106_g145.r * break54_g145.z ) ) * v.ase_normal ) * temp_output_55_0_g145 ) ) , ( ( ( ( ( unpack104_g146.r * break54_g146.x ) + ( unpack105_g146.r * break54_g146.y ) ) + ( unpack106_g146.r * break54_g146.z ) ) * v.ase_normal ) * temp_output_55_0_g146 ) ) , ( ( ( ( ( unpack104_g147.r * break54_g147.x ) + ( unpack105_g147.r * break54_g147.y ) ) + ( unpack106_g147.r * break54_g147.z ) ) * v.ase_normal ) * temp_output_55_0_g147 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 positionVS = TransformWorldToView( positionWS );
				float4 positionCS = TransformWorldToHClip( positionWS );

				VertexNormalInputs normalInput = GetVertexNormalInputs( v.ase_normal, v.ase_tangent );

				o.tSpace0 = float4( normalInput.normalWS, positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, positionWS.z);

				OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				#if defined(DYNAMICLIGHTMAP_ON)
				o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord;
					o.lightmapUVOrVertexSH.xy = v.texcoord * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( positionWS, normalInput.normalWS );
				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( positionCS.z );
				#else
					half fogFactor = 0;
				#endif
				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
				
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = positionCS;
				o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				
				o.clipPos = positionCS;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				o.screenPos = ComputeScreenPos(positionCS);
				#endif
				return o;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif
			FragmentOutput frag ( VertexOutput IN 
								#ifdef ASE_DEPTH_WRITE_ON
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								 )
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif
				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#else
					ShadowCoords = float4(0, 0, 0, 0);
				#endif


	
				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float temp_output_55_0_g141 = IN.ase_color.r;
				float3 break372 = WorldPosition;
				float3 break602 = sign( WorldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float2 uv_Height131_g141 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g141 = SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, uv_Height131_g141 );
				float temp_output_34_0_g141 = _HeightParallax1;
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * WorldViewDirection.x + tanToWorld1 * WorldViewDirection.y  + tanToWorld2 * WorldViewDirection.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_output_102_0_g141 = ase_tanViewDir;
				float2 Offset11_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_4_0_g141;
				float2 Offset33_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset11_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset11_g141;
				float2 Offset23_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset33_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset33_g141;
				float2 Offset12_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset23_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset23_g141;
				float2 temp_output_126_0_g141 = ddx( Offset12_g141 );
				float2 temp_output_129_0_g141 = ddy( Offset12_g141 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( WorldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float2 Offset16_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_5_0_g141;
				float2 Offset13_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset16_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset16_g141;
				float2 Offset20_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset13_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset13_g141;
				float2 Offset10_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset20_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset20_g141;
				float2 temp_output_127_0_g141 = ddx( Offset10_g141 );
				float2 temp_output_130_0_g141 = ddy( Offset10_g141 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float2 Offset27_g141 = ( ( tex2DNode31_g141.r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + temp_output_6_0_g141;
				float2 Offset17_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset27_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset27_g141;
				float2 Offset14_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset17_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset17_g141;
				float2 Offset15_g141 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_point_repeat, Offset14_g141 ).r - 1 ) * temp_output_102_0_g141.xy * temp_output_34_0_g141 ) + Offset14_g141;
				float2 temp_output_128_0_g141 = ddx( Offset15_g141 );
				float2 temp_output_131_0_g141 = ddy( Offset15_g141 );
				float temp_output_55_0_g142 = IN.ase_color.g;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float2 uv_Height231_g142 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g142 = SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, uv_Height231_g142 );
				float temp_output_34_0_g142 = _HeightParallax2;
				float3 temp_output_102_0_g142 = ase_tanViewDir;
				float2 Offset11_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_4_0_g142;
				float2 Offset33_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset11_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset11_g142;
				float2 Offset23_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset33_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset33_g142;
				float2 Offset12_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset23_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset23_g142;
				float2 temp_output_126_0_g142 = ddx( Offset12_g142 );
				float2 temp_output_129_0_g142 = ddy( Offset12_g142 );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float2 Offset16_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_5_0_g142;
				float2 Offset13_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset16_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset16_g142;
				float2 Offset20_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset13_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset13_g142;
				float2 Offset10_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset20_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset20_g142;
				float2 temp_output_127_0_g142 = ddx( Offset10_g142 );
				float2 temp_output_130_0_g142 = ddy( Offset10_g142 );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float2 Offset27_g142 = ( ( tex2DNode31_g142.r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + temp_output_6_0_g142;
				float2 Offset17_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset27_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset27_g142;
				float2 Offset14_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset17_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset17_g142;
				float2 Offset15_g142 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_point_repeat, Offset14_g142 ).r - 1 ) * temp_output_102_0_g142.xy * temp_output_34_0_g142 ) + Offset14_g142;
				float2 temp_output_128_0_g142 = ddx( Offset15_g142 );
				float2 temp_output_131_0_g142 = ddy( Offset15_g142 );
				float temp_output_55_0_g143 = IN.ase_color.b;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float2 uv_Height331_g143 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g143 = SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, uv_Height331_g143 );
				float temp_output_34_0_g143 = _HeightParallax3;
				float3 temp_output_102_0_g143 = ase_tanViewDir;
				float2 Offset11_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_4_0_g143;
				float2 Offset33_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset11_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset11_g143;
				float2 Offset23_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset33_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset33_g143;
				float2 Offset12_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset23_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset23_g143;
				float2 temp_output_126_0_g143 = ddx( Offset12_g143 );
				float2 temp_output_129_0_g143 = ddy( Offset12_g143 );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float2 Offset16_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_5_0_g143;
				float2 Offset13_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset16_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset16_g143;
				float2 Offset20_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset13_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset13_g143;
				float2 Offset10_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset20_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset20_g143;
				float2 temp_output_127_0_g143 = ddx( Offset10_g143 );
				float2 temp_output_130_0_g143 = ddy( Offset10_g143 );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float2 Offset27_g143 = ( ( tex2DNode31_g143.r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + temp_output_6_0_g143;
				float2 Offset17_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset27_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset27_g143;
				float2 Offset14_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset17_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset17_g143;
				float2 Offset15_g143 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_point_repeat, Offset14_g143 ).r - 1 ) * temp_output_102_0_g143.xy * temp_output_34_0_g143 ) + Offset14_g143;
				float2 temp_output_128_0_g143 = ddx( Offset15_g143 );
				float2 temp_output_131_0_g143 = ddy( Offset15_g143 );
				float temp_output_55_0_g145 = IN.ase_color.a;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float2 uv_Height431_g145 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g145 = SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, uv_Height431_g145 );
				float temp_output_34_0_g145 = _HeightParallax4;
				float3 temp_output_102_0_g145 = ase_tanViewDir;
				float2 Offset11_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_4_0_g145;
				float2 Offset33_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset11_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset11_g145;
				float2 Offset23_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset33_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset33_g145;
				float2 Offset12_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset23_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset23_g145;
				float2 temp_output_126_0_g145 = ddx( Offset12_g145 );
				float2 temp_output_129_0_g145 = ddy( Offset12_g145 );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float2 Offset16_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_5_0_g145;
				float2 Offset13_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset16_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset16_g145;
				float2 Offset20_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset13_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset13_g145;
				float2 Offset10_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset20_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset20_g145;
				float2 temp_output_127_0_g145 = ddx( Offset10_g145 );
				float2 temp_output_130_0_g145 = ddy( Offset10_g145 );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float2 Offset27_g145 = ( ( tex2DNode31_g145.r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + temp_output_6_0_g145;
				float2 Offset17_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset27_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset27_g145;
				float2 Offset14_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset17_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset17_g145;
				float2 Offset15_g145 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_point_repeat, Offset14_g145 ).r - 1 ) * temp_output_102_0_g145.xy * temp_output_34_0_g145 ) + Offset14_g145;
				float2 temp_output_128_0_g145 = ddx( Offset15_g145 );
				float2 temp_output_131_0_g145 = ddy( Offset15_g145 );
				float temp_output_55_0_g146 = IN.ase_texcoord8.zw.x;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float2 uv_Height531_g146 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g146 = SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, uv_Height531_g146 );
				float temp_output_34_0_g146 = _HeightParallax5;
				float3 temp_output_102_0_g146 = ase_tanViewDir;
				float2 Offset11_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_4_0_g146;
				float2 Offset33_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset11_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset11_g146;
				float2 Offset23_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset33_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset33_g146;
				float2 Offset12_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset23_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset23_g146;
				float2 temp_output_126_0_g146 = ddx( Offset12_g146 );
				float2 temp_output_129_0_g146 = ddy( Offset12_g146 );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float2 Offset16_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_5_0_g146;
				float2 Offset13_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset16_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset16_g146;
				float2 Offset20_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset13_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset13_g146;
				float2 Offset10_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset20_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset20_g146;
				float2 temp_output_127_0_g146 = ddx( Offset10_g146 );
				float2 temp_output_130_0_g146 = ddy( Offset10_g146 );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float2 Offset27_g146 = ( ( tex2DNode31_g146.r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + temp_output_6_0_g146;
				float2 Offset17_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset27_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset27_g146;
				float2 Offset14_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset17_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset17_g146;
				float2 Offset15_g146 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_point_repeat, Offset14_g146 ).r - 1 ) * temp_output_102_0_g146.xy * temp_output_34_0_g146 ) + Offset14_g146;
				float2 temp_output_128_0_g146 = ddx( Offset15_g146 );
				float2 temp_output_131_0_g146 = ddy( Offset15_g146 );
				float temp_output_55_0_g147 = IN.ase_texcoord8.zw.y;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float2 uv_Height631_g147 = IN.ase_texcoord8.xy;
				float4 tex2DNode31_g147 = SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, uv_Height631_g147 );
				float temp_output_34_0_g147 = _HeightParallax6;
				float3 temp_output_102_0_g147 = ase_tanViewDir;
				float2 Offset11_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_4_0_g147;
				float2 Offset33_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset11_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset11_g147;
				float2 Offset23_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset33_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset33_g147;
				float2 Offset12_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset23_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset23_g147;
				float2 temp_output_126_0_g147 = ddx( Offset12_g147 );
				float2 temp_output_129_0_g147 = ddy( Offset12_g147 );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float2 Offset16_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_5_0_g147;
				float2 Offset13_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset16_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset16_g147;
				float2 Offset20_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset13_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset13_g147;
				float2 Offset10_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset20_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset20_g147;
				float2 temp_output_127_0_g147 = ddx( Offset10_g147 );
				float2 temp_output_130_0_g147 = ddy( Offset10_g147 );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float2 Offset27_g147 = ( ( tex2DNode31_g147.r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + temp_output_6_0_g147;
				float2 Offset17_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset27_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset27_g147;
				float2 Offset14_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset17_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset17_g147;
				float2 Offset15_g147 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_point_repeat, Offset14_g147 ).r - 1 ) * temp_output_102_0_g147.xy * temp_output_34_0_g147 ) + Offset14_g147;
				float2 temp_output_128_0_g147 = ddx( Offset15_g147 );
				float2 temp_output_131_0_g147 = ddy( Offset15_g147 );
				float clampResult1261 = clamp( ( ( ScreenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( temp_output_55_0_g141 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset12_g141, temp_output_126_0_g141, temp_output_129_0_g141 ) * break54_g141.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset10_g141, temp_output_127_0_g141, temp_output_130_0_g141 ) * break54_g141.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_point_repeat, Offset15_g141, temp_output_128_0_g141, temp_output_131_0_g141 ) * break54_g141.z ) ) ) + ( temp_output_55_0_g142 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset12_g142, temp_output_126_0_g142, temp_output_129_0_g142 ) * break54_g142.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset10_g142, temp_output_127_0_g142, temp_output_130_0_g142 ) * break54_g142.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_point_repeat, Offset15_g142, temp_output_128_0_g142, temp_output_131_0_g142 ) * break54_g142.z ) ) ) ) + ( temp_output_55_0_g143 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset12_g143, temp_output_126_0_g143, temp_output_129_0_g143 ) * break54_g143.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset10_g143, temp_output_127_0_g143, temp_output_130_0_g143 ) * break54_g143.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_point_repeat, Offset15_g143, temp_output_128_0_g143, temp_output_131_0_g143 ) * break54_g143.z ) ) ) ) + ( temp_output_55_0_g145 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset12_g145, temp_output_126_0_g145, temp_output_129_0_g145 ) * break54_g145.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset10_g145, temp_output_127_0_g145, temp_output_130_0_g145 ) * break54_g145.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_point_repeat, Offset15_g145, temp_output_128_0_g145, temp_output_131_0_g145 ) * break54_g145.z ) ) ) ) + ( temp_output_55_0_g146 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset12_g146, temp_output_126_0_g146, temp_output_129_0_g146 ) * break54_g146.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset10_g146, temp_output_127_0_g146, temp_output_130_0_g146 ) * break54_g146.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_point_repeat, Offset15_g146, temp_output_128_0_g146, temp_output_131_0_g146 ) * break54_g146.z ) ) ) ) + ( temp_output_55_0_g147 * ( ( ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset12_g147, temp_output_126_0_g147, temp_output_129_0_g147 ) * break54_g147.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset10_g147, temp_output_127_0_g147, temp_output_130_0_g147 ) * break54_g147.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_point_repeat, Offset15_g147, temp_output_128_0_g147, temp_output_131_0_g147 ) * break54_g147.z ) ) ) ) , clampResult1261);
				
				float temp_output_99_0_g141 = _NormalStrength1;
				float3 unpack87_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_point_repeat, Offset12_g141, temp_output_126_0_g141, temp_output_129_0_g141 ), temp_output_99_0_g141 );
				unpack87_g141.z = lerp( 1, unpack87_g141.z, saturate(temp_output_99_0_g141) );
				float3 unpack88_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_point_repeat, Offset10_g141, temp_output_127_0_g141, temp_output_130_0_g141 ), temp_output_99_0_g141 );
				unpack88_g141.z = lerp( 1, unpack88_g141.z, saturate(temp_output_99_0_g141) );
				float3 unpack89_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_point_repeat, Offset15_g141, temp_output_128_0_g141, temp_output_131_0_g141 ), temp_output_99_0_g141 );
				unpack89_g141.z = lerp( 1, unpack89_g141.z, saturate(temp_output_99_0_g141) );
				float temp_output_99_0_g142 = _NormalStrength2;
				float3 unpack87_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_point_repeat, Offset12_g142, temp_output_126_0_g142, temp_output_129_0_g142 ), temp_output_99_0_g142 );
				unpack87_g142.z = lerp( 1, unpack87_g142.z, saturate(temp_output_99_0_g142) );
				float3 unpack88_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_point_repeat, Offset10_g142, temp_output_127_0_g142, temp_output_130_0_g142 ), temp_output_99_0_g142 );
				unpack88_g142.z = lerp( 1, unpack88_g142.z, saturate(temp_output_99_0_g142) );
				float3 unpack89_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_point_repeat, Offset15_g142, temp_output_128_0_g142, temp_output_131_0_g142 ), temp_output_99_0_g142 );
				unpack89_g142.z = lerp( 1, unpack89_g142.z, saturate(temp_output_99_0_g142) );
				float temp_output_99_0_g143 = _NormalStrength3;
				float3 unpack87_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_point_repeat, Offset12_g143, temp_output_126_0_g143, temp_output_129_0_g143 ), temp_output_99_0_g143 );
				unpack87_g143.z = lerp( 1, unpack87_g143.z, saturate(temp_output_99_0_g143) );
				float3 unpack88_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_point_repeat, Offset10_g143, temp_output_127_0_g143, temp_output_130_0_g143 ), temp_output_99_0_g143 );
				unpack88_g143.z = lerp( 1, unpack88_g143.z, saturate(temp_output_99_0_g143) );
				float3 unpack89_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_point_repeat, Offset15_g143, temp_output_128_0_g143, temp_output_131_0_g143 ), temp_output_99_0_g143 );
				unpack89_g143.z = lerp( 1, unpack89_g143.z, saturate(temp_output_99_0_g143) );
				float temp_output_99_0_g145 = _NormalStrength4;
				float3 unpack87_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_point_repeat, Offset12_g145, temp_output_126_0_g145, temp_output_129_0_g145 ), temp_output_99_0_g145 );
				unpack87_g145.z = lerp( 1, unpack87_g145.z, saturate(temp_output_99_0_g145) );
				float3 unpack88_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_point_repeat, Offset10_g145, temp_output_127_0_g145, temp_output_130_0_g145 ), temp_output_99_0_g145 );
				unpack88_g145.z = lerp( 1, unpack88_g145.z, saturate(temp_output_99_0_g145) );
				float3 unpack89_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_point_repeat, Offset15_g145, temp_output_128_0_g145, temp_output_131_0_g145 ), temp_output_99_0_g145 );
				unpack89_g145.z = lerp( 1, unpack89_g145.z, saturate(temp_output_99_0_g145) );
				float temp_output_99_0_g146 = _NormalStrength5;
				float3 unpack87_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_point_repeat, Offset12_g146, temp_output_126_0_g146, temp_output_129_0_g146 ), temp_output_99_0_g146 );
				unpack87_g146.z = lerp( 1, unpack87_g146.z, saturate(temp_output_99_0_g146) );
				float3 unpack88_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_point_repeat, Offset10_g146, temp_output_127_0_g146, temp_output_130_0_g146 ), temp_output_99_0_g146 );
				unpack88_g146.z = lerp( 1, unpack88_g146.z, saturate(temp_output_99_0_g146) );
				float3 unpack89_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_point_repeat, Offset15_g146, temp_output_128_0_g146, temp_output_131_0_g146 ), temp_output_99_0_g146 );
				unpack89_g146.z = lerp( 1, unpack89_g146.z, saturate(temp_output_99_0_g146) );
				float temp_output_99_0_g147 = _NormalStrength6;
				float3 unpack87_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_point_repeat, Offset12_g147, temp_output_126_0_g147, temp_output_129_0_g147 ), temp_output_99_0_g147 );
				unpack87_g147.z = lerp( 1, unpack87_g147.z, saturate(temp_output_99_0_g147) );
				float3 unpack88_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_point_repeat, Offset10_g147, temp_output_127_0_g147, temp_output_130_0_g147 ), temp_output_99_0_g147 );
				unpack88_g147.z = lerp( 1, unpack88_g147.z, saturate(temp_output_99_0_g147) );
				float3 unpack89_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_point_repeat, Offset15_g147, temp_output_128_0_g147, temp_output_131_0_g147 ), temp_output_99_0_g147 );
				unpack89_g147.z = lerp( 1, unpack89_g147.z, saturate(temp_output_99_0_g147) );
				
				float temp_output_100_0_g141 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_point_repeat, Offset12_g141, temp_output_126_0_g141, temp_output_129_0_g141 ).r * break54_g141.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_point_repeat, Offset10_g141, temp_output_127_0_g141, temp_output_130_0_g141 ).r * break54_g141.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_point_repeat, Offset15_g141, temp_output_128_0_g141, temp_output_131_0_g141 ).r * break54_g141.z ) ) * temp_output_55_0_g141 );
				float temp_output_100_0_g142 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_point_repeat, Offset12_g142, temp_output_126_0_g142, temp_output_129_0_g142 ).r * break54_g142.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_point_repeat, Offset10_g142, temp_output_127_0_g142, temp_output_130_0_g142 ).r * break54_g142.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_point_repeat, Offset15_g142, temp_output_128_0_g142, temp_output_131_0_g142 ).r * break54_g142.z ) ) * temp_output_55_0_g142 );
				float temp_output_100_0_g143 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_point_repeat, Offset12_g143, temp_output_126_0_g143, temp_output_129_0_g143 ).r * break54_g143.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_point_repeat, Offset10_g143, temp_output_127_0_g143, temp_output_130_0_g143 ).r * break54_g143.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_point_repeat, Offset15_g143, temp_output_128_0_g143, temp_output_131_0_g143 ).r * break54_g143.z ) ) * temp_output_55_0_g143 );
				float temp_output_100_0_g145 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_point_repeat, Offset12_g145, temp_output_126_0_g145, temp_output_129_0_g145 ).r * break54_g145.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_point_repeat, Offset10_g145, temp_output_127_0_g145, temp_output_130_0_g145 ).r * break54_g145.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_point_repeat, Offset15_g145, temp_output_128_0_g145, temp_output_131_0_g145 ).r * break54_g145.z ) ) * temp_output_55_0_g145 );
				float temp_output_100_0_g146 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_point_repeat, Offset12_g146, temp_output_126_0_g146, temp_output_129_0_g146 ).r * break54_g146.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_point_repeat, Offset10_g146, temp_output_127_0_g146, temp_output_130_0_g146 ).r * break54_g146.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_point_repeat, Offset15_g146, temp_output_128_0_g146, temp_output_131_0_g146 ).r * break54_g146.z ) ) * temp_output_55_0_g146 );
				float temp_output_100_0_g147 = ( ( ( ( SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_point_repeat, Offset12_g147, temp_output_126_0_g147, temp_output_129_0_g147 ).r * break54_g147.x ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_point_repeat, Offset10_g147, temp_output_127_0_g147, temp_output_130_0_g147 ).r * break54_g147.y ) ) + ( SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_point_repeat, Offset15_g147, temp_output_128_0_g147, temp_output_131_0_g147 ).r * break54_g147.z ) ) * temp_output_55_0_g147 );
				half3 temp_cast_2 = (( ( ( ( ( ( _Shiny1 * temp_output_100_0_g141 ) + ( _Shiny2 * temp_output_100_0_g142 ) ) + ( _Shiny3 * temp_output_100_0_g143 ) ) + ( _Shiny4 * temp_output_100_0_g145 ) ) + ( _Shiny5 * temp_output_100_0_g146 ) ) + ( _Shiny6 * temp_output_100_0_g147 ) )).xxx;
				
				float3 Albedo = lerpResult1262.rgb;
				float3 Normal = ( ( ( ( ( ( temp_output_55_0_g141 * ( ( ( unpack87_g141 * break54_g141.x ) + ( unpack88_g141 * break54_g141.y ) ) + ( unpack89_g141 * break54_g141.z ) ) ) + ( temp_output_55_0_g142 * ( ( ( unpack87_g142 * break54_g142.x ) + ( unpack88_g142 * break54_g142.y ) ) + ( unpack89_g142 * break54_g142.z ) ) ) ) + ( temp_output_55_0_g143 * ( ( ( unpack87_g143 * break54_g143.x ) + ( unpack88_g143 * break54_g143.y ) ) + ( unpack89_g143 * break54_g143.z ) ) ) ) + ( temp_output_55_0_g145 * ( ( ( unpack87_g145 * break54_g145.x ) + ( unpack88_g145 * break54_g145.y ) ) + ( unpack89_g145 * break54_g145.z ) ) ) ) + ( temp_output_55_0_g146 * ( ( ( unpack87_g146 * break54_g146.x ) + ( unpack88_g146 * break54_g146.y ) ) + ( unpack89_g146 * break54_g146.z ) ) ) ) + ( temp_output_55_0_g147 * ( ( ( unpack87_g147 * break54_g147.x ) + ( unpack88_g147 * break54_g147.y ) ) + ( unpack89_g147 * break54_g147.z ) ) ) );
				float3 Emission = 0;
				float3 Specular = temp_cast_2;
				float Metallic = 0;
				float Smoothness = ( ( ( ( ( ( _Smooth1 * temp_output_100_0_g141 ) + ( _Smooth2 * temp_output_100_0_g142 ) ) + ( _Smooth3 * temp_output_100_0_g143 ) ) + ( _Smooth4 * temp_output_100_0_g145 ) ) + ( _Smooth5 * temp_output_100_0_g146 ) ) + ( _Smooth6 * temp_output_100_0_g147 ) );
				float Occlusion = ( ( ( ( ( ( _OcclusionStrength1 * temp_output_100_0_g141 ) + ( _OcclusionStrength2 * temp_output_100_0_g142 ) ) + ( _OcclusionStrength3 * temp_output_100_0_g143 ) ) + ( _OcclusionStrength4 * temp_output_100_0_g145 ) ) + ( _OcclusionStrength5 * temp_output_100_0_g146 ) ) + ( _OcclusionStrength6 * temp_output_100_0_g147 ) );
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = IN.clipPos;
				inputData.shadowCoord = ShadowCoords;



				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
					inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
					inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
					inputData.normalWS = Normal;
					#endif
				#else
					inputData.normalWS = WorldNormal;
				#endif
					
				inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				inputData.viewDirectionWS = SafeNormalize( WorldViewDirection );



				#ifdef ASE_FOG
					inputData.fogCoord = InitializeInputDataFog(float4(WorldPosition, 1.0),  IN.fogFactorAndVertexLight.x);
				#endif

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				

				#ifdef _ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#else
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
					#else
						inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
					#endif
				#endif

				inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.clipPos);
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
						#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				#ifdef _DBUFFER
					ApplyDecal(IN.clipPos,
						Albedo,
						Specular,
						inputData.normalWS,
						Metallic,
						Occlusion,
						Smoothness);
				#endif

				BRDFData brdfData;
				InitializeBRDFData
				(Albedo, Metallic, Specular, Smoothness, Alpha, brdfData);

				Light mainLight = GetMainLight(inputData.shadowCoord, inputData.positionWS, inputData.shadowMask);
				half4 color;
				MixRealtimeAndBakedGI(mainLight, inputData.normalWS, inputData.bakedGI, inputData.shadowMask);
				color.rgb = GlobalIllumination(brdfData, inputData.bakedGI, Occlusion, inputData.positionWS, inputData.normalWS, inputData.viewDirectionWS);
				color.a = Alpha;
				
				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif
				
				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif
				
				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif
				
				return BRDFDataToGbuffer(brdfData, inputData, Smoothness, Emission + color.rgb);
			}

			ENDHLSL
		}

		
        Pass
        {
			
            Name "SceneSelectionPass"
            Tags { "LightMode"="SceneSelectionPass" }
        
			Cull Off

			HLSLPROGRAM
        
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_PHONG_TESSELLATION
			#define _SPECULAR_SETUP 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

        
			#pragma only_renderers d3d11 glcore gles gles3 
			#pragma vertex vert
			#pragma fragment frag

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
			#define ASE_NEEDS_VERT_NORMAL


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
        
			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _Tiling1;
			float _NormalStrength4;
			float _NormalStrength5;
			float _NormalStrength6;
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _NormalStrength3;
			float _Shiny6;
			float _Smooth2;
			float _Smooth3;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth1;
			float _NormalStrength2;
			float _NormalStrength1;
			float _FadeRange;
			float _DisplacementStrength1;
			float _Falloff;
			float _Tiling2;
			float _DisplacementStrength2;
			float _Tiling3;
			float _DisplacementStrength3;
			float _Tiling4;
			float _DisplacementStrength4;
			float _Tiling5;
			float _DisplacementStrength5;
			float _Tiling6;
			float _DisplacementStrength6;
			float _HeightParallax1;
			float _HeightParallax2;
			float _HeightParallax3;
			float _HeightParallax4;
			float _HeightParallax5;
			float _HeightParallax6;
			float _FadeOffset;
			float _OcclusionStrength5;
			float _OcclusionStrength6;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_Displacement1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Displacement2);
			TEXTURE2D(_Displacement3);
			TEXTURE2D(_Displacement4);
			TEXTURE2D(_Displacement5);
			TEXTURE2D(_Displacement6);


			
			int _ObjectId;
			int _PassValue;

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};
        
			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);


				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float3 break372 = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float temp_output_118_0_g141 = _DisplacementStrength1;
				float3 unpack104_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_4_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack104_g141.z = lerp( 1, unpack104_g141.z, saturate(temp_output_118_0_g141) );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float3 unpack105_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_5_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack105_g141.z = lerp( 1, unpack105_g141.z, saturate(temp_output_118_0_g141) );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float3 unpack106_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_6_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack106_g141.z = lerp( 1, unpack106_g141.z, saturate(temp_output_118_0_g141) );
				float temp_output_55_0_g141 = v.ase_color.r;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float temp_output_118_0_g142 = _DisplacementStrength2;
				float3 unpack104_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_4_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack104_g142.z = lerp( 1, unpack104_g142.z, saturate(temp_output_118_0_g142) );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float3 unpack105_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_5_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack105_g142.z = lerp( 1, unpack105_g142.z, saturate(temp_output_118_0_g142) );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float3 unpack106_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_6_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack106_g142.z = lerp( 1, unpack106_g142.z, saturate(temp_output_118_0_g142) );
				float temp_output_55_0_g142 = v.ase_color.g;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float temp_output_118_0_g143 = _DisplacementStrength3;
				float3 unpack104_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_4_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack104_g143.z = lerp( 1, unpack104_g143.z, saturate(temp_output_118_0_g143) );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float3 unpack105_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_5_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack105_g143.z = lerp( 1, unpack105_g143.z, saturate(temp_output_118_0_g143) );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float3 unpack106_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_6_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack106_g143.z = lerp( 1, unpack106_g143.z, saturate(temp_output_118_0_g143) );
				float temp_output_55_0_g143 = v.ase_color.b;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float temp_output_118_0_g145 = _DisplacementStrength4;
				float3 unpack104_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_4_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack104_g145.z = lerp( 1, unpack104_g145.z, saturate(temp_output_118_0_g145) );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float3 unpack105_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_5_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack105_g145.z = lerp( 1, unpack105_g145.z, saturate(temp_output_118_0_g145) );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float3 unpack106_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_6_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack106_g145.z = lerp( 1, unpack106_g145.z, saturate(temp_output_118_0_g145) );
				float temp_output_55_0_g145 = v.ase_color.a;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float temp_output_118_0_g146 = _DisplacementStrength5;
				float3 unpack104_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_4_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack104_g146.z = lerp( 1, unpack104_g146.z, saturate(temp_output_118_0_g146) );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float3 unpack105_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_5_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack105_g146.z = lerp( 1, unpack105_g146.z, saturate(temp_output_118_0_g146) );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float3 unpack106_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_6_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack106_g146.z = lerp( 1, unpack106_g146.z, saturate(temp_output_118_0_g146) );
				float temp_output_55_0_g146 = v.ase_texcoord1.x;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float temp_output_118_0_g147 = _DisplacementStrength6;
				float3 unpack104_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_4_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack104_g147.z = lerp( 1, unpack104_g147.z, saturate(temp_output_118_0_g147) );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float3 unpack105_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_5_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack105_g147.z = lerp( 1, unpack105_g147.z, saturate(temp_output_118_0_g147) );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float3 unpack106_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_6_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack106_g147.z = lerp( 1, unpack106_g147.z, saturate(temp_output_118_0_g147) );
				float temp_output_55_0_g147 = v.ase_texcoord1.y;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = max( max( max( max( max( ( ( ( ( ( unpack104_g141.r * break54_g141.x ) + ( unpack105_g141.r * break54_g141.y ) ) + ( unpack106_g141.r * break54_g141.z ) ) * v.ase_normal ) * temp_output_55_0_g141 ) , ( ( ( ( ( unpack104_g142.r * break54_g142.x ) + ( unpack105_g142.r * break54_g142.y ) ) + ( unpack106_g142.r * break54_g142.z ) ) * v.ase_normal ) * temp_output_55_0_g142 ) ) , ( ( ( ( ( unpack104_g143.r * break54_g143.x ) + ( unpack105_g143.r * break54_g143.y ) ) + ( unpack106_g143.r * break54_g143.z ) ) * v.ase_normal ) * temp_output_55_0_g143 ) ) , ( ( ( ( ( unpack104_g145.r * break54_g145.x ) + ( unpack105_g145.r * break54_g145.y ) ) + ( unpack106_g145.r * break54_g145.z ) ) * v.ase_normal ) * temp_output_55_0_g145 ) ) , ( ( ( ( ( unpack104_g146.r * break54_g146.x ) + ( unpack105_g146.r * break54_g146.y ) ) + ( unpack106_g146.r * break54_g146.z ) ) * v.ase_normal ) * temp_output_55_0_g146 ) ) , ( ( ( ( ( unpack104_g147.r * break54_g147.x ) + ( unpack105_g147.r * break54_g147.y ) ) + ( unpack106_g147.r * break54_g147.z ) ) * v.ase_normal ) * temp_output_55_0_g147 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				o.clipPos = TransformWorldToHClip(positionWS);
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_color = v.ase_color;
				o.ase_texcoord1 = v.ase_texcoord1;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif
			
			half4 frag(VertexOutput IN ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				
				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = 0.5;


				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				return outColor;
			}

			ENDHLSL
        }

		
        Pass
        {
			
            Name "ScenePickingPass"
            Tags { "LightMode"="Picking" }
        
			HLSLPROGRAM

			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_PHONG_TESSELLATION
			#define _SPECULAR_SETUP 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma only_renderers d3d11 glcore gles gles3 
			#pragma vertex vert
			#pragma fragment frag

        
			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY
			

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
			#define ASE_NEEDS_VERT_NORMAL


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
        
			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _Tiling1;
			float _NormalStrength4;
			float _NormalStrength5;
			float _NormalStrength6;
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _NormalStrength3;
			float _Shiny6;
			float _Smooth2;
			float _Smooth3;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth1;
			float _NormalStrength2;
			float _NormalStrength1;
			float _FadeRange;
			float _DisplacementStrength1;
			float _Falloff;
			float _Tiling2;
			float _DisplacementStrength2;
			float _Tiling3;
			float _DisplacementStrength3;
			float _Tiling4;
			float _DisplacementStrength4;
			float _Tiling5;
			float _DisplacementStrength5;
			float _Tiling6;
			float _DisplacementStrength6;
			float _HeightParallax1;
			float _HeightParallax2;
			float _HeightParallax3;
			float _HeightParallax4;
			float _HeightParallax5;
			float _HeightParallax6;
			float _FadeOffset;
			float _OcclusionStrength5;
			float _OcclusionStrength6;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_Displacement1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Displacement2);
			TEXTURE2D(_Displacement3);
			TEXTURE2D(_Displacement4);
			TEXTURE2D(_Displacement5);
			TEXTURE2D(_Displacement6);


			
        
			float4 _SelectionID;

        
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};
        
			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);


				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float3 break372 = ase_worldPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float temp_output_2_0_g141 = _Tiling1;
				float2 temp_output_4_0_g141 = ( appendResult379 * temp_output_2_0_g141 );
				float temp_output_118_0_g141 = _DisplacementStrength1;
				float3 unpack104_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_4_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack104_g141.z = lerp( 1, unpack104_g141.z, saturate(temp_output_118_0_g141) );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 temp_output_596_0 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break54_g141 = temp_output_596_0;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 temp_output_5_0_g141 = ( appendResult380 * temp_output_2_0_g141 );
				float3 unpack105_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_5_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack105_g141.z = lerp( 1, unpack105_g141.z, saturate(temp_output_118_0_g141) );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 temp_output_6_0_g141 = ( appendResult381 * temp_output_2_0_g141 );
				float3 unpack106_g141 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement1, sampler_point_repeat, temp_output_6_0_g141, 0.0 ), temp_output_118_0_g141 );
				unpack106_g141.z = lerp( 1, unpack106_g141.z, saturate(temp_output_118_0_g141) );
				float temp_output_55_0_g141 = v.ase_color.r;
				float temp_output_2_0_g142 = _Tiling2;
				float2 temp_output_4_0_g142 = ( appendResult379 * temp_output_2_0_g142 );
				float temp_output_118_0_g142 = _DisplacementStrength2;
				float3 unpack104_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_4_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack104_g142.z = lerp( 1, unpack104_g142.z, saturate(temp_output_118_0_g142) );
				float3 break54_g142 = temp_output_596_0;
				float2 temp_output_5_0_g142 = ( appendResult380 * temp_output_2_0_g142 );
				float3 unpack105_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_5_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack105_g142.z = lerp( 1, unpack105_g142.z, saturate(temp_output_118_0_g142) );
				float2 temp_output_6_0_g142 = ( appendResult381 * temp_output_2_0_g142 );
				float3 unpack106_g142 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement2, sampler_point_repeat, temp_output_6_0_g142, 0.0 ), temp_output_118_0_g142 );
				unpack106_g142.z = lerp( 1, unpack106_g142.z, saturate(temp_output_118_0_g142) );
				float temp_output_55_0_g142 = v.ase_color.g;
				float temp_output_2_0_g143 = _Tiling3;
				float2 temp_output_4_0_g143 = ( appendResult379 * temp_output_2_0_g143 );
				float temp_output_118_0_g143 = _DisplacementStrength3;
				float3 unpack104_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_4_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack104_g143.z = lerp( 1, unpack104_g143.z, saturate(temp_output_118_0_g143) );
				float3 break54_g143 = temp_output_596_0;
				float2 temp_output_5_0_g143 = ( appendResult380 * temp_output_2_0_g143 );
				float3 unpack105_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_5_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack105_g143.z = lerp( 1, unpack105_g143.z, saturate(temp_output_118_0_g143) );
				float2 temp_output_6_0_g143 = ( appendResult381 * temp_output_2_0_g143 );
				float3 unpack106_g143 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement3, sampler_point_repeat, temp_output_6_0_g143, 0.0 ), temp_output_118_0_g143 );
				unpack106_g143.z = lerp( 1, unpack106_g143.z, saturate(temp_output_118_0_g143) );
				float temp_output_55_0_g143 = v.ase_color.b;
				float temp_output_2_0_g145 = _Tiling4;
				float2 temp_output_4_0_g145 = ( appendResult379 * temp_output_2_0_g145 );
				float temp_output_118_0_g145 = _DisplacementStrength4;
				float3 unpack104_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_4_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack104_g145.z = lerp( 1, unpack104_g145.z, saturate(temp_output_118_0_g145) );
				float3 break54_g145 = temp_output_596_0;
				float2 temp_output_5_0_g145 = ( appendResult380 * temp_output_2_0_g145 );
				float3 unpack105_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_5_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack105_g145.z = lerp( 1, unpack105_g145.z, saturate(temp_output_118_0_g145) );
				float2 temp_output_6_0_g145 = ( appendResult381 * temp_output_2_0_g145 );
				float3 unpack106_g145 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement4, sampler_point_repeat, temp_output_6_0_g145, 0.0 ), temp_output_118_0_g145 );
				unpack106_g145.z = lerp( 1, unpack106_g145.z, saturate(temp_output_118_0_g145) );
				float temp_output_55_0_g145 = v.ase_color.a;
				float temp_output_2_0_g146 = _Tiling5;
				float2 temp_output_4_0_g146 = ( appendResult379 * temp_output_2_0_g146 );
				float temp_output_118_0_g146 = _DisplacementStrength5;
				float3 unpack104_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_4_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack104_g146.z = lerp( 1, unpack104_g146.z, saturate(temp_output_118_0_g146) );
				float3 break54_g146 = temp_output_596_0;
				float2 temp_output_5_0_g146 = ( appendResult380 * temp_output_2_0_g146 );
				float3 unpack105_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_5_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack105_g146.z = lerp( 1, unpack105_g146.z, saturate(temp_output_118_0_g146) );
				float2 temp_output_6_0_g146 = ( appendResult381 * temp_output_2_0_g146 );
				float3 unpack106_g146 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement5, sampler_point_repeat, temp_output_6_0_g146, 0.0 ), temp_output_118_0_g146 );
				unpack106_g146.z = lerp( 1, unpack106_g146.z, saturate(temp_output_118_0_g146) );
				float temp_output_55_0_g146 = v.ase_texcoord1.x;
				float temp_output_2_0_g147 = _Tiling6;
				float2 temp_output_4_0_g147 = ( appendResult379 * temp_output_2_0_g147 );
				float temp_output_118_0_g147 = _DisplacementStrength6;
				float3 unpack104_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_4_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack104_g147.z = lerp( 1, unpack104_g147.z, saturate(temp_output_118_0_g147) );
				float3 break54_g147 = temp_output_596_0;
				float2 temp_output_5_0_g147 = ( appendResult380 * temp_output_2_0_g147 );
				float3 unpack105_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_5_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack105_g147.z = lerp( 1, unpack105_g147.z, saturate(temp_output_118_0_g147) );
				float2 temp_output_6_0_g147 = ( appendResult381 * temp_output_2_0_g147 );
				float3 unpack106_g147 = UnpackNormalScale( SAMPLE_TEXTURE2D_LOD( _Displacement6, sampler_point_repeat, temp_output_6_0_g147, 0.0 ), temp_output_118_0_g147 );
				unpack106_g147.z = lerp( 1, unpack106_g147.z, saturate(temp_output_118_0_g147) );
				float temp_output_55_0_g147 = v.ase_texcoord1.y;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = max( max( max( max( max( ( ( ( ( ( unpack104_g141.r * break54_g141.x ) + ( unpack105_g141.r * break54_g141.y ) ) + ( unpack106_g141.r * break54_g141.z ) ) * v.ase_normal ) * temp_output_55_0_g141 ) , ( ( ( ( ( unpack104_g142.r * break54_g142.x ) + ( unpack105_g142.r * break54_g142.y ) ) + ( unpack106_g142.r * break54_g142.z ) ) * v.ase_normal ) * temp_output_55_0_g142 ) ) , ( ( ( ( ( unpack104_g143.r * break54_g143.x ) + ( unpack105_g143.r * break54_g143.y ) ) + ( unpack106_g143.r * break54_g143.z ) ) * v.ase_normal ) * temp_output_55_0_g143 ) ) , ( ( ( ( ( unpack104_g145.r * break54_g145.x ) + ( unpack105_g145.r * break54_g145.y ) ) + ( unpack106_g145.r * break54_g145.z ) ) * v.ase_normal ) * temp_output_55_0_g145 ) ) , ( ( ( ( ( unpack104_g146.r * break54_g146.x ) + ( unpack105_g146.r * break54_g146.y ) ) + ( unpack106_g146.r * break54_g146.z ) ) * v.ase_normal ) * temp_output_55_0_g146 ) ) , ( ( ( ( ( unpack104_g147.r * break54_g147.x ) + ( unpack105_g147.r * break54_g147.y ) ) + ( unpack106_g147.r * break54_g147.z ) ) * v.ase_normal ) * temp_output_55_0_g147 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				o.clipPos = TransformWorldToHClip(positionWS);
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord1 : TEXCOORD1;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_color = v.ase_color;
				o.ase_texcoord1 = v.ase_texcoord1;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				
				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = 0.5;


				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;
				outColor = _SelectionID;
				
				return outColor;
			}
        
			ENDHLSL
        }
		
	}
	
	CustomEditor "UnityEditor.ShaderGraphLitGUI"
	Fallback "Hidden/InternalErrorShader"
	
}
/*ASEBEGIN
Version=18935
215;74;1920;877;7504.964;343.821;1;True;False
Node;AmplifyShaderEditor.CommentaryNode;611;-10105.87,-24.41046;Inherit;False;1094.51;860.2861;;20;610;372;592;593;594;595;598;599;597;600;601;602;606;607;609;596;343;380;381;379;Triplanar UV;1,1,1,1;0;0
Node;AmplifyShaderEditor.WorldNormalVector;593;-10049.87,111.5897;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;592;-10055.87,25.5897;Inherit;False;Property;_Falloff;Fall off;72;1;[Header];Create;True;1;Other Parameter;0;0;False;0;False;1.56;1.56;0;4;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;594;-9800.878,108.59;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SignOpNode;601;-9795.583,403.6929;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode;595;-9653.88,90.58943;Inherit;False;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;343;-10015.19,618.5162;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.BreakToComponentsNode;602;-9646.183,401.274;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.BreakToComponentsNode;597;-9663.879,197.5898;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleAddOpNode;598;-9515.883,190.5898;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;600;-9665.879,320.589;Inherit;False;Constant;_Float0;Float 0;30;0;Create;True;0;0;0;False;0;False;1E-05;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;372;-9728.821,619.8218;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.NegateNode;609;-9559.674,544.6841;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;607;-9399.657,511.4995;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1392;-8746.344,-3150.463;Inherit;False;315.998;1467.114;;6;46;42;44;43;45;47;Albedo Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1414;-8776.867,-1598.045;Inherit;False;364.3984;691.3733;;6;1408;1409;1410;1411;1412;1413;Tiling;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-9407.96,620.5372;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;606;-9407.957,410.756;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1394;-7539.919,-3144.737;Inherit;False;312.3711;1458.015;;6;913;965;901;958;920;896;Occlusion Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1169;-9823.978,-643.5247;Inherit;False;461.7822;435.8462;;4;464;113;114;1174;Mesh Data;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1401;-6337.83,-3132.576;Inherit;False;314.9321;1468.629;;6;892;1396;1397;1398;1399;1400;Height Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1393;-8128.66,-3162.638;Inherit;False;321.5811;1470.914;;6;541;555;545;503;507;498;Normal Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1403;-7590.708,-1556.815;Inherit;False;363.6243;672.551;;6;1025;1026;1027;1028;1029;1030;Routh;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1404;-7607.318,-786.7233;Inherit;False;368.8105;687.964;;6;1045;1046;1047;1048;1049;1050;Smooth;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1395;-6966.974,-3170.232;Inherit;False;322.6831;1464.356;;6;1090;1117;1125;1114;1113;1123;Displacement Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1402;-6365.258,-1546.685;Inherit;False;365.0801;972.5039;;6;640;463;726;741;686;663;Height Parallex;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;599;-9513.883,309.5888;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1407;-8193.678,-1560.281;Inherit;False;355.7516;690.6152;;6;613;614;615;616;617;618;Normal;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1498;-8561.639,-567.2499;Inherit;False;257.5771;521.2003;;5;1495;1494;1493;1496;1497;Samplers;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1405;-7586.507,10.90777;Inherit;False;365.3575;664.938;;6;1076;1077;1078;1079;1080;1081;Occlusion;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1406;-6997.524,-1572.429;Inherit;False;355.002;713.998;;6;1153;1168;1167;1166;1165;1152;Displacement;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerStateNode;1497;-8511.639,-157.0496;Inherit;False;0;0;0;0;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1026;-7528.555,-1413.438;Inherit;False;Property;_Shiny2;Shiny 2;20;0;Create;True;0;0;0;False;0;False;0.1;0.13;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;503;-8078.66,-2874.378;Inherit;True;Property;_Normal2;Normal 2;13;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;8ae71100421dfea42bfa470977e74f79;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1025;-7536.066,-1506.815;Inherit;False;Property;_Shiny1;Shiny 1;8;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1114;-6914.903,-2890.827;Inherit;True;Property;_Displacement2;Displacement 2;16;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;aacaf9e80a8410a498b89b7012536647;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.DynamicAppendNode;379;-9200.373,414.6407;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerStateNode;1496;-8510.209,-252.7344;Inherit;False;0;0;0;0;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.TexturePropertyNode;1090;-6915.403,-3120.232;Inherit;True;Property;_Displacement1;Displacement 1;4;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;ee02344ea46b19d4495ca3724c2b98c8;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1046;-7553.1,-633.405;Inherit;False;Property;_Smooth2;Smooth 2;21;0;Create;True;0;0;0;False;0;False;0.1;1.06;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;464;-9554.013,-580.5887;Float;False;Tangent;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TexturePropertyNode;42;-8687.057,-3100.464;Inherit;True;Property;_Albedo1;Albedo 1;0;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;ace22d21483e490428f552c9a83ec097;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;640;-6311.472,-1411.725;Float;False;Property;_HeightParallax2;Height Parallax 2;22;0;Create;True;0;0;0;False;0;False;0;0;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;380;-9185.863,515.5037;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1409;-8712.472,-1449.086;Inherit;False;Property;_Tiling2;Tiling 2;19;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;113;-9762.235,-593.5246;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleDivideOpNode;596;-9350.883,82.58967;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1045;-7550.279,-736.7233;Inherit;False;Property;_Smooth1;Smooth 1;9;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;614;-8138.443,-1413.042;Inherit;False;Property;_NormalStrength2;Normal Strength 2;17;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1076;-7536.507,60.90768;Inherit;False;Property;_OcclusionStrength1;Occlusion Strength 1;6;0;Create;True;0;0;0;False;0;False;0.1;2.36;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;1495;-8503.062,-348.4926;Inherit;False;0;0;0;0;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.TexturePropertyNode;958;-7489.919,-2852.286;Inherit;True;Property;_Occlusion2;Occlusion 2;14;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;aacaf9e80a8410a498b89b7012536647;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.DynamicAppendNode;381;-9184.359,606.8732;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1408;-8716.074,-1548.045;Inherit;False;Property;_Tiling1;Tiling 1;7;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;1493;-8503.271,-517.2499;Inherit;False;0;0;0;0;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.NormalVertexDataNode;1174;-9558.643,-386.024;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1153;-6947.526,-1522.429;Inherit;False;Property;_DisplacementStrength1;Displacement Strength 1;11;0;Create;True;0;0;0;False;0;False;0.1;0.21;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1168;-6943.525,-1425.429;Inherit;False;Property;_DisplacementStrength2;Displacement Strength 2;23;0;Create;True;0;0;0;False;0;False;0.1;0.166;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;1494;-8504.489,-437.0034;Inherit;False;0;0;0;0;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.TexturePropertyNode;965;-7484.723,-3094.737;Inherit;True;Property;_Occlusion1;Occlusion 1;2;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;9fd8b2202bbe9c94eb3313c3f871bc03;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;463;-6315.258,-1522.927;Float;False;Property;_HeightParallax1;Height Parallax 1;10;0;Create;True;0;0;0;False;0;False;0;0.0343;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;545;-8065.471,-3112.638;Inherit;True;Property;_Normal1;Normal 1;1;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;86d916eaa43f47148959f0d9fb5b5cf1;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;43;-8686.115,-2864.229;Inherit;True;Property;_Albedo2;Albedo 2;12;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;c0a45b109fd65b046936482efba94d21;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;892;-6287.322,-3082.577;Inherit;True;Property;_Height1;Height 1;3;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;None;ee02344ea46b19d4495ca3724c2b98c8;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;613;-8140.561,-1510.281;Inherit;False;Property;_NormalStrength1;Normal Strength 1;5;0;Create;True;0;0;0;False;0;False;1;0.757;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1077;-7534.451,155.458;Inherit;False;Property;_OcclusionStrength2;Occlusion Strength 2;18;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1396;-6284.134,-2852.805;Inherit;True;Property;_Height2;Height 2;15;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;None;e9f0beb985338621a8cd6be88de9115f;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;1397;-6287.83,-2618.169;Inherit;True;Property;_Height3;Height 3;27;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;None;0bcd6d7ff60ab6e4981683a3351a46c1;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1027;-7527.082,-1309.44;Inherit;False;Property;_Shiny3;Shiny 3;32;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;663;-6300.178,-1253.725;Float;False;Property;_HeightParallax3;Height Parallax 3;34;0;Create;True;0;0;0;False;0;False;0;0.0025;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1078;-7523.434,261.1033;Inherit;False;Property;_OcclusionStrength3;Occlusion Strength 3;30;0;Create;True;0;0;0;False;0;False;0.1;0.86;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;44;-8688.63,-2608.887;Inherit;True;Property;_Albedo3;Albedo 3;24;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;d4193c885fab53849a003d859b9fd170;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1410;-8726.865,-1346.53;Inherit;False;Property;_Tiling3;Tiling 3;31;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1167;-6947.526,-1323.43;Inherit;False;Property;_DisplacementStrength3;Displacement Strength 3;35;0;Create;True;0;0;0;False;0;False;0.1;-0.542;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;615;-8137.937,-1313.949;Inherit;False;Property;_NormalStrength3;Normal Strength 3;29;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;913;-7486.297,-2603.16;Inherit;True;Property;_Occlusion3;Occlusion 3;26;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;c43e618f497cb96429438f86915af477;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1047;-7557.318,-534.7684;Inherit;False;Property;_Smooth3;Smooth 3;33;0;Create;True;0;0;0;False;0;False;0.1;0.76;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1586;-6442.152,-90.46124;Inherit;False;Triplanar-Node-Displacement_1-Section;-1;;141;f4560ac451a50fd00b5efa965c6983ed;0;24;1;SAMPLER2D;0;False;36;SAMPLERSTATE;0;False;97;SAMPLER2D;0;False;2;FLOAT;0.1;False;98;SAMPLERSTATE;0;False;99;FLOAT;0;False;37;SAMPLER2D;0;False;35;SAMPLERSTATE;0;False;34;FLOAT;0;False;80;SAMPLER2D;0;False;79;SAMPLERSTATE;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;117;SAMPLER2D;0;False;116;SAMPLERSTATE;0;False;118;FLOAT;0;False;119;FLOAT3;0,0,0;False;55;FLOAT;0;False;53;FLOAT3;0,0,0;False;102;FLOAT3;0,0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;9;FLOAT2;0,0;False;6;COLOR;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122;FLOAT3;125
Node;AmplifyShaderEditor.TexturePropertyNode;1117;-6916.974,-2628.655;Inherit;True;Property;_Displacement3;Displacement 3;28;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;0bcd6d7ff60ab6e4981683a3351a46c1;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;541;-8067.042,-2613.596;Inherit;True;Property;_Normal3;Normal 3;25;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;4af0b502770203d41b2dccc536456c35;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode;1585;-5772.664,-65.03292;Inherit;False;Triplanar-Node-Displacement_1-Section;-1;;142;f4560ac451a50fd00b5efa965c6983ed;0;24;1;SAMPLER2D;0;False;36;SAMPLERSTATE;0;False;97;SAMPLER2D;0;False;2;FLOAT;0.1;False;98;SAMPLERSTATE;0;False;99;FLOAT;0;False;37;SAMPLER2D;0;False;35;SAMPLERSTATE;0;False;34;FLOAT;0;False;80;SAMPLER2D;0;False;79;SAMPLERSTATE;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;117;SAMPLER2D;0;False;116;SAMPLERSTATE;0;False;118;FLOAT;0;False;119;FLOAT3;0,0,0;False;55;FLOAT;0;False;53;FLOAT3;0,0,0;False;102;FLOAT3;0,0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;9;FLOAT2;0,0;False;6;COLOR;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122;FLOAT3;125
Node;AmplifyShaderEditor.TexturePropertyNode;1398;-6276.744,-2381.689;Inherit;True;Property;_Height4;Height 4;39;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;None;152c3965dee21ca47841692981204d1b;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1166;-6942.524,-1209.43;Inherit;False;Property;_DisplacementStrength4;Displacement Strength 4;47;0;Create;True;0;0;0;False;0;False;0.1;-0.3;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;507;-8066.185,-2379.773;Inherit;True;Property;_Normal4;Normal 4;37;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;8ac5011d0c027884c9b3a0fc68382066;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;616;-8143.688,-1206.431;Inherit;False;Property;_NormalStrength4;Normal Strength 4;41;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1048;-7545.875,-422.3913;Inherit;False;Property;_Smooth4;Smooth 4;45;0;Create;True;0;0;0;False;0;False;0.1;0.44;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1411;-8712.476,-1236.778;Inherit;False;Property;_Tiling4;Tiling 4;43;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;45;-8682.124,-2371.434;Inherit;True;Property;_Albedo4;Albedo 4;36;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;53fd6e83a5f2d1841959744abed92a6b;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMaxOpNode;1519;-3932.727,530.7884;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode;1113;-6911.176,-2401.817;Inherit;True;Property;_Displacement4;Displacement 4;40;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;0db7eaa826100804c98ac7de7aa42dbe;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;686;-6311.723,-1072.132;Float;False;Property;_HeightParallax4;Height Parallax 4;46;0;Create;True;0;0;0;False;0;False;0;0.01;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;920;-7489.356,-2371.611;Inherit;True;Property;_Occlusion4;Occlusion 4;38;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;0db7eaa826100804c98ac7de7aa42dbe;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1028;-7534.24,-1208.884;Inherit;False;Property;_Shiny4;Shiny 4;44;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1587;-5057.788,-57.50799;Inherit;False;Triplanar-Node-Displacement_1-Section;-1;;143;f4560ac451a50fd00b5efa965c6983ed;0;24;1;SAMPLER2D;0;False;36;SAMPLERSTATE;0;False;97;SAMPLER2D;0;False;2;FLOAT;0.1;False;98;SAMPLERSTATE;0;False;99;FLOAT;0;False;37;SAMPLER2D;0;False;35;SAMPLERSTATE;0;False;34;FLOAT;0;False;80;SAMPLER2D;0;False;79;SAMPLERSTATE;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;117;SAMPLER2D;0;False;116;SAMPLERSTATE;0;False;118;FLOAT;0;False;119;FLOAT3;0,0,0;False;55;FLOAT;0;False;53;FLOAT3;0,0,0;False;102;FLOAT3;0,0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;9;FLOAT2;0,0;False;6;COLOR;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122;FLOAT3;125
Node;AmplifyShaderEditor.RangedFloatNode;1079;-7522.659,357.225;Inherit;False;Property;_OcclusionStrength4;Occlusion Strength 4;42;0;Create;True;0;0;0;False;0;False;0.1;0.5;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;617;-8143.544,-1098.233;Inherit;False;Property;_NormalStrength5;Normal Strength 5;53;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1080;-7521.148,459.2202;Inherit;False;Property;_OcclusionStrength5;Occlusion Strength 5;54;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;901;-7480.01,-2134.197;Inherit;True;Property;_Occlusion5;Occlusion 5;50;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;904abe3a0a0047448aaf87399172740a;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1029;-7540.706,-1106.443;Inherit;False;Property;_Shiny5;Shiny 5;56;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1590;-6404.763,679.9413;Inherit;False;Triplanar-Node-Displacement_1-Section;-1;;145;f4560ac451a50fd00b5efa965c6983ed;0;24;1;SAMPLER2D;0;False;36;SAMPLERSTATE;0;False;97;SAMPLER2D;0;False;2;FLOAT;0.1;False;98;SAMPLERSTATE;0;False;99;FLOAT;0;False;37;SAMPLER2D;0;False;35;SAMPLERSTATE;0;False;34;FLOAT;0;False;80;SAMPLER2D;0;False;79;SAMPLERSTATE;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;117;SAMPLER2D;0;False;116;SAMPLERSTATE;0;False;118;FLOAT;0;False;119;FLOAT3;0,0,0;False;55;FLOAT;0;False;53;FLOAT3;0,0,0;False;102;FLOAT3;0,0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;9;FLOAT2;0,0;False;6;COLOR;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122;FLOAT3;125
Node;AmplifyShaderEditor.RangedFloatNode;1049;-7542.226,-327.2916;Inherit;False;Property;_Smooth5;Smooth 5;57;0;Create;True;0;0;0;False;0;False;0.1;0.21;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1399;-6276.746,-2135.97;Inherit;True;Property;_Height5;Height 5;51;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;None;48d5da9476be181878c0de6e31565719;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexCoordVertexDataNode;114;-9773.975,-366.6788;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1412;-8726.87,-1132.423;Inherit;False;Property;_Tiling5;Tiling 5;55;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1125;-6910.693,-2159.698;Inherit;True;Property;_Displacement5;Displacement 5;52;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;48d5da9476be181878c0de6e31565719;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1165;-6945.526,-1094.43;Inherit;False;Property;_DisplacementStrength5;Displacement Strength 5;59;0;Create;True;0;0;0;False;0;False;0.1;-0.345;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;741;-6312.488,-898.2796;Float;False;Property;_HeightParallax5;Height Parallax 5;58;0;Create;True;0;0;0;False;0;False;0;0.015;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1520;-3787.587,558.623;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode;46;-8682.344,-2139.921;Inherit;True;Property;_Albedo5;Albedo 5;48;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;c787bdaf6230f4b48a70eca7221420ad;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;555;-8060.755,-2144.63;Inherit;True;Property;_Normal5;Normal 5;49;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;7ba1d8f065cc0624cbe9f611dfad9839;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1050;-7538.508,-214.7586;Inherit;False;Property;_Smooth6;Smooth 6;69;0;Create;True;0;0;0;False;0;False;0.1;0.2;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1081;-7525.587,559.8438;Inherit;False;Property;_OcclusionStrength6;Occlusion Strength 6;66;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;498;-8059.078,-1921.728;Inherit;True;Property;_Normal6;Normal 6;61;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;f7d983e300c633049b2eb105f4904746;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1030;-7534.044,-1000.264;Inherit;False;Property;_Shiny6;Shiny 6;68;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;896;-7479.548,-1916.729;Inherit;True;Property;_Occlusion6;Occlusion 6;62;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;f073d69c92cf03d4b837236064595ff3;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1152;-6945.524,-974.43;Inherit;False;Property;_DisplacementStrength6;Displacement Strength 6;71;0;Create;True;0;0;0;False;0;False;1;-0.1;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1123;-6896.291,-1935.884;Inherit;True;Property;_Displacement6;Displacement 6;64;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;3498a9303f18ab745bae8701afa3de6e;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1413;-8719.673,-1022.669;Inherit;False;Property;_Tiling6;Tiling 6;67;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1400;-6274.897,-1893.948;Inherit;True;Property;_Height6;Height 6;63;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;None;3c450cff8f4a1405da9cc1fa98f04f3c;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;47;-8684.957,-1913.349;Inherit;True;Property;_Albedo6;Albedo 6;60;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;97d17f5fbbbb20f43b0b696444e5484b;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;726;-6310.355,-716.4199;Float;False;Property;_HeightParallax6;Height Parallax 6;70;0;Create;True;0;0;0;False;0;False;0;0.005;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1521;-3628.534,592.4221;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1588;-5742.563,694.9916;Inherit;False;Triplanar-Node-Displacement_1-Section;-1;;146;f4560ac451a50fd00b5efa965c6983ed;0;24;1;SAMPLER2D;0;False;36;SAMPLERSTATE;0;False;97;SAMPLER2D;0;False;2;FLOAT;0.1;False;98;SAMPLERSTATE;0;False;99;FLOAT;0;False;37;SAMPLER2D;0;False;35;SAMPLERSTATE;0;False;34;FLOAT;0;False;80;SAMPLER2D;0;False;79;SAMPLERSTATE;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;117;SAMPLER2D;0;False;116;SAMPLERSTATE;0;False;118;FLOAT;0;False;119;FLOAT3;0,0,0;False;55;FLOAT;0;False;53;FLOAT3;0,0,0;False;102;FLOAT3;0,0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;9;FLOAT2;0,0;False;6;COLOR;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122;FLOAT3;125
Node;AmplifyShaderEditor.RangedFloatNode;618;-8138.661,-985.665;Inherit;False;Property;_NormalStrength6;Normal Strength 6;65;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1589;-5027.688,717.5662;Inherit;False;Triplanar-Node-Displacement_1-Section;-1;;147;f4560ac451a50fd00b5efa965c6983ed;0;24;1;SAMPLER2D;0;False;36;SAMPLERSTATE;0;False;97;SAMPLER2D;0;False;2;FLOAT;0.1;False;98;SAMPLERSTATE;0;False;99;FLOAT;0;False;37;SAMPLER2D;0;False;35;SAMPLERSTATE;0;False;34;FLOAT;0;False;80;SAMPLER2D;0;False;79;SAMPLERSTATE;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;117;SAMPLER2D;0;False;116;SAMPLERSTATE;0;False;118;FLOAT;0;False;119;FLOAT3;0,0,0;False;55;FLOAT;0;False;53;FLOAT3;0,0,0;False;102;FLOAT3;0,0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;9;FLOAT2;0,0;False;6;COLOR;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122;FLOAT3;125
Node;AmplifyShaderEditor.SimpleMaxOpNode;1522;-3467.49,622.2452;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1263;-3673.416,1612.106;Inherit;False;1860.958;464.9319;;8;1255;1256;1257;1258;1259;1260;1261;1262;Fade Effect;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1518;-3300.04,538.4824;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1423;-3620.925,-2.44751;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1508;-3770.102,188.9923;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1514;-3935.234,409.5341;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1513;-3767.286,310.5454;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1256;-2430.482,1865.039;Inherit;False;Property;_FadeColor;Fade Color;75;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.6415094,0.6415094,0.6415094,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1258;-2841.421,1720.181;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1509;-3452.078,375.0199;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1512;-3927.28,284.278;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1425;-3298.553,64.41474;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1257;-3105.419,1869.181;Inherit;False;Property;_FadeRange;Fade Range;74;0;Create;True;0;0;0;False;0;False;0.5;0.9;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1260;-3546.22,1662.107;Float;False;1;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1505;-3294.902,291.6738;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1515;-3775.24,435.8015;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1255;-3106.419,1682.181;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1517;-3460.032,500.2755;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1506;-3617.274,224.8115;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1261;-2581.423,1741.181;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1424;-3458.545,26.20776;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1262;-1994.461,1790.371;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1422;-3773.753,-38.26654;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1503;-3763.462,80.56384;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1502;-3923.454,54.29645;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1507;-3930.095,162.7249;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1523;-3320.364,646.1031;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1516;-3622.412,471.6206;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1259;-3623.416,1902.181;Inherit;False;Property;_FadeOffset;Fade Offset;73;0;Create;True;1;Fade;0;0;False;0;False;0.5;2.61;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1510;-3292.086,413.2269;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1511;-3614.458,346.3646;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1421;-3933.745,-64.53386;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1504;-3454.894,253.4668;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1499;-3448.254,145.0383;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1500;-3288.262,183.2453;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1501;-3610.634,116.383;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;6;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=DepthNormals;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1;-1532.439,1109.945;Half;False;True;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;uTerrains_Displacement_Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;19;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;6;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;False;False;True;1;LightMode=UniversalForward;False;False;0;Hidden/InternalErrorShader;0;0;Standard;40;Workflow;0;637838400787734890;Surface;0;637838607566779460;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;0;Fragment Normal Space,InvertActionOnDeselection;0;637838340752636060;Transmission;0;0;  Transmission Shadow;0.5,False,-1;0;Translucency;0;0;  Translucency Strength;1,False,-1;0;  Normal Distortion;0.5,False,-1;0;  Scattering;2,False,-1;0;  Direct;0.9,False,-1;0;  Ambient;0.1,False,-1;0;  Shadow;0.5,False,-1;0;Cast Shadows;1;0;  Use Shadow Threshold;1;637837049334647640;Receive Shadows;1;0;GPU Instancing;1;0;LOD CrossFade;1;637838598098262670;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;DOTS Instancing;0;0;Tessellation;1;637836364234510280;  Phong;1;637838398215314040;  Strength;1,True,-14;637838611146497990;  Type;1;637836364302939060;  Tess;5,True,-15;637838610927866090;  Min;25,True,-16;637838611006922130;  Max;25,True,-17;637838611072956620;  Edge Length;16,True,396;0;  Max Displacement;25,True,459;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;637838337124132950;Debug Display;0;0;Clear Coat;0;0;0;10;False;True;True;True;True;True;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;4;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;3;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;8;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;True;4;d3d11;glcore;gles;gles3;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;9;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;True;4;d3d11;glcore;gles;gles3;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;-999.5814,-3904.891;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;0;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;7;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;False;False;True;1;LightMode=UniversalGBuffer;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;5;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Universal2D;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
WireConnection;594;0;593;0
WireConnection;601;0;593;0
WireConnection;595;0;594;0
WireConnection;595;1;592;0
WireConnection;602;0;601;0
WireConnection;597;0;595;0
WireConnection;598;0;597;0
WireConnection;598;1;597;1
WireConnection;598;2;597;2
WireConnection;372;0;343;0
WireConnection;609;0;602;2
WireConnection;607;0;602;1
WireConnection;607;1;372;0
WireConnection;610;0;609;0
WireConnection;610;1;372;0
WireConnection;606;0;602;0
WireConnection;606;1;372;2
WireConnection;599;0;598;0
WireConnection;599;1;600;0
WireConnection;379;0;372;1
WireConnection;379;1;606;0
WireConnection;380;0;607;0
WireConnection;380;1;372;2
WireConnection;596;0;595;0
WireConnection;596;1;599;0
WireConnection;381;0;610;0
WireConnection;381;1;372;1
WireConnection;1586;1;42;0
WireConnection;1586;36;1493;0
WireConnection;1586;97;545;0
WireConnection;1586;2;1408;0
WireConnection;1586;98;1494;0
WireConnection;1586;99;613;0
WireConnection;1586;37;892;0
WireConnection;1586;35;1495;0
WireConnection;1586;34;463;0
WireConnection;1586;80;965;0
WireConnection;1586;79;1496;0
WireConnection;1586;82;1076;0
WireConnection;1586;81;1025;0
WireConnection;1586;83;1045;0
WireConnection;1586;117;1090;0
WireConnection;1586;116;1497;0
WireConnection;1586;118;1153;0
WireConnection;1586;119;1174;0
WireConnection;1586;55;113;1
WireConnection;1586;53;596;0
WireConnection;1586;102;464;0
WireConnection;1586;7;379;0
WireConnection;1586;8;380;0
WireConnection;1586;9;381;0
WireConnection;1585;1;43;0
WireConnection;1585;36;1493;0
WireConnection;1585;97;503;0
WireConnection;1585;2;1409;0
WireConnection;1585;98;1494;0
WireConnection;1585;99;614;0
WireConnection;1585;37;1396;0
WireConnection;1585;35;1495;0
WireConnection;1585;34;640;0
WireConnection;1585;80;958;0
WireConnection;1585;79;1496;0
WireConnection;1585;82;1077;0
WireConnection;1585;81;1026;0
WireConnection;1585;83;1046;0
WireConnection;1585;117;1114;0
WireConnection;1585;116;1497;0
WireConnection;1585;118;1168;0
WireConnection;1585;119;1174;0
WireConnection;1585;55;113;2
WireConnection;1585;53;596;0
WireConnection;1585;102;464;0
WireConnection;1585;7;379;0
WireConnection;1585;8;380;0
WireConnection;1585;9;381;0
WireConnection;1519;0;1586;125
WireConnection;1519;1;1585;125
WireConnection;1587;1;44;0
WireConnection;1587;36;1493;0
WireConnection;1587;97;541;0
WireConnection;1587;2;1410;0
WireConnection;1587;98;1494;0
WireConnection;1587;99;615;0
WireConnection;1587;37;1397;0
WireConnection;1587;35;1495;0
WireConnection;1587;34;663;0
WireConnection;1587;80;913;0
WireConnection;1587;79;1496;0
WireConnection;1587;82;1078;0
WireConnection;1587;81;1027;0
WireConnection;1587;83;1047;0
WireConnection;1587;117;1117;0
WireConnection;1587;116;1497;0
WireConnection;1587;118;1167;0
WireConnection;1587;119;1174;0
WireConnection;1587;55;113;3
WireConnection;1587;53;596;0
WireConnection;1587;102;464;0
WireConnection;1587;7;379;0
WireConnection;1587;8;380;0
WireConnection;1587;9;381;0
WireConnection;1590;1;45;0
WireConnection;1590;36;1493;0
WireConnection;1590;97;507;0
WireConnection;1590;2;1411;0
WireConnection;1590;98;1494;0
WireConnection;1590;99;616;0
WireConnection;1590;37;1398;0
WireConnection;1590;35;1495;0
WireConnection;1590;34;686;0
WireConnection;1590;80;920;0
WireConnection;1590;79;1496;0
WireConnection;1590;82;1079;0
WireConnection;1590;81;1028;0
WireConnection;1590;83;1048;0
WireConnection;1590;117;1113;0
WireConnection;1590;116;1497;0
WireConnection;1590;118;1166;0
WireConnection;1590;119;1174;0
WireConnection;1590;55;113;4
WireConnection;1590;53;596;0
WireConnection;1590;102;464;0
WireConnection;1590;7;379;0
WireConnection;1590;8;380;0
WireConnection;1590;9;381;0
WireConnection;1520;0;1519;0
WireConnection;1520;1;1587;125
WireConnection;1521;0;1520;0
WireConnection;1521;1;1590;125
WireConnection;1588;1;46;0
WireConnection;1588;36;1493;0
WireConnection;1588;97;555;0
WireConnection;1588;2;1412;0
WireConnection;1588;98;1494;0
WireConnection;1588;99;617;0
WireConnection;1588;37;1399;0
WireConnection;1588;35;1495;0
WireConnection;1588;34;741;0
WireConnection;1588;80;901;0
WireConnection;1588;79;1496;0
WireConnection;1588;82;1080;0
WireConnection;1588;81;1029;0
WireConnection;1588;83;1049;0
WireConnection;1588;117;1125;0
WireConnection;1588;116;1497;0
WireConnection;1588;118;1165;0
WireConnection;1588;119;1174;0
WireConnection;1588;55;114;1
WireConnection;1588;53;596;0
WireConnection;1588;102;464;0
WireConnection;1588;7;379;0
WireConnection;1588;8;380;0
WireConnection;1588;9;381;0
WireConnection;1589;1;47;0
WireConnection;1589;36;1493;0
WireConnection;1589;97;498;0
WireConnection;1589;2;1413;0
WireConnection;1589;98;1494;0
WireConnection;1589;99;618;0
WireConnection;1589;37;1400;0
WireConnection;1589;35;1495;0
WireConnection;1589;34;726;0
WireConnection;1589;80;896;0
WireConnection;1589;79;1496;0
WireConnection;1589;82;1081;0
WireConnection;1589;81;1030;0
WireConnection;1589;83;1050;0
WireConnection;1589;117;1123;0
WireConnection;1589;116;1497;0
WireConnection;1589;118;1152;0
WireConnection;1589;119;1174;0
WireConnection;1589;55;114;2
WireConnection;1589;53;596;0
WireConnection;1589;102;464;0
WireConnection;1589;7;379;0
WireConnection;1589;8;380;0
WireConnection;1589;9;381;0
WireConnection;1522;0;1521;0
WireConnection;1522;1;1588;125
WireConnection;1518;0;1517;0
WireConnection;1518;1;1589;122
WireConnection;1423;0;1422;0
WireConnection;1423;1;1590;0
WireConnection;1508;0;1507;0
WireConnection;1508;1;1587;123
WireConnection;1514;0;1586;122
WireConnection;1514;1;1585;122
WireConnection;1513;0;1512;0
WireConnection;1513;1;1587;121
WireConnection;1258;0;1255;0
WireConnection;1258;1;1257;0
WireConnection;1509;0;1511;0
WireConnection;1509;1;1588;121
WireConnection;1512;0;1586;121
WireConnection;1512;1;1585;121
WireConnection;1425;0;1424;0
WireConnection;1425;1;1589;0
WireConnection;1505;0;1504;0
WireConnection;1505;1;1589;123
WireConnection;1515;0;1514;0
WireConnection;1515;1;1587;122
WireConnection;1255;0;1260;4
WireConnection;1255;1;1259;0
WireConnection;1517;0;1516;0
WireConnection;1517;1;1588;122
WireConnection;1506;0;1508;0
WireConnection;1506;1;1590;123
WireConnection;1261;0;1258;0
WireConnection;1424;0;1423;0
WireConnection;1424;1;1588;0
WireConnection;1262;0;1256;0
WireConnection;1262;1;1425;0
WireConnection;1262;2;1261;0
WireConnection;1422;0;1421;0
WireConnection;1422;1;1587;0
WireConnection;1503;0;1502;0
WireConnection;1503;1;1587;124
WireConnection;1502;0;1586;124
WireConnection;1502;1;1585;124
WireConnection;1507;0;1586;123
WireConnection;1507;1;1585;123
WireConnection;1523;0;1522;0
WireConnection;1523;1;1589;125
WireConnection;1516;0;1515;0
WireConnection;1516;1;1590;122
WireConnection;1510;0;1509;0
WireConnection;1510;1;1589;121
WireConnection;1511;0;1513;0
WireConnection;1511;1;1590;121
WireConnection;1421;0;1586;0
WireConnection;1421;1;1585;0
WireConnection;1504;0;1506;0
WireConnection;1504;1;1588;123
WireConnection;1499;0;1501;0
WireConnection;1499;1;1588;124
WireConnection;1500;0;1499;0
WireConnection;1500;1;1589;124
WireConnection;1501;0;1503;0
WireConnection;1501;1;1590;124
WireConnection;1;0;1262;0
WireConnection;1;1;1500;0
WireConnection;1;9;1510;0
WireConnection;1;4;1505;0
WireConnection;1;5;1518;0
WireConnection;1;8;1523;0
ASEEND*/
//CHKSM=DB1B3866381B5EFB003A7AE1F08EA6B2BB643BF2