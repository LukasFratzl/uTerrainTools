// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "uTerrains_Shader_Lite"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin][Header(Textures 1)][NoScaleOffset][SingleLineTexture]_Albedo1("Albedo 1", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal1("Normal 1", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion1("Occlusion 1", 2D) = "white" {}
		_NormalStrength1("Normal Strength 1", Range( 0 , 2)) = 1
		_OcclusionStrength1("Occlusion Strength 1", Range( -10 , 10)) = 0.1
		_Tiling1("Tiling 1", Range( 0.01 , 2)) = 0.1
		_Shiny1("Shiny 1", Range( 0 , 10)) = 0.1
		_Smooth1("Smooth 1", Range( 0 , 10)) = 0.1
		[Header(Textures 2)][NoScaleOffset][SingleLineTexture]_Albedo2("Albedo 2", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal2("Normal 2", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion2("Occlusion 2", 2D) = "white" {}
		_NormalStrength2("Normal Strength 2", Range( 0 , 2)) = 1
		_OcclusionStrength2("Occlusion Strength 2", Range( -10 , 10)) = 0.1
		_Tiling2("Tiling 2", Range( 0.01 , 2)) = 0.1
		_Shiny2("Shiny 2", Range( 0 , 10)) = 0.1
		_Smooth2("Smooth 2", Range( 0 , 10)) = 0.1
		[Header(Textures 3)][NoScaleOffset][SingleLineTexture]_Albedo3("Albedo 3", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal3("Normal 3", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion3("Occlusion 3", 2D) = "white" {}
		_NormalStrength3("Normal Strength 3", Range( 0 , 2)) = 1
		_OcclusionStrength3("Occlusion Strength 3", Range( -10 , 10)) = 0.1
		_Tiling3("Tiling 3", Range( 0.01 , 2)) = 0.1
		_Shiny3("Shiny 3", Range( 0 , 10)) = 0.1
		_Smooth3("Smooth 3", Range( 0 , 10)) = 0.1
		[Header(Textures 4)][NoScaleOffset][SingleLineTexture]_Albedo4("Albedo 4", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal4("Normal 4", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion4("Occlusion 4", 2D) = "white" {}
		_NormalStrength4("Normal Strength 4", Range( 0 , 2)) = 1
		_OcclusionStrength4("Occlusion Strength 4", Range( -10 , 10)) = 0.1
		_Tiling4("Tiling 4", Range( 0.01 , 2)) = 0.1
		_Shiny4("Shiny 4", Range( 0 , 10)) = 0.1
		_Smooth4("Smooth 4", Range( 0 , 10)) = 0.1
		[Header(Textures 5)][NoScaleOffset][SingleLineTexture]_Albedo5("Albedo 5", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal5("Normal 5", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion5("Occlusion 5", 2D) = "white" {}
		_NormalStrength5("Normal Strength 5", Range( 0 , 2)) = 1
		_OcclusionStrength5("Occlusion Strength 5", Range( -10 , 10)) = 0.1
		_Tiling5("Tiling 5", Range( 0.01 , 2)) = 0.1
		_Shiny5("Shiny 5", Range( 0 , 10)) = 0.1
		_Smooth5("Smooth 5", Range( 0 , 10)) = 0.1
		[Header(Textures 6)][NoScaleOffset][SingleLineTexture]_Albedo6("Albedo 6", 2D) = "white" {}
		[NoScaleOffset][Normal][SingleLineTexture]_Normal6("Normal 6", 2D) = "bump" {}
		[NoScaleOffset][SingleLineTexture]_Occlusion6("Occlusion 6", 2D) = "white" {}
		_NormalStrength6("Normal Strength 6", Range( 0 , 2)) = 1
		_OcclusionStrength6("Occlusion Strength 6", Range( -10 , 10)) = 0.1
		_Tiling6("Tiling 6", Range( 0.01 , 2)) = 0.1
		_Shiny6("Shiny 6", Range( 0 , 10)) = 0.1
		_Smooth6("Smooth 6", Range( 0 , 10)) = 0.1
		[Header(Other Parameter)]_Falloff("Fall off", Range( 0 , 4)) = 1.56
		_FadeOffset("Fade Offset", Range( 0 , 10)) = 0.5
		_FadeRange("Fade Range", Range( 0 , 1)) = 0.5
		[ASEEnd]_FadeColor("Fade Color", Color) = (0,0,0,0)

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
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
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
		#pragma target 3.0

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
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
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

			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_SCREEN_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT


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
			float _OcclusionStrength4;
			float _OcclusionStrength3;
			float _OcclusionStrength2;
			float _OcclusionStrength1;
			float _Smooth6;
			float _Smooth5;
			float _Smooth4;
			float _Smooth3;
			float _Smooth2;
			float _Smooth1;
			float _Shiny6;
			float _Shiny5;
			float _Shiny4;
			float _Shiny3;
			float _Shiny2;
			float _Shiny1;
			float _NormalStrength6;
			float _Tiling1;
			float _Falloff;
			float _Tiling2;
			float _Tiling3;
			float _Tiling4;
			float _Tiling5;
			float _OcclusionStrength5;
			float _Tiling6;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
			float _NormalStrength3;
			float _NormalStrength4;
			float _NormalStrength5;
			float _FadeOffset;
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
			TEXTURE2D(_Albedo1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Albedo6);
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


			inline float4 TriplanarSampling193_g179( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g178( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g177( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g176( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g180( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g181( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g179( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g178( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g177( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g176( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g180( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g181( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g179( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g178( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g177( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g176( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g180( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g181( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				o.ase_color = v.ase_color;
				o.ase_texcoord8.xy = v.texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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

				float3 appendResult1610 = (float3(_FadeColor.r , _FadeColor.g , _FadeColor.b));
				float temp_output_55_0_g179 = IN.ase_color.r;
				float temp_output_2_0_g179 = _Tiling1;
				float2 temp_cast_0 = (temp_output_2_0_g179).xx;
				float temp_output_184_0_g179 = _Falloff;
				float3 temp_output_183_0_g179 = WorldPosition;
				float4 triplanar193_g179 = TriplanarSampling193_g179( _Albedo1, sampler_point_repeat, temp_output_183_0_g179, WorldNormal, temp_output_184_0_g179, temp_cast_0, 1.0, 0, temp_output_55_0_g179 );
				float3 appendResult185_g179 = (float3(triplanar193_g179.x , triplanar193_g179.g , triplanar193_g179.b));
				float temp_output_55_0_g178 = IN.ase_color.g;
				float temp_output_2_0_g178 = _Tiling2;
				float2 temp_cast_1 = (temp_output_2_0_g178).xx;
				float temp_output_184_0_g178 = _Falloff;
				float3 temp_output_183_0_g178 = WorldPosition;
				float4 triplanar193_g178 = TriplanarSampling193_g178( _Albedo2, sampler_point_repeat, temp_output_183_0_g178, WorldNormal, temp_output_184_0_g178, temp_cast_1, 1.0, 0, temp_output_55_0_g178 );
				float3 appendResult185_g178 = (float3(triplanar193_g178.x , triplanar193_g178.g , triplanar193_g178.b));
				float temp_output_55_0_g177 = IN.ase_color.b;
				float temp_output_2_0_g177 = _Tiling3;
				float2 temp_cast_2 = (temp_output_2_0_g177).xx;
				float temp_output_184_0_g177 = _Falloff;
				float3 temp_output_183_0_g177 = WorldPosition;
				float4 triplanar193_g177 = TriplanarSampling193_g177( _Albedo3, sampler_point_repeat, temp_output_183_0_g177, WorldNormal, temp_output_184_0_g177, temp_cast_2, 1.0, 0, temp_output_55_0_g177 );
				float3 appendResult185_g177 = (float3(triplanar193_g177.x , triplanar193_g177.g , triplanar193_g177.b));
				float temp_output_55_0_g176 = IN.ase_color.a;
				float temp_output_2_0_g176 = _Tiling4;
				float2 temp_cast_3 = (temp_output_2_0_g176).xx;
				float temp_output_184_0_g176 = _Falloff;
				float3 temp_output_183_0_g176 = WorldPosition;
				float4 triplanar193_g176 = TriplanarSampling193_g176( _Albedo4, sampler_point_repeat, temp_output_183_0_g176, WorldNormal, temp_output_184_0_g176, temp_cast_3, 1.0, 0, temp_output_55_0_g176 );
				float3 appendResult185_g176 = (float3(triplanar193_g176.x , triplanar193_g176.g , triplanar193_g176.b));
				float temp_output_55_0_g180 = IN.ase_texcoord8.xy.x;
				float temp_output_2_0_g180 = _Tiling5;
				float2 temp_cast_4 = (temp_output_2_0_g180).xx;
				float temp_output_184_0_g180 = _Falloff;
				float3 temp_output_183_0_g180 = WorldPosition;
				float4 triplanar193_g180 = TriplanarSampling193_g180( _Albedo5, sampler_point_repeat, temp_output_183_0_g180, WorldNormal, temp_output_184_0_g180, temp_cast_4, 1.0, 0, temp_output_55_0_g180 );
				float3 appendResult185_g180 = (float3(triplanar193_g180.x , triplanar193_g180.g , triplanar193_g180.b));
				float temp_output_55_0_g181 = IN.ase_texcoord8.xy.y;
				float temp_output_2_0_g181 = _Tiling6;
				float2 temp_cast_5 = (temp_output_2_0_g181).xx;
				float temp_output_184_0_g181 = _Falloff;
				float3 temp_output_183_0_g181 = WorldPosition;
				float4 triplanar193_g181 = TriplanarSampling193_g181( _Albedo6, sampler_point_repeat, temp_output_183_0_g181, WorldNormal, temp_output_184_0_g181, temp_cast_5, 1.0, 0, temp_output_55_0_g181 );
				float3 appendResult185_g181 = (float3(triplanar193_g181.x , triplanar193_g181.g , triplanar193_g181.b));
				float clampResult1261 = clamp( ( ( ScreenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float3 lerpResult1262 = lerp( appendResult1610 , ( ( ( ( ( ( temp_output_55_0_g179 * appendResult185_g179 ) + ( temp_output_55_0_g178 * appendResult185_g178 ) ) + ( temp_output_55_0_g177 * appendResult185_g177 ) ) + ( temp_output_55_0_g176 * appendResult185_g176 ) ) + ( temp_output_55_0_g180 * appendResult185_g180 ) ) + ( temp_output_55_0_g181 * appendResult185_g181 ) ) , clampResult1261);
				
				float2 temp_cast_6 = (temp_output_2_0_g179).xx;
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				float3 triplanar197_g179 = TriplanarSampling197_g179( _Normal1, sampler_point_repeat, temp_output_183_0_g179, WorldNormal, temp_output_184_0_g179, temp_cast_6, _NormalStrength1, 0, temp_output_55_0_g179 );
				float3 tanTriplanarNormal197_g179 = mul( ase_worldToTangent, triplanar197_g179 );
				float2 temp_cast_7 = (temp_output_2_0_g178).xx;
				float3 triplanar197_g178 = TriplanarSampling197_g178( _Normal2, sampler_point_repeat, temp_output_183_0_g178, WorldNormal, temp_output_184_0_g178, temp_cast_7, _NormalStrength2, 0, temp_output_55_0_g178 );
				float3 tanTriplanarNormal197_g178 = mul( ase_worldToTangent, triplanar197_g178 );
				float2 temp_cast_8 = (temp_output_2_0_g177).xx;
				float3 triplanar197_g177 = TriplanarSampling197_g177( _Normal3, sampler_point_repeat, temp_output_183_0_g177, WorldNormal, temp_output_184_0_g177, temp_cast_8, _NormalStrength3, 0, temp_output_55_0_g177 );
				float3 tanTriplanarNormal197_g177 = mul( ase_worldToTangent, triplanar197_g177 );
				float2 temp_cast_9 = (temp_output_2_0_g176).xx;
				float3 triplanar197_g176 = TriplanarSampling197_g176( _Normal4, sampler_point_repeat, temp_output_183_0_g176, WorldNormal, temp_output_184_0_g176, temp_cast_9, _NormalStrength4, 0, temp_output_55_0_g176 );
				float3 tanTriplanarNormal197_g176 = mul( ase_worldToTangent, triplanar197_g176 );
				float2 temp_cast_10 = (temp_output_2_0_g180).xx;
				float3 triplanar197_g180 = TriplanarSampling197_g180( _Normal5, sampler_point_repeat, temp_output_183_0_g180, WorldNormal, temp_output_184_0_g180, temp_cast_10, _NormalStrength5, 0, temp_output_55_0_g180 );
				float3 tanTriplanarNormal197_g180 = mul( ase_worldToTangent, triplanar197_g180 );
				float2 temp_cast_11 = (temp_output_2_0_g181).xx;
				float3 triplanar197_g181 = TriplanarSampling197_g181( _Normal6, sampler_point_repeat, temp_output_183_0_g181, WorldNormal, temp_output_184_0_g181, temp_cast_11, _NormalStrength6, 0, temp_output_55_0_g181 );
				float3 tanTriplanarNormal197_g181 = mul( ase_worldToTangent, triplanar197_g181 );
				
				float2 temp_cast_12 = (temp_output_2_0_g179).xx;
				float4 triplanar195_g179 = TriplanarSampling195_g179( _Occlusion1, sampler_point_repeat, temp_output_183_0_g179, WorldNormal, temp_output_184_0_g179, temp_cast_12, 1.0, 0, temp_output_55_0_g179 );
				float temp_output_100_0_g179 = ( triplanar195_g179.x * temp_output_55_0_g179 );
				float2 temp_cast_13 = (temp_output_2_0_g178).xx;
				float4 triplanar195_g178 = TriplanarSampling195_g178( _Occlusion2, sampler_point_repeat, temp_output_183_0_g178, WorldNormal, temp_output_184_0_g178, temp_cast_13, 1.0, 0, temp_output_55_0_g178 );
				float temp_output_100_0_g178 = ( triplanar195_g178.x * temp_output_55_0_g178 );
				float2 temp_cast_14 = (temp_output_2_0_g177).xx;
				float4 triplanar195_g177 = TriplanarSampling195_g177( _Occlusion3, sampler_point_repeat, temp_output_183_0_g177, WorldNormal, temp_output_184_0_g177, temp_cast_14, 1.0, 0, temp_output_55_0_g177 );
				float temp_output_100_0_g177 = ( triplanar195_g177.x * temp_output_55_0_g177 );
				float2 temp_cast_15 = (temp_output_2_0_g176).xx;
				float4 triplanar195_g176 = TriplanarSampling195_g176( _Occlusion4, sampler_point_repeat, temp_output_183_0_g176, WorldNormal, temp_output_184_0_g176, temp_cast_15, 1.0, 0, temp_output_55_0_g176 );
				float temp_output_100_0_g176 = ( triplanar195_g176.x * temp_output_55_0_g176 );
				float2 temp_cast_16 = (temp_output_2_0_g180).xx;
				float4 triplanar195_g180 = TriplanarSampling195_g180( _Occlusion5, sampler_point_repeat, temp_output_183_0_g180, WorldNormal, temp_output_184_0_g180, temp_cast_16, 1.0, 0, temp_output_55_0_g180 );
				float temp_output_100_0_g180 = ( triplanar195_g180.x * temp_output_55_0_g180 );
				float2 temp_cast_17 = (temp_output_2_0_g181).xx;
				float4 triplanar195_g181 = TriplanarSampling195_g181( _Occlusion6, sampler_point_repeat, temp_output_183_0_g181, WorldNormal, temp_output_184_0_g181, temp_cast_17, 1.0, 0, temp_output_55_0_g181 );
				float temp_output_100_0_g181 = ( triplanar195_g181.x * temp_output_55_0_g181 );
				half3 temp_cast_18 = (( ( ( ( ( ( _Shiny1 * temp_output_100_0_g179 ) + ( _Shiny2 * temp_output_100_0_g178 ) ) + ( _Shiny3 * temp_output_100_0_g177 ) ) + ( _Shiny4 * temp_output_100_0_g176 ) ) + ( _Shiny5 * temp_output_100_0_g180 ) ) + ( _Shiny6 * temp_output_100_0_g181 ) )).xxx;
				
				float3 Albedo = lerpResult1262;
				float3 Normal = ( ( ( ( ( ( temp_output_55_0_g179 * tanTriplanarNormal197_g179 ) + ( temp_output_55_0_g178 * tanTriplanarNormal197_g178 ) ) + ( temp_output_55_0_g177 * tanTriplanarNormal197_g177 ) ) + ( temp_output_55_0_g176 * tanTriplanarNormal197_g176 ) ) + ( temp_output_55_0_g180 * tanTriplanarNormal197_g180 ) ) + ( temp_output_55_0_g181 * tanTriplanarNormal197_g181 ) );
				float3 Emission = 0;
				float3 Specular = temp_cast_18;
				float Metallic = 0;
				float Smoothness = ( ( ( ( ( ( _Smooth1 * temp_output_100_0_g179 ) + ( _Smooth2 * temp_output_100_0_g178 ) ) + ( _Smooth3 * temp_output_100_0_g177 ) ) + ( _Smooth4 * temp_output_100_0_g176 ) ) + ( _Smooth5 * temp_output_100_0_g180 ) ) + ( _Smooth6 * temp_output_100_0_g181 ) );
				float Occlusion = ( ( ( ( ( ( _OcclusionStrength1 * temp_output_100_0_g179 ) + ( _OcclusionStrength2 * temp_output_100_0_g178 ) ) + ( _OcclusionStrength3 * temp_output_100_0_g177 ) ) + ( _OcclusionStrength4 * temp_output_100_0_g176 ) ) + ( _OcclusionStrength5 * temp_output_100_0_g180 ) ) + ( _OcclusionStrength6 * temp_output_100_0_g181 ) );
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
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

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
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
			float _OcclusionStrength4;
			float _OcclusionStrength3;
			float _OcclusionStrength2;
			float _OcclusionStrength1;
			float _Smooth6;
			float _Smooth5;
			float _Smooth4;
			float _Smooth3;
			float _Smooth2;
			float _Smooth1;
			float _Shiny6;
			float _Shiny5;
			float _Shiny4;
			float _Shiny3;
			float _Shiny2;
			float _Shiny1;
			float _NormalStrength6;
			float _Tiling1;
			float _Falloff;
			float _Tiling2;
			float _Tiling3;
			float _Tiling4;
			float _Tiling5;
			float _OcclusionStrength5;
			float _Tiling6;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
			float _NormalStrength3;
			float _NormalStrength4;
			float _NormalStrength5;
			float _FadeOffset;
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
			

			
			float3 _LightDirection;
			float3 _LightPosition;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
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

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
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
			float _OcclusionStrength4;
			float _OcclusionStrength3;
			float _OcclusionStrength2;
			float _OcclusionStrength1;
			float _Smooth6;
			float _Smooth5;
			float _Smooth4;
			float _Smooth3;
			float _Smooth2;
			float _Smooth1;
			float _Shiny6;
			float _Shiny5;
			float _Shiny4;
			float _Shiny3;
			float _Shiny2;
			float _Shiny1;
			float _NormalStrength6;
			float _Tiling1;
			float _Falloff;
			float _Tiling2;
			float _Tiling3;
			float _Tiling4;
			float _Tiling5;
			float _OcclusionStrength5;
			float _Tiling6;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
			float _NormalStrength3;
			float _NormalStrength4;
			float _NormalStrength5;
			float _FadeOffset;
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
			

			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
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

			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_COLOR


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
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
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _OcclusionStrength4;
			float _OcclusionStrength3;
			float _OcclusionStrength2;
			float _OcclusionStrength1;
			float _Smooth6;
			float _Smooth5;
			float _Smooth4;
			float _Smooth3;
			float _Smooth2;
			float _Smooth1;
			float _Shiny6;
			float _Shiny5;
			float _Shiny4;
			float _Shiny3;
			float _Shiny2;
			float _Shiny1;
			float _NormalStrength6;
			float _Tiling1;
			float _Falloff;
			float _Tiling2;
			float _Tiling3;
			float _Tiling4;
			float _Tiling5;
			float _OcclusionStrength5;
			float _Tiling6;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
			float _NormalStrength3;
			float _NormalStrength4;
			float _NormalStrength5;
			float _FadeOffset;
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
			TEXTURE2D(_Albedo1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Albedo6);


			inline float4 TriplanarSampling193_g179( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g178( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g177( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g176( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g180( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g181( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				float4 ase_clipPos = TransformObjectToHClip((v.vertex).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord6 = screenPos;
				
				o.ase_color = v.ase_color;
				o.ase_texcoord5.xy = v.texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.zw = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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

				float3 appendResult1610 = (float3(_FadeColor.r , _FadeColor.g , _FadeColor.b));
				float temp_output_55_0_g179 = IN.ase_color.r;
				float temp_output_2_0_g179 = _Tiling1;
				float2 temp_cast_0 = (temp_output_2_0_g179).xx;
				float temp_output_184_0_g179 = _Falloff;
				float3 ase_worldNormal = IN.ase_texcoord4.xyz;
				float3 temp_output_183_0_g179 = WorldPosition;
				float4 triplanar193_g179 = TriplanarSampling193_g179( _Albedo1, sampler_point_repeat, temp_output_183_0_g179, ase_worldNormal, temp_output_184_0_g179, temp_cast_0, 1.0, 0, temp_output_55_0_g179 );
				float3 appendResult185_g179 = (float3(triplanar193_g179.x , triplanar193_g179.g , triplanar193_g179.b));
				float temp_output_55_0_g178 = IN.ase_color.g;
				float temp_output_2_0_g178 = _Tiling2;
				float2 temp_cast_1 = (temp_output_2_0_g178).xx;
				float temp_output_184_0_g178 = _Falloff;
				float3 temp_output_183_0_g178 = WorldPosition;
				float4 triplanar193_g178 = TriplanarSampling193_g178( _Albedo2, sampler_point_repeat, temp_output_183_0_g178, ase_worldNormal, temp_output_184_0_g178, temp_cast_1, 1.0, 0, temp_output_55_0_g178 );
				float3 appendResult185_g178 = (float3(triplanar193_g178.x , triplanar193_g178.g , triplanar193_g178.b));
				float temp_output_55_0_g177 = IN.ase_color.b;
				float temp_output_2_0_g177 = _Tiling3;
				float2 temp_cast_2 = (temp_output_2_0_g177).xx;
				float temp_output_184_0_g177 = _Falloff;
				float3 temp_output_183_0_g177 = WorldPosition;
				float4 triplanar193_g177 = TriplanarSampling193_g177( _Albedo3, sampler_point_repeat, temp_output_183_0_g177, ase_worldNormal, temp_output_184_0_g177, temp_cast_2, 1.0, 0, temp_output_55_0_g177 );
				float3 appendResult185_g177 = (float3(triplanar193_g177.x , triplanar193_g177.g , triplanar193_g177.b));
				float temp_output_55_0_g176 = IN.ase_color.a;
				float temp_output_2_0_g176 = _Tiling4;
				float2 temp_cast_3 = (temp_output_2_0_g176).xx;
				float temp_output_184_0_g176 = _Falloff;
				float3 temp_output_183_0_g176 = WorldPosition;
				float4 triplanar193_g176 = TriplanarSampling193_g176( _Albedo4, sampler_point_repeat, temp_output_183_0_g176, ase_worldNormal, temp_output_184_0_g176, temp_cast_3, 1.0, 0, temp_output_55_0_g176 );
				float3 appendResult185_g176 = (float3(triplanar193_g176.x , triplanar193_g176.g , triplanar193_g176.b));
				float temp_output_55_0_g180 = IN.ase_texcoord5.xy.x;
				float temp_output_2_0_g180 = _Tiling5;
				float2 temp_cast_4 = (temp_output_2_0_g180).xx;
				float temp_output_184_0_g180 = _Falloff;
				float3 temp_output_183_0_g180 = WorldPosition;
				float4 triplanar193_g180 = TriplanarSampling193_g180( _Albedo5, sampler_point_repeat, temp_output_183_0_g180, ase_worldNormal, temp_output_184_0_g180, temp_cast_4, 1.0, 0, temp_output_55_0_g180 );
				float3 appendResult185_g180 = (float3(triplanar193_g180.x , triplanar193_g180.g , triplanar193_g180.b));
				float temp_output_55_0_g181 = IN.ase_texcoord5.xy.y;
				float temp_output_2_0_g181 = _Tiling6;
				float2 temp_cast_5 = (temp_output_2_0_g181).xx;
				float temp_output_184_0_g181 = _Falloff;
				float3 temp_output_183_0_g181 = WorldPosition;
				float4 triplanar193_g181 = TriplanarSampling193_g181( _Albedo6, sampler_point_repeat, temp_output_183_0_g181, ase_worldNormal, temp_output_184_0_g181, temp_cast_5, 1.0, 0, temp_output_55_0_g181 );
				float3 appendResult185_g181 = (float3(triplanar193_g181.x , triplanar193_g181.g , triplanar193_g181.b));
				float4 screenPos = IN.ase_texcoord6;
				float clampResult1261 = clamp( ( ( screenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float3 lerpResult1262 = lerp( appendResult1610 , ( ( ( ( ( ( temp_output_55_0_g179 * appendResult185_g179 ) + ( temp_output_55_0_g178 * appendResult185_g178 ) ) + ( temp_output_55_0_g177 * appendResult185_g177 ) ) + ( temp_output_55_0_g176 * appendResult185_g176 ) ) + ( temp_output_55_0_g180 * appendResult185_g180 ) ) + ( temp_output_55_0_g181 * appendResult185_g181 ) ) , clampResult1261);
				
				
				float3 Albedo = lerpResult1262;
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
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
			
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_COLOR


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
				float4 ase_color : COLOR;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _OcclusionStrength4;
			float _OcclusionStrength3;
			float _OcclusionStrength2;
			float _OcclusionStrength1;
			float _Smooth6;
			float _Smooth5;
			float _Smooth4;
			float _Smooth3;
			float _Smooth2;
			float _Smooth1;
			float _Shiny6;
			float _Shiny5;
			float _Shiny4;
			float _Shiny3;
			float _Shiny2;
			float _Shiny1;
			float _NormalStrength6;
			float _Tiling1;
			float _Falloff;
			float _Tiling2;
			float _Tiling3;
			float _Tiling4;
			float _Tiling5;
			float _OcclusionStrength5;
			float _Tiling6;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
			float _NormalStrength3;
			float _NormalStrength4;
			float _NormalStrength5;
			float _FadeOffset;
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
			TEXTURE2D(_Albedo1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Albedo6);


			inline float4 TriplanarSampling193_g179( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g178( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g177( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g176( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g180( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g181( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord2.xyz = ase_worldNormal;
				float4 ase_clipPos = TransformObjectToHClip((v.vertex).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord4 = screenPos;
				
				o.ase_color = v.ase_color;
				o.ase_texcoord3.xy = v.ase_texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.zw = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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

				float3 appendResult1610 = (float3(_FadeColor.r , _FadeColor.g , _FadeColor.b));
				float temp_output_55_0_g179 = IN.ase_color.r;
				float temp_output_2_0_g179 = _Tiling1;
				float2 temp_cast_0 = (temp_output_2_0_g179).xx;
				float temp_output_184_0_g179 = _Falloff;
				float3 ase_worldNormal = IN.ase_texcoord2.xyz;
				float3 temp_output_183_0_g179 = WorldPosition;
				float4 triplanar193_g179 = TriplanarSampling193_g179( _Albedo1, sampler_point_repeat, temp_output_183_0_g179, ase_worldNormal, temp_output_184_0_g179, temp_cast_0, 1.0, 0, temp_output_55_0_g179 );
				float3 appendResult185_g179 = (float3(triplanar193_g179.x , triplanar193_g179.g , triplanar193_g179.b));
				float temp_output_55_0_g178 = IN.ase_color.g;
				float temp_output_2_0_g178 = _Tiling2;
				float2 temp_cast_1 = (temp_output_2_0_g178).xx;
				float temp_output_184_0_g178 = _Falloff;
				float3 temp_output_183_0_g178 = WorldPosition;
				float4 triplanar193_g178 = TriplanarSampling193_g178( _Albedo2, sampler_point_repeat, temp_output_183_0_g178, ase_worldNormal, temp_output_184_0_g178, temp_cast_1, 1.0, 0, temp_output_55_0_g178 );
				float3 appendResult185_g178 = (float3(triplanar193_g178.x , triplanar193_g178.g , triplanar193_g178.b));
				float temp_output_55_0_g177 = IN.ase_color.b;
				float temp_output_2_0_g177 = _Tiling3;
				float2 temp_cast_2 = (temp_output_2_0_g177).xx;
				float temp_output_184_0_g177 = _Falloff;
				float3 temp_output_183_0_g177 = WorldPosition;
				float4 triplanar193_g177 = TriplanarSampling193_g177( _Albedo3, sampler_point_repeat, temp_output_183_0_g177, ase_worldNormal, temp_output_184_0_g177, temp_cast_2, 1.0, 0, temp_output_55_0_g177 );
				float3 appendResult185_g177 = (float3(triplanar193_g177.x , triplanar193_g177.g , triplanar193_g177.b));
				float temp_output_55_0_g176 = IN.ase_color.a;
				float temp_output_2_0_g176 = _Tiling4;
				float2 temp_cast_3 = (temp_output_2_0_g176).xx;
				float temp_output_184_0_g176 = _Falloff;
				float3 temp_output_183_0_g176 = WorldPosition;
				float4 triplanar193_g176 = TriplanarSampling193_g176( _Albedo4, sampler_point_repeat, temp_output_183_0_g176, ase_worldNormal, temp_output_184_0_g176, temp_cast_3, 1.0, 0, temp_output_55_0_g176 );
				float3 appendResult185_g176 = (float3(triplanar193_g176.x , triplanar193_g176.g , triplanar193_g176.b));
				float temp_output_55_0_g180 = IN.ase_texcoord3.xy.x;
				float temp_output_2_0_g180 = _Tiling5;
				float2 temp_cast_4 = (temp_output_2_0_g180).xx;
				float temp_output_184_0_g180 = _Falloff;
				float3 temp_output_183_0_g180 = WorldPosition;
				float4 triplanar193_g180 = TriplanarSampling193_g180( _Albedo5, sampler_point_repeat, temp_output_183_0_g180, ase_worldNormal, temp_output_184_0_g180, temp_cast_4, 1.0, 0, temp_output_55_0_g180 );
				float3 appendResult185_g180 = (float3(triplanar193_g180.x , triplanar193_g180.g , triplanar193_g180.b));
				float temp_output_55_0_g181 = IN.ase_texcoord3.xy.y;
				float temp_output_2_0_g181 = _Tiling6;
				float2 temp_cast_5 = (temp_output_2_0_g181).xx;
				float temp_output_184_0_g181 = _Falloff;
				float3 temp_output_183_0_g181 = WorldPosition;
				float4 triplanar193_g181 = TriplanarSampling193_g181( _Albedo6, sampler_point_repeat, temp_output_183_0_g181, ase_worldNormal, temp_output_184_0_g181, temp_cast_5, 1.0, 0, temp_output_55_0_g181 );
				float3 appendResult185_g181 = (float3(triplanar193_g181.x , triplanar193_g181.g , triplanar193_g181.b));
				float4 screenPos = IN.ase_texcoord4;
				float clampResult1261 = clamp( ( ( screenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float3 lerpResult1262 = lerp( appendResult1610 , ( ( ( ( ( ( temp_output_55_0_g179 * appendResult185_g179 ) + ( temp_output_55_0_g178 * appendResult185_g178 ) ) + ( temp_output_55_0_g177 * appendResult185_g177 ) ) + ( temp_output_55_0_g176 * appendResult185_g176 ) ) + ( temp_output_55_0_g180 * appendResult185_g180 ) ) + ( temp_output_55_0_g181 * appendResult185_g181 ) ) , clampResult1261);
				
				
				float3 Albedo = lerpResult1262;
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
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

			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_COLOR


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
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
			float _OcclusionStrength4;
			float _OcclusionStrength3;
			float _OcclusionStrength2;
			float _OcclusionStrength1;
			float _Smooth6;
			float _Smooth5;
			float _Smooth4;
			float _Smooth3;
			float _Smooth2;
			float _Smooth1;
			float _Shiny6;
			float _Shiny5;
			float _Shiny4;
			float _Shiny3;
			float _Shiny2;
			float _Shiny1;
			float _NormalStrength6;
			float _Tiling1;
			float _Falloff;
			float _Tiling2;
			float _Tiling3;
			float _Tiling4;
			float _Tiling5;
			float _OcclusionStrength5;
			float _Tiling6;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
			float _NormalStrength3;
			float _NormalStrength4;
			float _NormalStrength5;
			float _FadeOffset;
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
			TEXTURE2D(_Normal1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Normal2);
			TEXTURE2D(_Normal3);
			TEXTURE2D(_Normal4);
			TEXTURE2D(_Normal5);
			TEXTURE2D(_Normal6);


			inline float3 TriplanarSampling197_g179( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g178( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g177( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g176( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g180( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g181( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord4.xyz = ase_worldBitangent;
				
				o.ase_color = v.ase_color;
				o.ase_texcoord5.xy = v.ase_texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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

				float temp_output_55_0_g179 = IN.ase_color.r;
				float temp_output_2_0_g179 = _Tiling1;
				float2 temp_cast_0 = (temp_output_2_0_g179).xx;
				float temp_output_184_0_g179 = _Falloff;
				float3 ase_worldBitangent = IN.ase_texcoord4.xyz;
				float3x3 ase_worldToTangent = float3x3(WorldTangent.xyz,ase_worldBitangent,WorldNormal);
				float3 temp_output_183_0_g179 = WorldPosition;
				float3 triplanar197_g179 = TriplanarSampling197_g179( _Normal1, sampler_point_repeat, temp_output_183_0_g179, WorldNormal, temp_output_184_0_g179, temp_cast_0, _NormalStrength1, 0, temp_output_55_0_g179 );
				float3 tanTriplanarNormal197_g179 = mul( ase_worldToTangent, triplanar197_g179 );
				float temp_output_55_0_g178 = IN.ase_color.g;
				float temp_output_2_0_g178 = _Tiling2;
				float2 temp_cast_1 = (temp_output_2_0_g178).xx;
				float temp_output_184_0_g178 = _Falloff;
				float3 temp_output_183_0_g178 = WorldPosition;
				float3 triplanar197_g178 = TriplanarSampling197_g178( _Normal2, sampler_point_repeat, temp_output_183_0_g178, WorldNormal, temp_output_184_0_g178, temp_cast_1, _NormalStrength2, 0, temp_output_55_0_g178 );
				float3 tanTriplanarNormal197_g178 = mul( ase_worldToTangent, triplanar197_g178 );
				float temp_output_55_0_g177 = IN.ase_color.b;
				float temp_output_2_0_g177 = _Tiling3;
				float2 temp_cast_2 = (temp_output_2_0_g177).xx;
				float temp_output_184_0_g177 = _Falloff;
				float3 temp_output_183_0_g177 = WorldPosition;
				float3 triplanar197_g177 = TriplanarSampling197_g177( _Normal3, sampler_point_repeat, temp_output_183_0_g177, WorldNormal, temp_output_184_0_g177, temp_cast_2, _NormalStrength3, 0, temp_output_55_0_g177 );
				float3 tanTriplanarNormal197_g177 = mul( ase_worldToTangent, triplanar197_g177 );
				float temp_output_55_0_g176 = IN.ase_color.a;
				float temp_output_2_0_g176 = _Tiling4;
				float2 temp_cast_3 = (temp_output_2_0_g176).xx;
				float temp_output_184_0_g176 = _Falloff;
				float3 temp_output_183_0_g176 = WorldPosition;
				float3 triplanar197_g176 = TriplanarSampling197_g176( _Normal4, sampler_point_repeat, temp_output_183_0_g176, WorldNormal, temp_output_184_0_g176, temp_cast_3, _NormalStrength4, 0, temp_output_55_0_g176 );
				float3 tanTriplanarNormal197_g176 = mul( ase_worldToTangent, triplanar197_g176 );
				float temp_output_55_0_g180 = IN.ase_texcoord5.xy.x;
				float temp_output_2_0_g180 = _Tiling5;
				float2 temp_cast_4 = (temp_output_2_0_g180).xx;
				float temp_output_184_0_g180 = _Falloff;
				float3 temp_output_183_0_g180 = WorldPosition;
				float3 triplanar197_g180 = TriplanarSampling197_g180( _Normal5, sampler_point_repeat, temp_output_183_0_g180, WorldNormal, temp_output_184_0_g180, temp_cast_4, _NormalStrength5, 0, temp_output_55_0_g180 );
				float3 tanTriplanarNormal197_g180 = mul( ase_worldToTangent, triplanar197_g180 );
				float temp_output_55_0_g181 = IN.ase_texcoord5.xy.y;
				float temp_output_2_0_g181 = _Tiling6;
				float2 temp_cast_5 = (temp_output_2_0_g181).xx;
				float temp_output_184_0_g181 = _Falloff;
				float3 temp_output_183_0_g181 = WorldPosition;
				float3 triplanar197_g181 = TriplanarSampling197_g181( _Normal6, sampler_point_repeat, temp_output_183_0_g181, WorldNormal, temp_output_184_0_g181, temp_cast_5, _NormalStrength6, 0, temp_output_55_0_g181 );
				float3 tanTriplanarNormal197_g181 = mul( ase_worldToTangent, triplanar197_g181 );
				
				float3 Normal = ( ( ( ( ( ( temp_output_55_0_g179 * tanTriplanarNormal197_g179 ) + ( temp_output_55_0_g178 * tanTriplanarNormal197_g178 ) ) + ( temp_output_55_0_g177 * tanTriplanarNormal197_g177 ) ) + ( temp_output_55_0_g176 * tanTriplanarNormal197_g176 ) ) + ( temp_output_55_0_g180 * tanTriplanarNormal197_g180 ) ) + ( temp_output_55_0_g181 * tanTriplanarNormal197_g181 ) );
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
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

			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_SCREEN_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT


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
			float _OcclusionStrength4;
			float _OcclusionStrength3;
			float _OcclusionStrength2;
			float _OcclusionStrength1;
			float _Smooth6;
			float _Smooth5;
			float _Smooth4;
			float _Smooth3;
			float _Smooth2;
			float _Smooth1;
			float _Shiny6;
			float _Shiny5;
			float _Shiny4;
			float _Shiny3;
			float _Shiny2;
			float _Shiny1;
			float _NormalStrength6;
			float _Tiling1;
			float _Falloff;
			float _Tiling2;
			float _Tiling3;
			float _Tiling4;
			float _Tiling5;
			float _OcclusionStrength5;
			float _Tiling6;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
			float _NormalStrength3;
			float _NormalStrength4;
			float _NormalStrength5;
			float _FadeOffset;
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
			TEXTURE2D(_Albedo1);
			SAMPLER(sampler_point_repeat);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Albedo6);
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


			inline float4 TriplanarSampling193_g179( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g178( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g177( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g176( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g180( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling193_g181( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g179( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g178( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g177( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g176( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g180( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float3 TriplanarSampling197_g181( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float3 outputVar = float3(0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				outputVar  = normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g179( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g178( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g177( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g176( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g180( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			
			inline float4 TriplanarSampling195_g181( TEXTURE2D(topTexMap), SAMPLER(samplertopTexMap), float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index, float weight )
			{
				float4 outputVar = float4(0,0,0,0);
				if ( weight > 0.0 ) {
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = SAMPLE_TEXTURE2D( topTexMap, samplertopTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				outputVar = xNorm * projNormal.x + yNorm * projNormal.y + zNorm * projNormal.z;
				}
				return outputVar;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				o.ase_color = v.ase_color;
				o.ase_texcoord8.xy = v.texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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

				float3 appendResult1610 = (float3(_FadeColor.r , _FadeColor.g , _FadeColor.b));
				float temp_output_55_0_g179 = IN.ase_color.r;
				float temp_output_2_0_g179 = _Tiling1;
				float2 temp_cast_0 = (temp_output_2_0_g179).xx;
				float temp_output_184_0_g179 = _Falloff;
				float3 temp_output_183_0_g179 = WorldPosition;
				float4 triplanar193_g179 = TriplanarSampling193_g179( _Albedo1, sampler_point_repeat, temp_output_183_0_g179, WorldNormal, temp_output_184_0_g179, temp_cast_0, 1.0, 0, temp_output_55_0_g179 );
				float3 appendResult185_g179 = (float3(triplanar193_g179.x , triplanar193_g179.g , triplanar193_g179.b));
				float temp_output_55_0_g178 = IN.ase_color.g;
				float temp_output_2_0_g178 = _Tiling2;
				float2 temp_cast_1 = (temp_output_2_0_g178).xx;
				float temp_output_184_0_g178 = _Falloff;
				float3 temp_output_183_0_g178 = WorldPosition;
				float4 triplanar193_g178 = TriplanarSampling193_g178( _Albedo2, sampler_point_repeat, temp_output_183_0_g178, WorldNormal, temp_output_184_0_g178, temp_cast_1, 1.0, 0, temp_output_55_0_g178 );
				float3 appendResult185_g178 = (float3(triplanar193_g178.x , triplanar193_g178.g , triplanar193_g178.b));
				float temp_output_55_0_g177 = IN.ase_color.b;
				float temp_output_2_0_g177 = _Tiling3;
				float2 temp_cast_2 = (temp_output_2_0_g177).xx;
				float temp_output_184_0_g177 = _Falloff;
				float3 temp_output_183_0_g177 = WorldPosition;
				float4 triplanar193_g177 = TriplanarSampling193_g177( _Albedo3, sampler_point_repeat, temp_output_183_0_g177, WorldNormal, temp_output_184_0_g177, temp_cast_2, 1.0, 0, temp_output_55_0_g177 );
				float3 appendResult185_g177 = (float3(triplanar193_g177.x , triplanar193_g177.g , triplanar193_g177.b));
				float temp_output_55_0_g176 = IN.ase_color.a;
				float temp_output_2_0_g176 = _Tiling4;
				float2 temp_cast_3 = (temp_output_2_0_g176).xx;
				float temp_output_184_0_g176 = _Falloff;
				float3 temp_output_183_0_g176 = WorldPosition;
				float4 triplanar193_g176 = TriplanarSampling193_g176( _Albedo4, sampler_point_repeat, temp_output_183_0_g176, WorldNormal, temp_output_184_0_g176, temp_cast_3, 1.0, 0, temp_output_55_0_g176 );
				float3 appendResult185_g176 = (float3(triplanar193_g176.x , triplanar193_g176.g , triplanar193_g176.b));
				float temp_output_55_0_g180 = IN.ase_texcoord8.xy.x;
				float temp_output_2_0_g180 = _Tiling5;
				float2 temp_cast_4 = (temp_output_2_0_g180).xx;
				float temp_output_184_0_g180 = _Falloff;
				float3 temp_output_183_0_g180 = WorldPosition;
				float4 triplanar193_g180 = TriplanarSampling193_g180( _Albedo5, sampler_point_repeat, temp_output_183_0_g180, WorldNormal, temp_output_184_0_g180, temp_cast_4, 1.0, 0, temp_output_55_0_g180 );
				float3 appendResult185_g180 = (float3(triplanar193_g180.x , triplanar193_g180.g , triplanar193_g180.b));
				float temp_output_55_0_g181 = IN.ase_texcoord8.xy.y;
				float temp_output_2_0_g181 = _Tiling6;
				float2 temp_cast_5 = (temp_output_2_0_g181).xx;
				float temp_output_184_0_g181 = _Falloff;
				float3 temp_output_183_0_g181 = WorldPosition;
				float4 triplanar193_g181 = TriplanarSampling193_g181( _Albedo6, sampler_point_repeat, temp_output_183_0_g181, WorldNormal, temp_output_184_0_g181, temp_cast_5, 1.0, 0, temp_output_55_0_g181 );
				float3 appendResult185_g181 = (float3(triplanar193_g181.x , triplanar193_g181.g , triplanar193_g181.b));
				float clampResult1261 = clamp( ( ( ScreenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float3 lerpResult1262 = lerp( appendResult1610 , ( ( ( ( ( ( temp_output_55_0_g179 * appendResult185_g179 ) + ( temp_output_55_0_g178 * appendResult185_g178 ) ) + ( temp_output_55_0_g177 * appendResult185_g177 ) ) + ( temp_output_55_0_g176 * appendResult185_g176 ) ) + ( temp_output_55_0_g180 * appendResult185_g180 ) ) + ( temp_output_55_0_g181 * appendResult185_g181 ) ) , clampResult1261);
				
				float2 temp_cast_6 = (temp_output_2_0_g179).xx;
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				float3 triplanar197_g179 = TriplanarSampling197_g179( _Normal1, sampler_point_repeat, temp_output_183_0_g179, WorldNormal, temp_output_184_0_g179, temp_cast_6, _NormalStrength1, 0, temp_output_55_0_g179 );
				float3 tanTriplanarNormal197_g179 = mul( ase_worldToTangent, triplanar197_g179 );
				float2 temp_cast_7 = (temp_output_2_0_g178).xx;
				float3 triplanar197_g178 = TriplanarSampling197_g178( _Normal2, sampler_point_repeat, temp_output_183_0_g178, WorldNormal, temp_output_184_0_g178, temp_cast_7, _NormalStrength2, 0, temp_output_55_0_g178 );
				float3 tanTriplanarNormal197_g178 = mul( ase_worldToTangent, triplanar197_g178 );
				float2 temp_cast_8 = (temp_output_2_0_g177).xx;
				float3 triplanar197_g177 = TriplanarSampling197_g177( _Normal3, sampler_point_repeat, temp_output_183_0_g177, WorldNormal, temp_output_184_0_g177, temp_cast_8, _NormalStrength3, 0, temp_output_55_0_g177 );
				float3 tanTriplanarNormal197_g177 = mul( ase_worldToTangent, triplanar197_g177 );
				float2 temp_cast_9 = (temp_output_2_0_g176).xx;
				float3 triplanar197_g176 = TriplanarSampling197_g176( _Normal4, sampler_point_repeat, temp_output_183_0_g176, WorldNormal, temp_output_184_0_g176, temp_cast_9, _NormalStrength4, 0, temp_output_55_0_g176 );
				float3 tanTriplanarNormal197_g176 = mul( ase_worldToTangent, triplanar197_g176 );
				float2 temp_cast_10 = (temp_output_2_0_g180).xx;
				float3 triplanar197_g180 = TriplanarSampling197_g180( _Normal5, sampler_point_repeat, temp_output_183_0_g180, WorldNormal, temp_output_184_0_g180, temp_cast_10, _NormalStrength5, 0, temp_output_55_0_g180 );
				float3 tanTriplanarNormal197_g180 = mul( ase_worldToTangent, triplanar197_g180 );
				float2 temp_cast_11 = (temp_output_2_0_g181).xx;
				float3 triplanar197_g181 = TriplanarSampling197_g181( _Normal6, sampler_point_repeat, temp_output_183_0_g181, WorldNormal, temp_output_184_0_g181, temp_cast_11, _NormalStrength6, 0, temp_output_55_0_g181 );
				float3 tanTriplanarNormal197_g181 = mul( ase_worldToTangent, triplanar197_g181 );
				
				float2 temp_cast_12 = (temp_output_2_0_g179).xx;
				float4 triplanar195_g179 = TriplanarSampling195_g179( _Occlusion1, sampler_point_repeat, temp_output_183_0_g179, WorldNormal, temp_output_184_0_g179, temp_cast_12, 1.0, 0, temp_output_55_0_g179 );
				float temp_output_100_0_g179 = ( triplanar195_g179.x * temp_output_55_0_g179 );
				float2 temp_cast_13 = (temp_output_2_0_g178).xx;
				float4 triplanar195_g178 = TriplanarSampling195_g178( _Occlusion2, sampler_point_repeat, temp_output_183_0_g178, WorldNormal, temp_output_184_0_g178, temp_cast_13, 1.0, 0, temp_output_55_0_g178 );
				float temp_output_100_0_g178 = ( triplanar195_g178.x * temp_output_55_0_g178 );
				float2 temp_cast_14 = (temp_output_2_0_g177).xx;
				float4 triplanar195_g177 = TriplanarSampling195_g177( _Occlusion3, sampler_point_repeat, temp_output_183_0_g177, WorldNormal, temp_output_184_0_g177, temp_cast_14, 1.0, 0, temp_output_55_0_g177 );
				float temp_output_100_0_g177 = ( triplanar195_g177.x * temp_output_55_0_g177 );
				float2 temp_cast_15 = (temp_output_2_0_g176).xx;
				float4 triplanar195_g176 = TriplanarSampling195_g176( _Occlusion4, sampler_point_repeat, temp_output_183_0_g176, WorldNormal, temp_output_184_0_g176, temp_cast_15, 1.0, 0, temp_output_55_0_g176 );
				float temp_output_100_0_g176 = ( triplanar195_g176.x * temp_output_55_0_g176 );
				float2 temp_cast_16 = (temp_output_2_0_g180).xx;
				float4 triplanar195_g180 = TriplanarSampling195_g180( _Occlusion5, sampler_point_repeat, temp_output_183_0_g180, WorldNormal, temp_output_184_0_g180, temp_cast_16, 1.0, 0, temp_output_55_0_g180 );
				float temp_output_100_0_g180 = ( triplanar195_g180.x * temp_output_55_0_g180 );
				float2 temp_cast_17 = (temp_output_2_0_g181).xx;
				float4 triplanar195_g181 = TriplanarSampling195_g181( _Occlusion6, sampler_point_repeat, temp_output_183_0_g181, WorldNormal, temp_output_184_0_g181, temp_cast_17, 1.0, 0, temp_output_55_0_g181 );
				float temp_output_100_0_g181 = ( triplanar195_g181.x * temp_output_55_0_g181 );
				half3 temp_cast_18 = (( ( ( ( ( ( _Shiny1 * temp_output_100_0_g179 ) + ( _Shiny2 * temp_output_100_0_g178 ) ) + ( _Shiny3 * temp_output_100_0_g177 ) ) + ( _Shiny4 * temp_output_100_0_g176 ) ) + ( _Shiny5 * temp_output_100_0_g180 ) ) + ( _Shiny6 * temp_output_100_0_g181 ) )).xxx;
				
				float3 Albedo = lerpResult1262;
				float3 Normal = ( ( ( ( ( ( temp_output_55_0_g179 * tanTriplanarNormal197_g179 ) + ( temp_output_55_0_g178 * tanTriplanarNormal197_g178 ) ) + ( temp_output_55_0_g177 * tanTriplanarNormal197_g177 ) ) + ( temp_output_55_0_g176 * tanTriplanarNormal197_g176 ) ) + ( temp_output_55_0_g180 * tanTriplanarNormal197_g180 ) ) + ( temp_output_55_0_g181 * tanTriplanarNormal197_g181 ) );
				float3 Emission = 0;
				float3 Specular = temp_cast_18;
				float Metallic = 0;
				float Smoothness = ( ( ( ( ( ( _Smooth1 * temp_output_100_0_g179 ) + ( _Smooth2 * temp_output_100_0_g178 ) ) + ( _Smooth3 * temp_output_100_0_g177 ) ) + ( _Smooth4 * temp_output_100_0_g176 ) ) + ( _Smooth5 * temp_output_100_0_g180 ) ) + ( _Smooth6 * temp_output_100_0_g181 ) );
				float Occlusion = ( ( ( ( ( ( _OcclusionStrength1 * temp_output_100_0_g179 ) + ( _OcclusionStrength2 * temp_output_100_0_g178 ) ) + ( _OcclusionStrength3 * temp_output_100_0_g177 ) ) + ( _OcclusionStrength4 * temp_output_100_0_g176 ) ) + ( _OcclusionStrength5 * temp_output_100_0_g180 ) ) + ( _OcclusionStrength6 * temp_output_100_0_g181 ) );
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
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
        
			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
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
			float _OcclusionStrength4;
			float _OcclusionStrength3;
			float _OcclusionStrength2;
			float _OcclusionStrength1;
			float _Smooth6;
			float _Smooth5;
			float _Smooth4;
			float _Smooth3;
			float _Smooth2;
			float _Smooth1;
			float _Shiny6;
			float _Shiny5;
			float _Shiny4;
			float _Shiny3;
			float _Shiny2;
			float _Shiny1;
			float _NormalStrength6;
			float _Tiling1;
			float _Falloff;
			float _Tiling2;
			float _Tiling3;
			float _Tiling4;
			float _Tiling5;
			float _OcclusionStrength5;
			float _Tiling6;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
			float _NormalStrength3;
			float _NormalStrength4;
			float _NormalStrength5;
			float _FadeOffset;
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


				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _NORMAL_DROPOFF_TS 1
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
        
			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
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
			float _OcclusionStrength4;
			float _OcclusionStrength3;
			float _OcclusionStrength2;
			float _OcclusionStrength1;
			float _Smooth6;
			float _Smooth5;
			float _Smooth4;
			float _Smooth3;
			float _Smooth2;
			float _Smooth1;
			float _Shiny6;
			float _Shiny5;
			float _Shiny4;
			float _Shiny3;
			float _Shiny2;
			float _Shiny1;
			float _NormalStrength6;
			float _Tiling1;
			float _Falloff;
			float _Tiling2;
			float _Tiling3;
			float _Tiling4;
			float _Tiling5;
			float _OcclusionStrength5;
			float _Tiling6;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
			float _NormalStrength3;
			float _NormalStrength4;
			float _NormalStrength5;
			float _FadeOffset;
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


				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
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
223;78;1920;898;6275.228;462.946;1.588196;True;False
Node;AmplifyShaderEditor.CommentaryNode;1263;-3673.416,1612.106;Inherit;False;1860.958;464.9319;;9;1255;1256;1257;1258;1259;1260;1261;1262;1610;Fade Effect;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1169;-9970.388,-741.3306;Inherit;False;461.7822;435.8462;;3;113;114;1609;Mesh Data;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1394;-7611.752,-3178.781;Inherit;False;312.3711;1458.015;;6;913;965;901;958;920;896;Occlusion Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1414;-8781.536,-1636.117;Inherit;False;364.3984;691.3733;;6;1408;1409;1410;1411;1412;1413;Tiling;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1393;-8171.468,-3215.394;Inherit;False;321.5811;1470.914;;6;541;555;545;503;507;498;Normal Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1403;-7626.583,-1594.623;Inherit;False;363.6243;672.551;;6;1025;1026;1027;1028;1029;1030;Shiny;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1405;-8207.956,-868.4589;Inherit;False;365.3575;664.938;;6;1076;1077;1078;1079;1080;1081;Occlusion;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1404;-7633.524,-832.1539;Inherit;False;368.8105;687.964;;6;1045;1046;1047;1048;1049;1050;Smooth;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1407;-8202.17,-1634.721;Inherit;False;355.7516;690.6152;;6;613;614;615;616;617;618;Normal;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1392;-8742.427,-3189.193;Inherit;False;315.998;1467.114;;6;46;42;44;43;45;47;Albedo Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1498;-9744.179,-1502.482;Inherit;False;257.5771;521.2003;;3;1495;1494;1493;Samplers;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;46;-8678.427,-2178.647;Inherit;True;Property;_Albedo5;Albedo 5;32;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;c787bdaf6230f4b48a70eca7221420ad;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;1424;-3458.545,26.20776;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1050;-7564.714,-260.1883;Inherit;False;Property;_Smooth6;Smooth 6;47;0;Create;True;0;0;0;False;0;False;0.1;0.2;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1262;-1994.461,1790.371;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode;43;-8682.198,-2902.958;Inherit;True;Property;_Albedo2;Albedo 2;8;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;c0a45b109fd65b046936482efba94d21;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1049;-7568.432,-372.7214;Inherit;False;Property;_Smooth5;Smooth 5;39;0;Create;True;0;0;0;False;0;False;0.1;0.21;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1256;-2430.482,1865.039;Inherit;False;Property;_FadeColor;Fade Color;51;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.6415094,0.6415094,0.6415094,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1080;-8142.598,-420.1461;Inherit;False;Property;_OcclusionStrength5;Occlusion Strength 5;36;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1081;-8147.037,-319.5221;Inherit;False;Property;_OcclusionStrength6;Occlusion Strength 6;44;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1413;-8724.344,-1060.74;Inherit;False;Property;_Tiling6;Tiling 6;45;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1421;-3933.745,-64.53386;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1030;-7569.919,-1038.072;Inherit;False;Property;_Shiny6;Shiny 6;46;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1257;-3105.419,1869.181;Inherit;False;Property;_FadeRange;Fade Range;50;0;Create;True;0;0;0;False;0;False;0.5;0.9;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1412;-8731.541,-1170.495;Inherit;False;Property;_Tiling5;Tiling 5;37;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1423;-3620.925,-2.44751;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1029;-7576.581,-1144.251;Inherit;False;Property;_Shiny5;Shiny 5;38;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1511;-3614.458,346.3646;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1422;-3773.753,-38.26654;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1509;-3452.078,375.0199;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1607;-4970.708,291.5141;Inherit;False;Triplanar-Node-1-Section_Lite;-1;;180;240750ea6d7b19c3793d59fec310bb0f;0;14;194;SAMPLERSTATE;0;False;196;SAMPLERSTATE;0;False;198;SAMPLERSTATE;0;False;183;FLOAT3;0,0,0;False;184;FLOAT;0;False;1;SAMPLER2D;0;False;97;SAMPLER2D;0;False;80;SAMPLER2D;0;False;2;FLOAT;0.1;False;99;FLOAT;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;55;FLOAT;0;False;5;FLOAT3;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122
Node;AmplifyShaderEditor.TexturePropertyNode;896;-7551.381,-1950.772;Inherit;True;Property;_Occlusion6;Occlusion 6;42;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;f073d69c92cf03d4b837236064595ff3;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;1510;-3292.086,413.2269;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;45;-8678.207,-2410.16;Inherit;True;Property;_Albedo4;Albedo 4;24;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;53fd6e83a5f2d1841959744abed92a6b;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerStateNode;1494;-9687.03,-1372.236;Inherit;False;0;0;0;0;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1516;-3622.412,471.6206;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1508;-3770.102,188.9923;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;901;-7551.843,-2168.242;Inherit;True;Property;_Occlusion5;Occlusion 5;34;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;904abe3a0a0047448aaf87399172740a;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ClampOpNode;1261;-2581.423,1741.181;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;1493;-9685.813,-1452.483;Inherit;False;0;0;0;0;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.FunctionNode;1608;-4521.842,289.7607;Inherit;False;Triplanar-Node-1-Section_Lite;-1;;181;240750ea6d7b19c3793d59fec310bb0f;0;14;194;SAMPLERSTATE;0;False;196;SAMPLERSTATE;0;False;198;SAMPLERSTATE;0;False;183;FLOAT3;0,0,0;False;184;FLOAT;0;False;1;SAMPLER2D;0;False;97;SAMPLER2D;0;False;80;SAMPLER2D;0;False;2;FLOAT;0.1;False;99;FLOAT;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;55;FLOAT;0;False;5;FLOAT3;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122
Node;AmplifyShaderEditor.TexCoordVertexDataNode;114;-9920.387,-464.4851;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1610;-2186.606,1888.079;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1514;-3935.234,409.5341;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1260;-3546.22,1662.107;Float;False;1;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1255;-3106.419,1682.181;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1517;-3460.032,500.2755;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1500;-3288.262,183.2453;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1515;-3775.24,435.8015;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1513;-3767.286,310.5454;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1259;-3623.416,1902.181;Inherit;False;Property;_FadeOffset;Fade Offset;49;0;Create;True;1;Fade;0;0;False;0;False;0.5;2.61;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1425;-3298.553,64.41474;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1505;-3294.902,291.6738;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1507;-3930.095,162.7249;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;965;-7556.556,-3128.782;Inherit;True;Property;_Occlusion1;Occlusion 1;2;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;9fd8b2202bbe9c94eb3313c3f871bc03;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;958;-7561.752,-2886.33;Inherit;True;Property;_Occlusion2;Occlusion 2;10;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;aacaf9e80a8410a498b89b7012536647;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;1518;-3300.04,538.4824;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;47;-8681.04,-1952.077;Inherit;True;Property;_Albedo6;Albedo 6;40;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;97d17f5fbbbb20f43b0b696444e5484b;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;1512;-3927.28,284.278;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1499;-3448.254,145.0383;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1504;-3454.894,253.4668;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1258;-2841.421,1720.181;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;618;-8147.153,-1060.102;Inherit;False;Property;_NormalStrength6;Normal Strength 6;43;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1028;-7570.115,-1246.693;Inherit;False;Property;_Shiny4;Shiny 4;30;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;113;-9908.648,-691.3306;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1502;-3923.454,54.29645;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1078;-8144.883,-618.2632;Inherit;False;Property;_OcclusionStrength3;Occlusion Strength 3;20;0;Create;True;0;0;0;False;0;False;0.1;0.86;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1045;-7576.485,-782.1536;Inherit;False;Property;_Smooth1;Smooth 1;7;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;44;-8684.713,-2647.615;Inherit;True;Property;_Albedo3;Albedo 3;16;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;d4193c885fab53849a003d859b9fd170;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1027;-7562.957,-1347.249;Inherit;False;Property;_Shiny3;Shiny 3;22;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1079;-8144.108,-522.1416;Inherit;False;Property;_OcclusionStrength4;Occlusion Strength 4;28;0;Create;True;0;0;0;False;0;False;0.1;0.5;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;42;-8683.14,-3139.194;Inherit;True;Property;_Albedo1;Albedo 1;0;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;ace22d21483e490428f552c9a83ec097;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerStateNode;1495;-9685.603,-1283.725;Inherit;False;0;0;0;0;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1026;-7564.43,-1451.247;Inherit;False;Property;_Shiny2;Shiny 2;14;0;Create;True;0;0;0;False;0;False;0.1;0.13;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;913;-7558.13,-2637.205;Inherit;True;Property;_Occlusion3;Occlusion 3;18;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;c43e618f497cb96429438f86915af477;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1410;-8731.536,-1384.602;Inherit;False;Property;_Tiling3;Tiling 3;21;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;920;-7561.189,-2405.656;Inherit;True;Property;_Occlusion4;Occlusion 4;26;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;0db7eaa826100804c98ac7de7aa42dbe;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1076;-8157.957,-818.459;Inherit;False;Property;_OcclusionStrength1;Occlusion Strength 1;4;0;Create;True;0;0;0;False;0;False;0.1;2.36;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1077;-8155.9,-723.9085;Inherit;False;Property;_OcclusionStrength2;Occlusion Strength 2;12;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1025;-7571.941,-1544.623;Inherit;False;Property;_Shiny1;Shiny 1;6;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1047;-7583.524,-580.198;Inherit;False;Property;_Smooth3;Smooth 3;23;0;Create;True;0;0;0;False;0;False;0.1;0.76;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1411;-8717.146,-1274.85;Inherit;False;Property;_Tiling4;Tiling 4;29;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1046;-7579.306,-678.8351;Inherit;False;Property;_Smooth2;Smooth 2;15;0;Create;True;0;0;0;False;0;False;0.1;1.06;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1606;-5431.848,288.0074;Inherit;False;Triplanar-Node-1-Section_Lite;-1;;176;240750ea6d7b19c3793d59fec310bb0f;0;14;194;SAMPLERSTATE;0;False;196;SAMPLERSTATE;0;False;198;SAMPLERSTATE;0;False;183;FLOAT3;0,0,0;False;184;FLOAT;0;False;1;SAMPLER2D;0;False;97;SAMPLER2D;0;False;80;SAMPLER2D;0;False;2;FLOAT;0.1;False;99;FLOAT;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;55;FLOAT;0;False;5;FLOAT3;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122
Node;AmplifyShaderEditor.SimpleAddOpNode;1506;-3617.274,224.8115;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;555;-8103.563,-2197.386;Inherit;True;Property;_Normal5;Normal 5;33;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;7ba1d8f065cc0624cbe9f611dfad9839;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;1501;-3610.634,116.383;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1409;-8717.142,-1487.158;Inherit;False;Property;_Tiling2;Tiling 2;13;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1048;-7572.081,-467.8209;Inherit;False;Property;_Smooth4;Smooth 4;31;0;Create;True;0;0;0;False;0;False;0.1;0.44;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;613;-8149.053,-1584.721;Inherit;False;Property;_NormalStrength1;Normal Strength 1;3;0;Create;True;0;0;0;False;0;False;1;0.757;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;614;-8146.934,-1487.482;Inherit;False;Property;_NormalStrength2;Normal Strength 2;11;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;541;-8109.85,-2666.352;Inherit;True;Property;_Normal3;Normal 3;17;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;4af0b502770203d41b2dccc536456c35;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;498;-8101.886,-1974.484;Inherit;True;Property;_Normal6;Normal 6;41;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;f7d983e300c633049b2eb105f4904746;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;616;-8152.18,-1280.869;Inherit;False;Property;_NormalStrength4;Normal Strength 4;27;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;545;-8108.279,-3165.394;Inherit;True;Property;_Normal1;Normal 1;1;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;86d916eaa43f47148959f0d9fb5b5cf1;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;615;-8146.429,-1388.388;Inherit;False;Property;_NormalStrength3;Normal Strength 3;19;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1408;-8720.745,-1586.117;Inherit;False;Property;_Tiling1;Tiling 1;5;0;Create;True;0;0;0;False;0;False;0.1;0.1;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;503;-8121.468,-2927.135;Inherit;True;Property;_Normal2;Normal 2;9;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;8ae71100421dfea42bfa470977e74f79;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.WorldPosInputsNode;1609;-9704.564,-480.427;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;592;-9730.014,-907.5573;Inherit;False;Property;_Falloff;Fall off;48;1;[Header];Create;True;1;Other Parameter;0;0;False;0;False;1.56;1.56;0;4;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1603;-5430.68,-127.545;Inherit;False;Triplanar-Node-1-Section_Lite;-1;;179;240750ea6d7b19c3793d59fec310bb0f;0;14;194;SAMPLERSTATE;0;False;196;SAMPLERSTATE;0;False;198;SAMPLERSTATE;0;False;183;FLOAT3;0,0,0;False;184;FLOAT;0;False;1;SAMPLER2D;0;False;97;SAMPLER2D;0;False;80;SAMPLER2D;0;False;2;FLOAT;0.1;False;99;FLOAT;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;55;FLOAT;0;False;5;FLOAT3;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122
Node;AmplifyShaderEditor.FunctionNode;1604;-4969.54,-124.0383;Inherit;False;Triplanar-Node-1-Section_Lite;-1;;178;240750ea6d7b19c3793d59fec310bb0f;0;14;194;SAMPLERSTATE;0;False;196;SAMPLERSTATE;0;False;198;SAMPLERSTATE;0;False;183;FLOAT3;0,0,0;False;184;FLOAT;0;False;1;SAMPLER2D;0;False;97;SAMPLER2D;0;False;80;SAMPLER2D;0;False;2;FLOAT;0.1;False;99;FLOAT;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;55;FLOAT;0;False;5;FLOAT3;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122
Node;AmplifyShaderEditor.TexturePropertyNode;507;-8108.994,-2432.53;Inherit;True;Property;_Normal4;Normal 4;25;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;8ac5011d0c027884c9b3a0fc68382066;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;1503;-3763.462,80.56384;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1605;-4520.674,-125.7917;Inherit;False;Triplanar-Node-1-Section_Lite;-1;;177;240750ea6d7b19c3793d59fec310bb0f;0;14;194;SAMPLERSTATE;0;False;196;SAMPLERSTATE;0;False;198;SAMPLERSTATE;0;False;183;FLOAT3;0,0,0;False;184;FLOAT;0;False;1;SAMPLER2D;0;False;97;SAMPLER2D;0;False;80;SAMPLER2D;0;False;2;FLOAT;0.1;False;99;FLOAT;0;False;82;FLOAT;0;False;81;FLOAT;0;False;83;FLOAT;0;False;55;FLOAT;0;False;5;FLOAT3;0;FLOAT3;124;FLOAT;123;FLOAT;121;FLOAT;122
Node;AmplifyShaderEditor.RangedFloatNode;617;-8152.037,-1172.67;Inherit;False;Property;_NormalStrength5;Normal Strength 5;35;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;9;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;True;4;d3d11;glcore;gles;gles3;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;8;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;True;4;d3d11;glcore;gles;gles3;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1;-1532.439,1109.945;Half;False;True;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;uTerrains_Shader_Lite;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;19;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;False;False;True;1;LightMode=UniversalForward;False;False;0;Hidden/InternalErrorShader;0;0;Standard;40;Workflow;0;637838400787734890;Surface;0;637838607566779460;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;0;Fragment Normal Space,InvertActionOnDeselection;0;637838340752636060;Transmission;0;0;  Transmission Shadow;0.5,False,-1;0;Translucency;0;0;  Translucency Strength;1,False,-1;0;  Normal Distortion;0.5,False,-1;0;  Scattering;2,False,-1;0;  Direct;0.9,False,-1;0;  Ambient;0.1,False,-1;0;  Shadow;0.5,False,-1;0;Cast Shadows;1;0;  Use Shadow Threshold;1;637837049334647640;Receive Shadows;1;0;GPU Instancing;1;0;LOD CrossFade;1;637838598098262670;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;DOTS Instancing;0;0;Tessellation;0;637840367010609900;  Phong;1;637838398215314040;  Strength;1,True,-14;637838611146497990;  Type;1;637836364302939060;  Tess;5,True,-15;637838610927866090;  Min;25,True,-16;637838611006922130;  Max;25,True,-17;637838611072956620;  Edge Length;16,True,396;0;  Max Displacement;25,True,459;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;637838337124132950;Debug Display;0;0;Clear Coat;0;0;0;10;False;True;True;True;True;True;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;-999.5814,-3904.891;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;0;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;4;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;7;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;False;False;True;1;LightMode=UniversalGBuffer;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;6;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=DepthNormals;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;5;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Universal2D;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;3;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
WireConnection;1424;0;1423;0
WireConnection;1424;1;1607;0
WireConnection;1262;0;1610;0
WireConnection;1262;1;1425;0
WireConnection;1262;2;1261;0
WireConnection;1421;0;1603;0
WireConnection;1421;1;1604;0
WireConnection;1423;0;1422;0
WireConnection;1423;1;1606;0
WireConnection;1511;0;1513;0
WireConnection;1511;1;1606;121
WireConnection;1422;0;1421;0
WireConnection;1422;1;1605;0
WireConnection;1509;0;1511;0
WireConnection;1509;1;1607;121
WireConnection;1607;194;1493;0
WireConnection;1607;196;1494;0
WireConnection;1607;198;1495;0
WireConnection;1607;183;1609;0
WireConnection;1607;184;592;0
WireConnection;1607;1;46;0
WireConnection;1607;97;555;0
WireConnection;1607;80;901;0
WireConnection;1607;2;1412;0
WireConnection;1607;99;617;0
WireConnection;1607;82;1080;0
WireConnection;1607;81;1029;0
WireConnection;1607;83;1049;0
WireConnection;1607;55;114;1
WireConnection;1510;0;1509;0
WireConnection;1510;1;1608;121
WireConnection;1516;0;1515;0
WireConnection;1516;1;1606;122
WireConnection;1508;0;1507;0
WireConnection;1508;1;1605;123
WireConnection;1261;0;1258;0
WireConnection;1608;194;1493;0
WireConnection;1608;196;1494;0
WireConnection;1608;198;1495;0
WireConnection;1608;183;1609;0
WireConnection;1608;184;592;0
WireConnection;1608;1;47;0
WireConnection;1608;97;498;0
WireConnection;1608;80;896;0
WireConnection;1608;2;1413;0
WireConnection;1608;99;618;0
WireConnection;1608;82;1081;0
WireConnection;1608;81;1030;0
WireConnection;1608;83;1050;0
WireConnection;1608;55;114;2
WireConnection;1610;0;1256;1
WireConnection;1610;1;1256;2
WireConnection;1610;2;1256;3
WireConnection;1514;0;1603;122
WireConnection;1514;1;1604;122
WireConnection;1255;0;1260;4
WireConnection;1255;1;1259;0
WireConnection;1517;0;1516;0
WireConnection;1517;1;1607;122
WireConnection;1500;0;1499;0
WireConnection;1500;1;1608;124
WireConnection;1515;0;1514;0
WireConnection;1515;1;1605;122
WireConnection;1513;0;1512;0
WireConnection;1513;1;1605;121
WireConnection;1425;0;1424;0
WireConnection;1425;1;1608;0
WireConnection;1505;0;1504;0
WireConnection;1505;1;1608;123
WireConnection;1507;0;1603;123
WireConnection;1507;1;1604;123
WireConnection;1518;0;1517;0
WireConnection;1518;1;1608;122
WireConnection;1512;0;1603;121
WireConnection;1512;1;1604;121
WireConnection;1499;0;1501;0
WireConnection;1499;1;1607;124
WireConnection;1504;0;1506;0
WireConnection;1504;1;1607;123
WireConnection;1258;0;1255;0
WireConnection;1258;1;1257;0
WireConnection;1502;0;1603;124
WireConnection;1502;1;1604;124
WireConnection;1606;194;1493;0
WireConnection;1606;196;1494;0
WireConnection;1606;198;1495;0
WireConnection;1606;183;1609;0
WireConnection;1606;184;592;0
WireConnection;1606;1;45;0
WireConnection;1606;97;507;0
WireConnection;1606;80;920;0
WireConnection;1606;2;1411;0
WireConnection;1606;99;616;0
WireConnection;1606;82;1079;0
WireConnection;1606;81;1028;0
WireConnection;1606;83;1048;0
WireConnection;1606;55;113;4
WireConnection;1506;0;1508;0
WireConnection;1506;1;1606;123
WireConnection;1501;0;1503;0
WireConnection;1501;1;1606;124
WireConnection;1603;194;1493;0
WireConnection;1603;196;1494;0
WireConnection;1603;198;1495;0
WireConnection;1603;183;1609;0
WireConnection;1603;184;592;0
WireConnection;1603;1;42;0
WireConnection;1603;97;545;0
WireConnection;1603;80;965;0
WireConnection;1603;2;1408;0
WireConnection;1603;99;613;0
WireConnection;1603;82;1076;0
WireConnection;1603;81;1025;0
WireConnection;1603;83;1045;0
WireConnection;1603;55;113;1
WireConnection;1604;194;1493;0
WireConnection;1604;196;1494;0
WireConnection;1604;198;1495;0
WireConnection;1604;183;1609;0
WireConnection;1604;184;592;0
WireConnection;1604;1;43;0
WireConnection;1604;97;503;0
WireConnection;1604;80;958;0
WireConnection;1604;2;1409;0
WireConnection;1604;99;614;0
WireConnection;1604;82;1077;0
WireConnection;1604;81;1026;0
WireConnection;1604;83;1046;0
WireConnection;1604;55;113;2
WireConnection;1503;0;1502;0
WireConnection;1503;1;1605;124
WireConnection;1605;194;1493;0
WireConnection;1605;196;1494;0
WireConnection;1605;198;1495;0
WireConnection;1605;183;1609;0
WireConnection;1605;184;592;0
WireConnection;1605;1;44;0
WireConnection;1605;97;541;0
WireConnection;1605;80;913;0
WireConnection;1605;2;1410;0
WireConnection;1605;99;615;0
WireConnection;1605;82;1078;0
WireConnection;1605;81;1027;0
WireConnection;1605;83;1047;0
WireConnection;1605;55;113;3
WireConnection;1;0;1262;0
WireConnection;1;1;1500;0
WireConnection;1;9;1510;0
WireConnection;1;4;1505;0
WireConnection;1;5;1518;0
ASEEND*/
//CHKSM=60C685DFAD6FE0606A8095A84FAAF9FBED3B6E19