// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "uTerrains_Shader"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin][Header(Textures 1)][NoScaleOffset][SingleLineTexture]_Albedo1("Albedo 1", 2D) = "white" {}
		_AlbedoTiling1("Albedo Tiling 1", Range( 0 , 2)) = 0.1
		[NoScaleOffset][Normal][SingleLineTexture]_Normal1("Normal 1", 2D) = "bump" {}
		_NormalStrength1("Normal Strength 1", Range( 0 , 2)) = 1
		[NoScaleOffset][SingleLineTexture]_Occlusion1("Occlusion 1", 2D) = "white" {}
		_OcclusionStrength1("Occlusion Strength 1", Range( -10 , 10)) = 0.1
		_Shiny1("Shiny 1", Range( 0 , 10)) = 0.1
		_Smooth1("Smooth 1", Range( 0 , 10)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Height1("Height 1", 2D) = "white" {}
		_HeightParallax1("Height Parallax 1", Range( 0 , 0.1)) = 0
		[Header(Textures 2)][NoScaleOffset][SingleLineTexture]_Albedo2("Albedo 2", 2D) = "white" {}
		_AlbedoTiling2("Albedo Tiling 2", Range( 0 , 2)) = 0.1
		[NoScaleOffset][Normal][SingleLineTexture]_Normal2("Normal 2", 2D) = "bump" {}
		_NormalStrength2("Normal Strength 2", Range( 0 , 2)) = 1
		[NoScaleOffset][SingleLineTexture]_Occlusion2("Occlusion 2", 2D) = "white" {}
		_OcclusionStrength2("Occlusion Strength 2", Range( -10 , 10)) = 0.1
		_Shiny2("Shiny 2", Range( 0 , 10)) = 0.1
		_Smooth2("Smooth 2", Range( 0 , 10)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Height2("Height 2", 2D) = "white" {}
		_HeightParallax2("Height Parallax 2", Range( 0 , 0.1)) = 0
		[Header(Textures 3)][NoScaleOffset][SingleLineTexture]_Albedo3("Albedo 3", 2D) = "white" {}
		_AlbedoTiling3("Albedo Tiling 3", Range( 0 , 2)) = 0.1
		[NoScaleOffset][Normal][SingleLineTexture]_Normal3("Normal 3", 2D) = "bump" {}
		_NormalStrength3("Normal Strength 3", Range( 0 , 2)) = 1
		[NoScaleOffset][SingleLineTexture]_Occlusion3("Occlusion 3", 2D) = "white" {}
		_OcclusionStrength3("Occlusion Strength 3", Range( -10 , 10)) = 0.1
		_Shiny3("Shiny 3", Range( 0 , 10)) = 0.1
		_Smooth3("Smooth 3", Range( 0 , 10)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Height3("Height 3", 2D) = "white" {}
		_HeightParallax3("Height Parallax 3", Range( 0 , 0.1)) = 0
		[Header(Textures 4)][NoScaleOffset][SingleLineTexture]_Albedo4("Albedo 4", 2D) = "white" {}
		_AlbedoTiling4("Albedo Tiling 4", Range( 0 , 2)) = 0.1
		[NoScaleOffset][Normal][SingleLineTexture]_Normal4("Normal 4", 2D) = "bump" {}
		_NormalStrength4("Normal Strength 4", Range( 0 , 2)) = 1
		[NoScaleOffset][SingleLineTexture]_Occlusion4("Occlusion 4", 2D) = "white" {}
		_OcclusionStrength4("Occlusion Strength 4", Range( -10 , 10)) = 0.1
		_Shiny4("Shiny 4", Range( 0 , 10)) = 0.1
		_Smooth4("Smooth 4", Range( 0 , 10)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Height4("Height 4", 2D) = "white" {}
		_HeightParallax4("Height Parallax 4", Range( 0 , 0.1)) = 0
		[Header(Textures 5)][NoScaleOffset][SingleLineTexture]_Albedo5("Albedo 5", 2D) = "white" {}
		_AlbedoTiling5("Albedo Tiling 5", Range( 0 , 2)) = 0.1
		[NoScaleOffset][Normal][SingleLineTexture]_Normal5("Normal 5", 2D) = "bump" {}
		_NormalStrength5("Normal Strength 5", Range( 0 , 2)) = 1
		[NoScaleOffset][SingleLineTexture]_Occlusion5("Occlusion 5", 2D) = "white" {}
		_OcclusionStrength5("Occlusion Strength 5", Range( -10 , 10)) = 0.1
		_Shiny5("Shiny 5", Range( 0 , 10)) = 0.1
		_Smooth5("Smooth 5", Range( 0 , 10)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Height5("Height 5", 2D) = "white" {}
		_HeightParallax5("Height Parallax 5", Range( 0 , 0.1)) = 0
		[Header(Textures 6)][NoScaleOffset][SingleLineTexture]_Albedo6("Albedo 6", 2D) = "white" {}
		_AlbedoTiling6("Albedo Tiling 6", Range( 0 , 2)) = 0.1
		[NoScaleOffset][Normal][SingleLineTexture]_Normal6("Normal 6", 2D) = "bump" {}
		_NormalStrength6("Normal Strength 6", Range( 0 , 2)) = 1
		[NoScaleOffset][SingleLineTexture]_Occlusion6("Occlusion 6", 2D) = "white" {}
		_OcclusionStrength6("Occlusion Strength 6", Range( -10 , 10)) = 0.1
		_Shiny6("Shiny 6", Range( 0 , 10)) = 0.1
		_Smooth6("Smooth 6", Range( 0 , 10)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Height6("Height 6", 2D) = "white" {}
		_HeightParallax6("Height Parallax 6", Range( 0 , 0.1)) = 0
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

			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
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
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _Shiny6;
			float _Smooth1;
			float _NormalStrength6;
			float _Smooth2;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth3;
			float _NormalStrength5;
			float _NormalStrength4;
			float _NormalStrength3;
			float _AlbedoTiling1;
			float _HeightParallax1;
			float _Falloff;
			float _AlbedoTiling2;
			float _HeightParallax2;
			float _AlbedoTiling3;
			float _HeightParallax3;
			float _AlbedoTiling4;
			float _HeightParallax4;
			float _AlbedoTiling5;
			float _HeightParallax5;
			float _AlbedoTiling6;
			float _HeightParallax6;
			float _FadeOffset;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
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
			TEXTURE2D(_Albedo1);
			TEXTURE2D(_Height1);
			SAMPLER(sampler_Height1);
			SAMPLER(sampler_Albedo1);
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
			SAMPLER(sampler_Normal1);
			TEXTURE2D(_Normal2);
			TEXTURE2D(_Normal3);
			TEXTURE2D(_Normal4);
			TEXTURE2D(_Normal5);
			TEXTURE2D(_Normal6);
			TEXTURE2D(_Occlusion1);
			SAMPLER(sampler_Occlusion1);
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

				o.ase_color = v.ase_color;
				o.ase_texcoord8.xy = v.texcoord.xy;
				o.ase_texcoord8.zw = v.texcoord1.xy;
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

				float4 break1303 = IN.ase_color;
				float3 break372 = WorldPosition;
				float3 break602 = sign( WorldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float2 ifLocalVar1264 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1264 = appendResult379;
				float4 break1330 = IN.ase_color;
				float2 uv_Height1443 = IN.ase_texcoord8.xy;
				float ifLocalVar1348 = 0;
				if( break1330.r > 0.0 )
				ifLocalVar1348 = SAMPLE_TEXTURE2D( _Height1, sampler_Height1, uv_Height1443 ).r;
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * WorldViewDirection.x + tanToWorld1 * WorldViewDirection.y  + tanToWorld2 * WorldViewDirection.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 Offset446 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( ifLocalVar1264 * _AlbedoTiling1 );
				float2 Offset449 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset446 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset446;
				float2 Offset454 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset449 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset449;
				float2 Offset459 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset454 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset454;
				float2 temp_output_966_0 = ddx( Offset459 );
				float2 temp_output_970_0 = ddy( Offset459 );
				float4 ifLocalVar1289 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1289 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset459, temp_output_966_0, temp_output_970_0 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( WorldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 PlanarNormal1254 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break382 = PlanarNormal1254;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 ifLocalVar1265 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1265 = appendResult380;
				float2 Offset626 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( ifLocalVar1265 * _AlbedoTiling1 );
				float2 Offset628 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset626 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset626;
				float2 Offset630 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset628 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset628;
				float2 Offset632 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset630 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset630;
				float2 temp_output_967_0 = ddx( Offset632 );
				float2 temp_output_971_0 = ddy( Offset632 );
				float4 ifLocalVar1288 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1288 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset632, temp_output_967_0, temp_output_971_0 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 ifLocalVar1266 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1266 = appendResult381;
				float2 Offset633 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( _AlbedoTiling1 * ifLocalVar1266 );
				float2 Offset635 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset633 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset633;
				float2 Offset637 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset635 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset635;
				float2 Offset639 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset637 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset637;
				float2 temp_output_968_0 = ddx( Offset639 );
				float2 temp_output_972_0 = ddy( Offset639 );
				float4 ifLocalVar1287 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1287 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset639, temp_output_968_0, temp_output_972_0 );
				float2 ifLocalVar1267 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1267 = appendResult379;
				float2 uv_Height2662 = IN.ase_texcoord8.xy;
				float ifLocalVar1346 = 0;
				if( break1330.g > 0.0 )
				ifLocalVar1346 = SAMPLE_TEXTURE2D( _Height2, sampler_Height1, uv_Height2662 ).r;
				float2 Offset644 = ( ( ifLocalVar1346 - 1 ) * float3( 0,0,0 ).xy * _HeightParallax2 ) + ( ifLocalVar1267 * _AlbedoTiling2 );
				float2 Offset646 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset644 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset644;
				float2 Offset648 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset646 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset646;
				float2 Offset661 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset648 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset648;
				float2 temp_output_984_0 = ddx( Offset661 );
				float2 temp_output_979_0 = ddy( Offset661 );
				float4 ifLocalVar1286 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1286 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset661, temp_output_984_0, temp_output_979_0 );
				float2 ifLocalVar1268 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1268 = appendResult380;
				float2 Offset650 = ( ( ifLocalVar1346 - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + ( ifLocalVar1268 * _AlbedoTiling2 );
				float2 Offset652 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset650 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset650;
				float2 Offset654 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset652 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset652;
				float2 Offset656 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset654 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset654;
				float2 temp_output_983_0 = ddx( Offset656 );
				float2 temp_output_981_0 = ddy( Offset656 );
				float4 ifLocalVar1285 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1285 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset656, temp_output_983_0, temp_output_981_0 );
				float2 ifLocalVar1269 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1269 = appendResult381;
				float2 Offset657 = ( ( ifLocalVar1346 - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + ( ifLocalVar1269 * _AlbedoTiling2 );
				float2 Offset659 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset657 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset657;
				float2 Offset643 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset659 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset659;
				float2 Offset641 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset643 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset643;
				float2 temp_output_982_0 = ddx( Offset641 );
				float2 temp_output_980_0 = ddy( Offset641 );
				float4 ifLocalVar1284 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1284 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset641, temp_output_982_0, temp_output_980_0 );
				float2 ifLocalVar1270 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1270 = appendResult379;
				float2 uv_Height3678 = IN.ase_texcoord8.xy;
				float ifLocalVar1336 = 0;
				if( break1330.b > 0.0 )
				ifLocalVar1336 = SAMPLE_TEXTURE2D( _Height3, sampler_Height1, uv_Height3678 ).r;
				float2 Offset667 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1270 * _AlbedoTiling3 );
				float2 Offset669 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset667 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset667;
				float2 Offset671 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset669 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset669;
				float2 Offset664 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset671 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset671;
				float2 temp_output_978_0 = ddx( Offset664 );
				float2 temp_output_973_0 = ddy( Offset664 );
				float4 ifLocalVar1292 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1292 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset664, temp_output_978_0, temp_output_973_0 );
				float2 ifLocalVar1271 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1271 = appendResult380;
				float2 Offset683 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1271 * _AlbedoTiling3 );
				float2 Offset681 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset683 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset683;
				float2 Offset679 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset681 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset681;
				float2 Offset677 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset679 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset679;
				float2 temp_output_977_0 = ddx( Offset677 );
				float2 temp_output_975_0 = ddy( Offset677 );
				float4 ifLocalVar1291 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1291 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset677, temp_output_977_0, temp_output_975_0 );
				float2 ifLocalVar1272 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1272 = appendResult381;
				float2 Offset676 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1272 * _AlbedoTiling3 );
				float2 Offset674 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset676 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset676;
				float2 Offset666 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset674 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset674;
				float2 Offset665 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset666 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset666;
				float2 temp_output_976_0 = ddx( Offset665 );
				float2 temp_output_974_0 = ddy( Offset665 );
				float4 ifLocalVar1290 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1290 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset665, temp_output_976_0, temp_output_974_0 );
				float2 ifLocalVar1273 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1273 = appendResult379;
				float2 uv_Height4740 = IN.ase_texcoord8.xy;
				float ifLocalVar1338 = 0;
				if( break1330.a > 0.0 )
				ifLocalVar1338 = SAMPLE_TEXTURE2D( _Height4, sampler_Height1, uv_Height4740 ).r;
				float2 Offset690 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1273 * _AlbedoTiling4 );
				float2 Offset692 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset690 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset690;
				float2 Offset727 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset692 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset692;
				float2 Offset752 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset727 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset727;
				float2 temp_output_996_0 = ddx( Offset752 );
				float2 temp_output_991_0 = ddy( Offset752 );
				float4 ifLocalVar1294 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1294 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset752, temp_output_996_0, temp_output_991_0 );
				float2 ifLocalVar1274 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1274 = appendResult380;
				float2 Offset729 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1274 * _AlbedoTiling4 );
				float2 Offset731 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset729 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset729;
				float2 Offset753 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset731 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset731;
				float2 Offset734 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset753 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset753;
				float2 temp_output_995_0 = ddx( Offset734 );
				float2 temp_output_993_0 = ddy( Offset734 );
				float4 ifLocalVar1295 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1295 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset734, temp_output_995_0, temp_output_993_0 );
				float2 ifLocalVar1275 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1275 = appendResult381;
				float2 Offset735 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1275 * _AlbedoTiling4 );
				float2 Offset737 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset735 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset735;
				float2 Offset689 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset737 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset737;
				float2 Offset687 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset689 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset689;
				float2 temp_output_994_0 = ddx( Offset687 );
				float2 temp_output_992_0 = ddy( Offset687 );
				float4 ifLocalVar1293 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1293 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset687, temp_output_994_0, temp_output_992_0 );
				float2 break1305 = IN.ase_texcoord8.zw;
				float2 ifLocalVar1276 = 0;
				if( IN.ase_texcoord8.zw.x > 0.0 )
				ifLocalVar1276 = appendResult379;
				float2 break1329 = IN.ase_texcoord8.zw;
				float2 uv_Height5693 = IN.ase_texcoord8.xy;
				float ifLocalVar1340 = 0;
				if( break1329.x > 0.0 )
				ifLocalVar1340 = SAMPLE_TEXTURE2D( _Height5, sampler_Height1, uv_Height5693 ).r;
				float2 Offset745 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1276 * _AlbedoTiling5 );
				float2 Offset747 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset745 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset745;
				float2 Offset749 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset747 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset747;
				float2 Offset742 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset749 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset749;
				float2 temp_output_1002_0 = ddx( Offset742 );
				float2 temp_output_997_0 = ddy( Offset742 );
				float4 ifLocalVar1296 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1296 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset742, temp_output_1002_0, temp_output_997_0 );
				float2 ifLocalVar1277 = 0;
				if( IN.ase_texcoord8.zw.x > 0.0 )
				ifLocalVar1277 = appendResult380;
				float2 Offset698 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1277 * _AlbedoTiling5 );
				float2 Offset696 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset698 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset698;
				float2 Offset694 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset696 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset696;
				float2 Offset722 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset694 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset694;
				float2 temp_output_1001_0 = ddx( Offset722 );
				float2 temp_output_999_0 = ddy( Offset722 );
				float4 ifLocalVar1298 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1298 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset722, temp_output_1001_0, temp_output_999_0 );
				float2 ifLocalVar1278 = 0;
				if( IN.ase_texcoord8.zw.x > 0.0 )
				ifLocalVar1278 = appendResult381;
				float2 Offset723 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1278 * _AlbedoTiling5 );
				float2 Offset725 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset723 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset723;
				float2 Offset744 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset725 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset725;
				float2 Offset743 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset744 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset744;
				float2 temp_output_1000_0 = ddx( Offset743 );
				float2 temp_output_998_0 = ddy( Offset743 );
				float4 ifLocalVar1297 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1297 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset743, temp_output_1000_0, temp_output_998_0 );
				float2 ifLocalVar1279 = 0;
				if( IN.ase_texcoord8.zw.y > 0.0 )
				ifLocalVar1279 = appendResult379;
				float2 uv_Height6754 = IN.ase_texcoord8.xy;
				float ifLocalVar1344 = 0;
				if( break1329.y > 0.0 )
				ifLocalVar1344 = SAMPLE_TEXTURE2D( _Height6, sampler_Height1, uv_Height6754 ).r;
				float2 Offset704 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1279 * _AlbedoTiling6 );
				float2 Offset706 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset704 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset704;
				float2 Offset708 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset706 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset706;
				float2 Offset701 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset708 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset708;
				float2 temp_output_990_0 = ddx( Offset701 );
				float2 temp_output_985_0 = ddy( Offset701 );
				float4 ifLocalVar1300 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1300 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset701, temp_output_990_0, temp_output_985_0 );
				float2 ifLocalVar1280 = 0;
				if( IN.ase_texcoord8.zw.y > 0.0 )
				ifLocalVar1280 = appendResult380;
				float2 Offset719 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1280 * _AlbedoTiling6 );
				float2 Offset717 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset719 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset719;
				float2 Offset715 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset717 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset717;
				float2 Offset714 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset715 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset715;
				float2 temp_output_989_0 = ddx( Offset714 );
				float2 temp_output_987_0 = ddy( Offset714 );
				float4 ifLocalVar1299 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1299 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset714, temp_output_989_0, temp_output_987_0 );
				float2 ifLocalVar1281 = 0;
				if( IN.ase_texcoord8.zw.y > 0.0 )
				ifLocalVar1281 = appendResult381;
				float2 Offset713 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1281 * _AlbedoTiling6 );
				float2 Offset711 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset713 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset713;
				float2 Offset703 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset711 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset711;
				float2 Offset702 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset703 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset703;
				float2 temp_output_988_0 = ddx( Offset702 );
				float2 temp_output_986_0 = ddy( Offset702 );
				float4 ifLocalVar1301 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1301 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset702, temp_output_988_0, temp_output_986_0 );
				float clampResult1261 = clamp( ( ( ScreenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1289 * break382.x ) + ( ifLocalVar1288 * break382.y ) ) + ( ifLocalVar1287 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1286 * break382.x ) + ( ifLocalVar1285 * break382.y ) ) + ( ifLocalVar1284 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1292 * break382.x ) + ( ifLocalVar1291 * break382.y ) ) + ( ifLocalVar1290 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1294 * break382.x ) + ( ifLocalVar1295 * break382.y ) ) + ( ifLocalVar1293 * break382.z ) ) ) ) + ( IN.ase_texcoord8.zw.x * ( ( ( ifLocalVar1296 * break382.x ) + ( ifLocalVar1298 * break382.y ) ) + ( ifLocalVar1297 * break382.z ) ) ) ) + ( IN.ase_texcoord8.zw.y * ( ( ( ifLocalVar1300 * break382.x ) + ( ifLocalVar1299 * break382.y ) ) + ( ifLocalVar1301 * break382.z ) ) ) ) , clampResult1261);
				
				float4 break1374 = IN.ase_color;
				float3 unpack587 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_Normal1, Offset459, temp_output_966_0, temp_output_970_0 ), _NormalStrength1 );
				unpack587.z = lerp( 1, unpack587.z, saturate(_NormalStrength1) );
				float3 ifLocalVar1390 = 0;
				if( break1374.r > 0.0 )
				ifLocalVar1390 = unpack587;
				float3 unpack578 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_Normal1, Offset632, temp_output_967_0, temp_output_971_0 ), _NormalStrength1 );
				unpack578.z = lerp( 1, unpack578.z, saturate(_NormalStrength1) );
				float3 ifLocalVar1389 = 0;
				if( break1374.r > 0.0 )
				ifLocalVar1389 = unpack578;
				float3 unpack584 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_Normal1, Offset639, temp_output_968_0, temp_output_972_0 ), _NormalStrength1 );
				unpack584.z = lerp( 1, unpack584.z, saturate(_NormalStrength1) );
				float3 ifLocalVar1377 = 0;
				if( break1374.r > 0.0 )
				ifLocalVar1377 = unpack584;
				float3 unpack544 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_Normal1, Offset661, temp_output_984_0, temp_output_979_0 ), _NormalStrength2 );
				unpack544.z = lerp( 1, unpack544.z, saturate(_NormalStrength2) );
				float3 ifLocalVar1388 = 0;
				if( break1374.g > 0.0 )
				ifLocalVar1388 = unpack544;
				float3 unpack571 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_Normal1, Offset656, temp_output_983_0, temp_output_981_0 ), _NormalStrength2 );
				unpack571.z = lerp( 1, unpack571.z, saturate(_NormalStrength2) );
				float3 ifLocalVar1376 = 0;
				if( break1374.g > 0.0 )
				ifLocalVar1376 = unpack571;
				float3 unpack500 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_Normal1, Offset641, temp_output_982_0, temp_output_980_0 ), _NormalStrength2 );
				unpack500.z = lerp( 1, unpack500.z, saturate(_NormalStrength2) );
				float3 ifLocalVar1375 = 0;
				if( break1374.g > 0.0 )
				ifLocalVar1375 = unpack500;
				float3 unpack497 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_Normal1, Offset664, temp_output_978_0, temp_output_973_0 ), _NormalStrength3 );
				unpack497.z = lerp( 1, unpack497.z, saturate(_NormalStrength3) );
				float3 ifLocalVar1380 = 0;
				if( break1374.b > 0.0 )
				ifLocalVar1380 = unpack497;
				float3 unpack540 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_Normal1, Offset677, temp_output_977_0, temp_output_975_0 ), _NormalStrength3 );
				unpack540.z = lerp( 1, unpack540.z, saturate(_NormalStrength3) );
				float3 ifLocalVar1379 = 0;
				if( break1374.b > 0.0 )
				ifLocalVar1379 = unpack540;
				float3 unpack554 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_Normal1, Offset665, temp_output_976_0, temp_output_974_0 ), _NormalStrength3 );
				unpack554.z = lerp( 1, unpack554.z, saturate(_NormalStrength3) );
				float3 ifLocalVar1378 = 0;
				if( break1374.b > 0.0 )
				ifLocalVar1378 = unpack554;
				float3 unpack499 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_Normal1, Offset752, temp_output_996_0, temp_output_991_0 ), _NormalStrength4 );
				unpack499.z = lerp( 1, unpack499.z, saturate(_NormalStrength4) );
				float3 ifLocalVar1382 = 0;
				if( break1374.a > 0.0 )
				ifLocalVar1382 = unpack499;
				float3 unpack505 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_Normal1, Offset734, temp_output_995_0, temp_output_993_0 ), _NormalStrength4 );
				unpack505.z = lerp( 1, unpack505.z, saturate(_NormalStrength4) );
				float3 ifLocalVar1383 = 0;
				if( break1374.a > 0.0 )
				ifLocalVar1383 = unpack505;
				float3 unpack508 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_Normal1, Offset687, temp_output_994_0, temp_output_992_0 ), _NormalStrength4 );
				unpack508.z = lerp( 1, unpack508.z, saturate(_NormalStrength4) );
				float3 ifLocalVar1381 = 0;
				if( break1374.a > 0.0 )
				ifLocalVar1381 = unpack508;
				float2 break1373 = IN.ase_texcoord8.zw;
				float3 unpack504 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_Normal1, Offset742, temp_output_1002_0, temp_output_997_0 ), _NormalStrength5 );
				unpack504.z = lerp( 1, unpack504.z, saturate(_NormalStrength5) );
				float3 ifLocalVar1384 = 0;
				if( break1373.x > 0.0 )
				ifLocalVar1384 = unpack504;
				float3 unpack564 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_Normal1, Offset722, temp_output_1001_0, temp_output_999_0 ), _NormalStrength5 );
				unpack564.z = lerp( 1, unpack564.z, saturate(_NormalStrength5) );
				float3 ifLocalVar1372 = 0;
				if( break1373.x > 0.0 )
				ifLocalVar1372 = unpack564;
				float3 unpack506 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_Normal1, Offset743, temp_output_1000_0, temp_output_998_0 ), _NormalStrength5 );
				unpack506.z = lerp( 1, unpack506.z, saturate(_NormalStrength5) );
				float3 ifLocalVar1391 = 0;
				if( break1373.x > 0.0 )
				ifLocalVar1391 = unpack506;
				float3 unpack539 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_Normal1, Offset701, temp_output_990_0, temp_output_985_0 ), _NormalStrength6 );
				unpack539.z = lerp( 1, unpack539.z, saturate(_NormalStrength6) );
				float3 ifLocalVar1386 = 0;
				if( break1373.y > 0.0 )
				ifLocalVar1386 = unpack539;
				float3 unpack561 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_Normal1, Offset714, temp_output_989_0, temp_output_987_0 ), _NormalStrength6 );
				unpack561.z = lerp( 1, unpack561.z, saturate(_NormalStrength6) );
				float3 ifLocalVar1385 = 0;
				if( break1373.y > 0.0 )
				ifLocalVar1385 = unpack561;
				float3 unpack568 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_Normal1, Offset702, temp_output_988_0, temp_output_986_0 ), _NormalStrength6 );
				unpack568.z = lerp( 1, unpack568.z, saturate(_NormalStrength6) );
				float3 ifLocalVar1387 = 0;
				if( break1373.y > 0.0 )
				ifLocalVar1387 = unpack568;
				
				float4 break1326 = IN.ase_color;
				float ifLocalVar1308 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1308 = SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_Occlusion1, Offset459, temp_output_966_0, temp_output_970_0 ).r;
				float ifLocalVar1309 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1309 = SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_Occlusion1, Offset632, temp_output_967_0, temp_output_971_0 ).r;
				float ifLocalVar1323 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1323 = SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_Occlusion1, Offset639, temp_output_968_0, temp_output_972_0 ).r;
				float temp_output_903_0 = ( IN.ase_color.r * ( ( ( ifLocalVar1308 * break382.x ) + ( ifLocalVar1309 * break382.y ) ) + ( ifLocalVar1323 * break382.z ) ) );
				float ifLocalVar1310 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1310 = SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_Occlusion1, Offset661, temp_output_984_0, temp_output_979_0 ).r;
				float ifLocalVar1324 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1324 = SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_Occlusion1, Offset656, temp_output_983_0, temp_output_981_0 ).r;
				float ifLocalVar1325 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1325 = SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_Occlusion1, Offset641, temp_output_982_0, temp_output_980_0 ).r;
				float temp_output_942_0 = ( IN.ase_color.g * ( ( ( ifLocalVar1310 * break382.x ) + ( ifLocalVar1324 * break382.y ) ) + ( ifLocalVar1325 * break382.z ) ) );
				float ifLocalVar1320 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1320 = SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_Occlusion1, Offset664, temp_output_978_0, temp_output_973_0 ).r;
				float ifLocalVar1321 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1321 = SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_Occlusion1, Offset677, temp_output_977_0, temp_output_975_0 ).r;
				float ifLocalVar1322 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1322 = SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_Occlusion1, Offset665, temp_output_976_0, temp_output_974_0 ).r;
				float temp_output_944_0 = ( IN.ase_color.b * ( ( ( ifLocalVar1320 * break382.x ) + ( ifLocalVar1321 * break382.y ) ) + ( ifLocalVar1322 * break382.z ) ) );
				float ifLocalVar1318 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1318 = SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_Occlusion1, Offset752, temp_output_996_0, temp_output_991_0 ).r;
				float ifLocalVar1317 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1317 = SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_Occlusion1, Offset734, temp_output_995_0, temp_output_993_0 ).r;
				float ifLocalVar1319 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1319 = SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_Occlusion1, Offset687, temp_output_994_0, temp_output_992_0 ).r;
				float temp_output_924_0 = ( IN.ase_color.a * ( ( ( ifLocalVar1318 * break382.x ) + ( ifLocalVar1317 * break382.y ) ) + ( ifLocalVar1319 * break382.z ) ) );
				float2 break1327 = IN.ase_texcoord8.zw;
				float ifLocalVar1316 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1316 = SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_Occlusion1, Offset742, temp_output_1002_0, temp_output_997_0 ).r;
				float ifLocalVar1314 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1314 = SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_Occlusion1, Offset722, temp_output_1001_0, temp_output_999_0 ).r;
				float ifLocalVar1315 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1315 = SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_Occlusion1, Offset743, temp_output_1000_0, temp_output_998_0 ).r;
				float temp_output_947_0 = ( IN.ase_texcoord8.zw.x * ( ( ( ifLocalVar1316 * break382.x ) + ( ifLocalVar1314 * break382.y ) ) + ( ifLocalVar1315 * break382.z ) ) );
				float ifLocalVar1312 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1312 = SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_Occlusion1, Offset701, temp_output_990_0, temp_output_985_0 ).r;
				float ifLocalVar1313 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1313 = SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_Occlusion1, Offset714, temp_output_989_0, temp_output_987_0 ).r;
				float ifLocalVar1311 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1311 = SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_Occlusion1, Offset702, temp_output_988_0, temp_output_986_0 ).r;
				float temp_output_943_0 = ( IN.ase_texcoord8.zw.y * ( ( ( ifLocalVar1312 * break382.x ) + ( ifLocalVar1313 * break382.y ) ) + ( ifLocalVar1311 * break382.z ) ) );
				half3 temp_cast_2 = (( ( ( ( ( ( _Shiny1 * temp_output_903_0 ) + ( _Shiny2 * temp_output_942_0 ) ) + ( _Shiny3 * temp_output_944_0 ) ) + ( _Shiny4 * temp_output_924_0 ) ) + ( _Shiny5 * temp_output_947_0 ) ) + ( _Shiny6 * temp_output_943_0 ) )).xxx;
				
				float3 Albedo = lerpResult1262.rgb;
				float3 Normal = ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1390 * break382.x ) + ( ifLocalVar1389 * break382.y ) ) + ( ifLocalVar1377 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1388 * break382.x ) + ( ifLocalVar1376 * break382.y ) ) + ( ifLocalVar1375 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1380 * break382.x ) + ( ifLocalVar1379 * break382.y ) ) + ( ifLocalVar1378 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1382 * break382.x ) + ( ifLocalVar1383 * break382.y ) ) + ( ifLocalVar1381 * break382.z ) ) ) ) + ( IN.ase_texcoord8.zw.x * ( ( ( ifLocalVar1384 * break382.x ) + ( ifLocalVar1372 * break382.y ) ) + ( ifLocalVar1391 * break382.z ) ) ) ) + ( IN.ase_texcoord8.zw.y * ( ( ( ifLocalVar1386 * break382.x ) + ( ifLocalVar1385 * break382.y ) ) + ( ifLocalVar1387 * break382.z ) ) ) );
				float3 Emission = 0;
				float3 Specular = temp_cast_2;
				float Metallic = 0;
				float Smoothness = ( ( ( ( ( ( _Smooth1 * temp_output_903_0 ) + ( _Smooth2 * temp_output_942_0 ) ) + ( _Smooth3 * temp_output_944_0 ) ) + ( _Smooth4 * temp_output_924_0 ) ) + ( _Smooth5 * temp_output_947_0 ) ) + ( _Smooth6 * temp_output_943_0 ) );
				float Occlusion = ( ( ( ( ( ( _OcclusionStrength1 * temp_output_903_0 ) + ( _OcclusionStrength2 * temp_output_942_0 ) ) + ( _OcclusionStrength3 * temp_output_944_0 ) ) + ( _OcclusionStrength4 * temp_output_924_0 ) ) + ( _OcclusionStrength5 * temp_output_947_0 ) ) + ( _OcclusionStrength6 * temp_output_943_0 ) );
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
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _Shiny6;
			float _Smooth1;
			float _NormalStrength6;
			float _Smooth2;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth3;
			float _NormalStrength5;
			float _NormalStrength4;
			float _NormalStrength3;
			float _AlbedoTiling1;
			float _HeightParallax1;
			float _Falloff;
			float _AlbedoTiling2;
			float _HeightParallax2;
			float _AlbedoTiling3;
			float _HeightParallax3;
			float _AlbedoTiling4;
			float _HeightParallax4;
			float _AlbedoTiling5;
			float _HeightParallax5;
			float _AlbedoTiling6;
			float _HeightParallax6;
			float _FadeOffset;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
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
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _Shiny6;
			float _Smooth1;
			float _NormalStrength6;
			float _Smooth2;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth3;
			float _NormalStrength5;
			float _NormalStrength4;
			float _NormalStrength3;
			float _AlbedoTiling1;
			float _HeightParallax1;
			float _Falloff;
			float _AlbedoTiling2;
			float _HeightParallax2;
			float _AlbedoTiling3;
			float _HeightParallax3;
			float _AlbedoTiling4;
			float _HeightParallax4;
			float _AlbedoTiling5;
			float _HeightParallax5;
			float _AlbedoTiling6;
			float _HeightParallax6;
			float _FadeOffset;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
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

			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_VERT_NORMAL


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
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _Shiny6;
			float _Smooth1;
			float _NormalStrength6;
			float _Smooth2;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth3;
			float _NormalStrength5;
			float _NormalStrength4;
			float _NormalStrength3;
			float _AlbedoTiling1;
			float _HeightParallax1;
			float _Falloff;
			float _AlbedoTiling2;
			float _HeightParallax2;
			float _AlbedoTiling3;
			float _HeightParallax3;
			float _AlbedoTiling4;
			float _HeightParallax4;
			float _AlbedoTiling5;
			float _HeightParallax5;
			float _AlbedoTiling6;
			float _HeightParallax6;
			float _FadeOffset;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
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
			TEXTURE2D(_Albedo1);
			TEXTURE2D(_Height1);
			SAMPLER(sampler_Height1);
			SAMPLER(sampler_Albedo1);
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

				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
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

				float4 break1303 = IN.ase_color;
				float3 break372 = WorldPosition;
				float3 ase_worldNormal = IN.ase_texcoord4.xyz;
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float2 ifLocalVar1264 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1264 = appendResult379;
				float4 break1330 = IN.ase_color;
				float2 uv_Height1443 = IN.ase_texcoord5.xy;
				float ifLocalVar1348 = 0;
				if( break1330.r > 0.0 )
				ifLocalVar1348 = SAMPLE_TEXTURE2D( _Height1, sampler_Height1, uv_Height1443 ).r;
				float3 ase_worldTangent = IN.ase_texcoord6.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord7.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 Offset446 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( ifLocalVar1264 * _AlbedoTiling1 );
				float2 Offset449 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset446 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset446;
				float2 Offset454 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset449 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset449;
				float2 Offset459 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset454 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset454;
				float2 temp_output_966_0 = ddx( Offset459 );
				float2 temp_output_970_0 = ddy( Offset459 );
				float4 ifLocalVar1289 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1289 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset459, temp_output_966_0, temp_output_970_0 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 PlanarNormal1254 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break382 = PlanarNormal1254;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 ifLocalVar1265 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1265 = appendResult380;
				float2 Offset626 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( ifLocalVar1265 * _AlbedoTiling1 );
				float2 Offset628 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset626 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset626;
				float2 Offset630 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset628 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset628;
				float2 Offset632 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset630 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset630;
				float2 temp_output_967_0 = ddx( Offset632 );
				float2 temp_output_971_0 = ddy( Offset632 );
				float4 ifLocalVar1288 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1288 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset632, temp_output_967_0, temp_output_971_0 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 ifLocalVar1266 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1266 = appendResult381;
				float2 Offset633 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( _AlbedoTiling1 * ifLocalVar1266 );
				float2 Offset635 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset633 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset633;
				float2 Offset637 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset635 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset635;
				float2 Offset639 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset637 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset637;
				float2 temp_output_968_0 = ddx( Offset639 );
				float2 temp_output_972_0 = ddy( Offset639 );
				float4 ifLocalVar1287 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1287 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset639, temp_output_968_0, temp_output_972_0 );
				float2 ifLocalVar1267 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1267 = appendResult379;
				float2 uv_Height2662 = IN.ase_texcoord5.xy;
				float ifLocalVar1346 = 0;
				if( break1330.g > 0.0 )
				ifLocalVar1346 = SAMPLE_TEXTURE2D( _Height2, sampler_Height1, uv_Height2662 ).r;
				float2 Offset644 = ( ( ifLocalVar1346 - 1 ) * float3( 0,0,0 ).xy * _HeightParallax2 ) + ( ifLocalVar1267 * _AlbedoTiling2 );
				float2 Offset646 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset644 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset644;
				float2 Offset648 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset646 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset646;
				float2 Offset661 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset648 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset648;
				float2 temp_output_984_0 = ddx( Offset661 );
				float2 temp_output_979_0 = ddy( Offset661 );
				float4 ifLocalVar1286 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1286 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset661, temp_output_984_0, temp_output_979_0 );
				float2 ifLocalVar1268 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1268 = appendResult380;
				float2 Offset650 = ( ( ifLocalVar1346 - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + ( ifLocalVar1268 * _AlbedoTiling2 );
				float2 Offset652 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset650 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset650;
				float2 Offset654 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset652 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset652;
				float2 Offset656 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset654 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset654;
				float2 temp_output_983_0 = ddx( Offset656 );
				float2 temp_output_981_0 = ddy( Offset656 );
				float4 ifLocalVar1285 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1285 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset656, temp_output_983_0, temp_output_981_0 );
				float2 ifLocalVar1269 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1269 = appendResult381;
				float2 Offset657 = ( ( ifLocalVar1346 - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + ( ifLocalVar1269 * _AlbedoTiling2 );
				float2 Offset659 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset657 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset657;
				float2 Offset643 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset659 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset659;
				float2 Offset641 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset643 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset643;
				float2 temp_output_982_0 = ddx( Offset641 );
				float2 temp_output_980_0 = ddy( Offset641 );
				float4 ifLocalVar1284 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1284 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset641, temp_output_982_0, temp_output_980_0 );
				float2 ifLocalVar1270 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1270 = appendResult379;
				float2 uv_Height3678 = IN.ase_texcoord5.xy;
				float ifLocalVar1336 = 0;
				if( break1330.b > 0.0 )
				ifLocalVar1336 = SAMPLE_TEXTURE2D( _Height3, sampler_Height1, uv_Height3678 ).r;
				float2 Offset667 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1270 * _AlbedoTiling3 );
				float2 Offset669 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset667 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset667;
				float2 Offset671 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset669 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset669;
				float2 Offset664 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset671 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset671;
				float2 temp_output_978_0 = ddx( Offset664 );
				float2 temp_output_973_0 = ddy( Offset664 );
				float4 ifLocalVar1292 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1292 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset664, temp_output_978_0, temp_output_973_0 );
				float2 ifLocalVar1271 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1271 = appendResult380;
				float2 Offset683 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1271 * _AlbedoTiling3 );
				float2 Offset681 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset683 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset683;
				float2 Offset679 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset681 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset681;
				float2 Offset677 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset679 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset679;
				float2 temp_output_977_0 = ddx( Offset677 );
				float2 temp_output_975_0 = ddy( Offset677 );
				float4 ifLocalVar1291 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1291 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset677, temp_output_977_0, temp_output_975_0 );
				float2 ifLocalVar1272 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1272 = appendResult381;
				float2 Offset676 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1272 * _AlbedoTiling3 );
				float2 Offset674 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset676 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset676;
				float2 Offset666 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset674 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset674;
				float2 Offset665 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset666 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset666;
				float2 temp_output_976_0 = ddx( Offset665 );
				float2 temp_output_974_0 = ddy( Offset665 );
				float4 ifLocalVar1290 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1290 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset665, temp_output_976_0, temp_output_974_0 );
				float2 ifLocalVar1273 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1273 = appendResult379;
				float2 uv_Height4740 = IN.ase_texcoord5.xy;
				float ifLocalVar1338 = 0;
				if( break1330.a > 0.0 )
				ifLocalVar1338 = SAMPLE_TEXTURE2D( _Height4, sampler_Height1, uv_Height4740 ).r;
				float2 Offset690 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1273 * _AlbedoTiling4 );
				float2 Offset692 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset690 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset690;
				float2 Offset727 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset692 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset692;
				float2 Offset752 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset727 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset727;
				float2 temp_output_996_0 = ddx( Offset752 );
				float2 temp_output_991_0 = ddy( Offset752 );
				float4 ifLocalVar1294 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1294 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset752, temp_output_996_0, temp_output_991_0 );
				float2 ifLocalVar1274 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1274 = appendResult380;
				float2 Offset729 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1274 * _AlbedoTiling4 );
				float2 Offset731 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset729 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset729;
				float2 Offset753 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset731 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset731;
				float2 Offset734 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset753 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset753;
				float2 temp_output_995_0 = ddx( Offset734 );
				float2 temp_output_993_0 = ddy( Offset734 );
				float4 ifLocalVar1295 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1295 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset734, temp_output_995_0, temp_output_993_0 );
				float2 ifLocalVar1275 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1275 = appendResult381;
				float2 Offset735 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1275 * _AlbedoTiling4 );
				float2 Offset737 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset735 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset735;
				float2 Offset689 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset737 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset737;
				float2 Offset687 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset689 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset689;
				float2 temp_output_994_0 = ddx( Offset687 );
				float2 temp_output_992_0 = ddy( Offset687 );
				float4 ifLocalVar1293 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1293 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset687, temp_output_994_0, temp_output_992_0 );
				float2 break1305 = IN.ase_texcoord5.zw;
				float2 ifLocalVar1276 = 0;
				if( IN.ase_texcoord5.zw.x > 0.0 )
				ifLocalVar1276 = appendResult379;
				float2 break1329 = IN.ase_texcoord5.zw;
				float2 uv_Height5693 = IN.ase_texcoord5.xy;
				float ifLocalVar1340 = 0;
				if( break1329.x > 0.0 )
				ifLocalVar1340 = SAMPLE_TEXTURE2D( _Height5, sampler_Height1, uv_Height5693 ).r;
				float2 Offset745 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1276 * _AlbedoTiling5 );
				float2 Offset747 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset745 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset745;
				float2 Offset749 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset747 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset747;
				float2 Offset742 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset749 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset749;
				float2 temp_output_1002_0 = ddx( Offset742 );
				float2 temp_output_997_0 = ddy( Offset742 );
				float4 ifLocalVar1296 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1296 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset742, temp_output_1002_0, temp_output_997_0 );
				float2 ifLocalVar1277 = 0;
				if( IN.ase_texcoord5.zw.x > 0.0 )
				ifLocalVar1277 = appendResult380;
				float2 Offset698 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1277 * _AlbedoTiling5 );
				float2 Offset696 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset698 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset698;
				float2 Offset694 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset696 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset696;
				float2 Offset722 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset694 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset694;
				float2 temp_output_1001_0 = ddx( Offset722 );
				float2 temp_output_999_0 = ddy( Offset722 );
				float4 ifLocalVar1298 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1298 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset722, temp_output_1001_0, temp_output_999_0 );
				float2 ifLocalVar1278 = 0;
				if( IN.ase_texcoord5.zw.x > 0.0 )
				ifLocalVar1278 = appendResult381;
				float2 Offset723 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1278 * _AlbedoTiling5 );
				float2 Offset725 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset723 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset723;
				float2 Offset744 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset725 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset725;
				float2 Offset743 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset744 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset744;
				float2 temp_output_1000_0 = ddx( Offset743 );
				float2 temp_output_998_0 = ddy( Offset743 );
				float4 ifLocalVar1297 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1297 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset743, temp_output_1000_0, temp_output_998_0 );
				float2 ifLocalVar1279 = 0;
				if( IN.ase_texcoord5.zw.y > 0.0 )
				ifLocalVar1279 = appendResult379;
				float2 uv_Height6754 = IN.ase_texcoord5.xy;
				float ifLocalVar1344 = 0;
				if( break1329.y > 0.0 )
				ifLocalVar1344 = SAMPLE_TEXTURE2D( _Height6, sampler_Height1, uv_Height6754 ).r;
				float2 Offset704 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1279 * _AlbedoTiling6 );
				float2 Offset706 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset704 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset704;
				float2 Offset708 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset706 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset706;
				float2 Offset701 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset708 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset708;
				float2 temp_output_990_0 = ddx( Offset701 );
				float2 temp_output_985_0 = ddy( Offset701 );
				float4 ifLocalVar1300 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1300 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset701, temp_output_990_0, temp_output_985_0 );
				float2 ifLocalVar1280 = 0;
				if( IN.ase_texcoord5.zw.y > 0.0 )
				ifLocalVar1280 = appendResult380;
				float2 Offset719 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1280 * _AlbedoTiling6 );
				float2 Offset717 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset719 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset719;
				float2 Offset715 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset717 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset717;
				float2 Offset714 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset715 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset715;
				float2 temp_output_989_0 = ddx( Offset714 );
				float2 temp_output_987_0 = ddy( Offset714 );
				float4 ifLocalVar1299 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1299 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset714, temp_output_989_0, temp_output_987_0 );
				float2 ifLocalVar1281 = 0;
				if( IN.ase_texcoord5.zw.y > 0.0 )
				ifLocalVar1281 = appendResult381;
				float2 Offset713 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1281 * _AlbedoTiling6 );
				float2 Offset711 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset713 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset713;
				float2 Offset703 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset711 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset711;
				float2 Offset702 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset703 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset703;
				float2 temp_output_988_0 = ddx( Offset702 );
				float2 temp_output_986_0 = ddy( Offset702 );
				float4 ifLocalVar1301 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1301 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset702, temp_output_988_0, temp_output_986_0 );
				float4 screenPos = IN.ase_texcoord8;
				float clampResult1261 = clamp( ( ( screenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1289 * break382.x ) + ( ifLocalVar1288 * break382.y ) ) + ( ifLocalVar1287 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1286 * break382.x ) + ( ifLocalVar1285 * break382.y ) ) + ( ifLocalVar1284 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1292 * break382.x ) + ( ifLocalVar1291 * break382.y ) ) + ( ifLocalVar1290 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1294 * break382.x ) + ( ifLocalVar1295 * break382.y ) ) + ( ifLocalVar1293 * break382.z ) ) ) ) + ( IN.ase_texcoord5.zw.x * ( ( ( ifLocalVar1296 * break382.x ) + ( ifLocalVar1298 * break382.y ) ) + ( ifLocalVar1297 * break382.z ) ) ) ) + ( IN.ase_texcoord5.zw.y * ( ( ( ifLocalVar1300 * break382.x ) + ( ifLocalVar1299 * break382.y ) ) + ( ifLocalVar1301 * break382.z ) ) ) ) , clampResult1261);
				
				
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
			
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_VERT_NORMAL


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
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
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _FadeColor;
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _Shiny6;
			float _Smooth1;
			float _NormalStrength6;
			float _Smooth2;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth3;
			float _NormalStrength5;
			float _NormalStrength4;
			float _NormalStrength3;
			float _AlbedoTiling1;
			float _HeightParallax1;
			float _Falloff;
			float _AlbedoTiling2;
			float _HeightParallax2;
			float _AlbedoTiling3;
			float _HeightParallax3;
			float _AlbedoTiling4;
			float _HeightParallax4;
			float _AlbedoTiling5;
			float _HeightParallax5;
			float _AlbedoTiling6;
			float _HeightParallax6;
			float _FadeOffset;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
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
			TEXTURE2D(_Albedo1);
			TEXTURE2D(_Height1);
			SAMPLER(sampler_Height1);
			SAMPLER(sampler_Albedo1);
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

				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
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
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
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
				o.ase_texcoord = v.ase_texcoord;
				o.ase_tangent = v.ase_tangent;
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
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
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

				float4 break1303 = IN.ase_color;
				float3 break372 = WorldPosition;
				float3 ase_worldNormal = IN.ase_texcoord2.xyz;
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float2 ifLocalVar1264 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1264 = appendResult379;
				float4 break1330 = IN.ase_color;
				float2 uv_Height1443 = IN.ase_texcoord3.xy;
				float ifLocalVar1348 = 0;
				if( break1330.r > 0.0 )
				ifLocalVar1348 = SAMPLE_TEXTURE2D( _Height1, sampler_Height1, uv_Height1443 ).r;
				float3 ase_worldTangent = IN.ase_texcoord4.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 Offset446 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( ifLocalVar1264 * _AlbedoTiling1 );
				float2 Offset449 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset446 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset446;
				float2 Offset454 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset449 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset449;
				float2 Offset459 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset454 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset454;
				float2 temp_output_966_0 = ddx( Offset459 );
				float2 temp_output_970_0 = ddy( Offset459 );
				float4 ifLocalVar1289 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1289 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset459, temp_output_966_0, temp_output_970_0 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 PlanarNormal1254 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break382 = PlanarNormal1254;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 ifLocalVar1265 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1265 = appendResult380;
				float2 Offset626 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( ifLocalVar1265 * _AlbedoTiling1 );
				float2 Offset628 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset626 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset626;
				float2 Offset630 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset628 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset628;
				float2 Offset632 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset630 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset630;
				float2 temp_output_967_0 = ddx( Offset632 );
				float2 temp_output_971_0 = ddy( Offset632 );
				float4 ifLocalVar1288 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1288 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset632, temp_output_967_0, temp_output_971_0 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 ifLocalVar1266 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1266 = appendResult381;
				float2 Offset633 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( _AlbedoTiling1 * ifLocalVar1266 );
				float2 Offset635 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset633 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset633;
				float2 Offset637 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset635 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset635;
				float2 Offset639 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset637 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset637;
				float2 temp_output_968_0 = ddx( Offset639 );
				float2 temp_output_972_0 = ddy( Offset639 );
				float4 ifLocalVar1287 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1287 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset639, temp_output_968_0, temp_output_972_0 );
				float2 ifLocalVar1267 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1267 = appendResult379;
				float2 uv_Height2662 = IN.ase_texcoord3.xy;
				float ifLocalVar1346 = 0;
				if( break1330.g > 0.0 )
				ifLocalVar1346 = SAMPLE_TEXTURE2D( _Height2, sampler_Height1, uv_Height2662 ).r;
				float2 Offset644 = ( ( ifLocalVar1346 - 1 ) * float3( 0,0,0 ).xy * _HeightParallax2 ) + ( ifLocalVar1267 * _AlbedoTiling2 );
				float2 Offset646 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset644 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset644;
				float2 Offset648 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset646 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset646;
				float2 Offset661 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset648 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset648;
				float2 temp_output_984_0 = ddx( Offset661 );
				float2 temp_output_979_0 = ddy( Offset661 );
				float4 ifLocalVar1286 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1286 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset661, temp_output_984_0, temp_output_979_0 );
				float2 ifLocalVar1268 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1268 = appendResult380;
				float2 Offset650 = ( ( ifLocalVar1346 - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + ( ifLocalVar1268 * _AlbedoTiling2 );
				float2 Offset652 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset650 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset650;
				float2 Offset654 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset652 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset652;
				float2 Offset656 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset654 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset654;
				float2 temp_output_983_0 = ddx( Offset656 );
				float2 temp_output_981_0 = ddy( Offset656 );
				float4 ifLocalVar1285 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1285 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset656, temp_output_983_0, temp_output_981_0 );
				float2 ifLocalVar1269 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1269 = appendResult381;
				float2 Offset657 = ( ( ifLocalVar1346 - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + ( ifLocalVar1269 * _AlbedoTiling2 );
				float2 Offset659 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset657 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset657;
				float2 Offset643 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset659 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset659;
				float2 Offset641 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset643 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset643;
				float2 temp_output_982_0 = ddx( Offset641 );
				float2 temp_output_980_0 = ddy( Offset641 );
				float4 ifLocalVar1284 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1284 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset641, temp_output_982_0, temp_output_980_0 );
				float2 ifLocalVar1270 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1270 = appendResult379;
				float2 uv_Height3678 = IN.ase_texcoord3.xy;
				float ifLocalVar1336 = 0;
				if( break1330.b > 0.0 )
				ifLocalVar1336 = SAMPLE_TEXTURE2D( _Height3, sampler_Height1, uv_Height3678 ).r;
				float2 Offset667 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1270 * _AlbedoTiling3 );
				float2 Offset669 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset667 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset667;
				float2 Offset671 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset669 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset669;
				float2 Offset664 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset671 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset671;
				float2 temp_output_978_0 = ddx( Offset664 );
				float2 temp_output_973_0 = ddy( Offset664 );
				float4 ifLocalVar1292 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1292 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset664, temp_output_978_0, temp_output_973_0 );
				float2 ifLocalVar1271 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1271 = appendResult380;
				float2 Offset683 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1271 * _AlbedoTiling3 );
				float2 Offset681 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset683 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset683;
				float2 Offset679 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset681 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset681;
				float2 Offset677 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset679 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset679;
				float2 temp_output_977_0 = ddx( Offset677 );
				float2 temp_output_975_0 = ddy( Offset677 );
				float4 ifLocalVar1291 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1291 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset677, temp_output_977_0, temp_output_975_0 );
				float2 ifLocalVar1272 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1272 = appendResult381;
				float2 Offset676 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1272 * _AlbedoTiling3 );
				float2 Offset674 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset676 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset676;
				float2 Offset666 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset674 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset674;
				float2 Offset665 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset666 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset666;
				float2 temp_output_976_0 = ddx( Offset665 );
				float2 temp_output_974_0 = ddy( Offset665 );
				float4 ifLocalVar1290 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1290 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset665, temp_output_976_0, temp_output_974_0 );
				float2 ifLocalVar1273 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1273 = appendResult379;
				float2 uv_Height4740 = IN.ase_texcoord3.xy;
				float ifLocalVar1338 = 0;
				if( break1330.a > 0.0 )
				ifLocalVar1338 = SAMPLE_TEXTURE2D( _Height4, sampler_Height1, uv_Height4740 ).r;
				float2 Offset690 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1273 * _AlbedoTiling4 );
				float2 Offset692 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset690 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset690;
				float2 Offset727 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset692 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset692;
				float2 Offset752 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset727 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset727;
				float2 temp_output_996_0 = ddx( Offset752 );
				float2 temp_output_991_0 = ddy( Offset752 );
				float4 ifLocalVar1294 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1294 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset752, temp_output_996_0, temp_output_991_0 );
				float2 ifLocalVar1274 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1274 = appendResult380;
				float2 Offset729 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1274 * _AlbedoTiling4 );
				float2 Offset731 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset729 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset729;
				float2 Offset753 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset731 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset731;
				float2 Offset734 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset753 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset753;
				float2 temp_output_995_0 = ddx( Offset734 );
				float2 temp_output_993_0 = ddy( Offset734 );
				float4 ifLocalVar1295 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1295 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset734, temp_output_995_0, temp_output_993_0 );
				float2 ifLocalVar1275 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1275 = appendResult381;
				float2 Offset735 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1275 * _AlbedoTiling4 );
				float2 Offset737 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset735 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset735;
				float2 Offset689 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset737 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset737;
				float2 Offset687 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset689 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset689;
				float2 temp_output_994_0 = ddx( Offset687 );
				float2 temp_output_992_0 = ddy( Offset687 );
				float4 ifLocalVar1293 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1293 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset687, temp_output_994_0, temp_output_992_0 );
				float2 break1305 = IN.ase_texcoord3.zw;
				float2 ifLocalVar1276 = 0;
				if( IN.ase_texcoord3.zw.x > 0.0 )
				ifLocalVar1276 = appendResult379;
				float2 break1329 = IN.ase_texcoord3.zw;
				float2 uv_Height5693 = IN.ase_texcoord3.xy;
				float ifLocalVar1340 = 0;
				if( break1329.x > 0.0 )
				ifLocalVar1340 = SAMPLE_TEXTURE2D( _Height5, sampler_Height1, uv_Height5693 ).r;
				float2 Offset745 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1276 * _AlbedoTiling5 );
				float2 Offset747 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset745 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset745;
				float2 Offset749 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset747 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset747;
				float2 Offset742 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset749 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset749;
				float2 temp_output_1002_0 = ddx( Offset742 );
				float2 temp_output_997_0 = ddy( Offset742 );
				float4 ifLocalVar1296 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1296 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset742, temp_output_1002_0, temp_output_997_0 );
				float2 ifLocalVar1277 = 0;
				if( IN.ase_texcoord3.zw.x > 0.0 )
				ifLocalVar1277 = appendResult380;
				float2 Offset698 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1277 * _AlbedoTiling5 );
				float2 Offset696 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset698 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset698;
				float2 Offset694 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset696 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset696;
				float2 Offset722 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset694 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset694;
				float2 temp_output_1001_0 = ddx( Offset722 );
				float2 temp_output_999_0 = ddy( Offset722 );
				float4 ifLocalVar1298 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1298 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset722, temp_output_1001_0, temp_output_999_0 );
				float2 ifLocalVar1278 = 0;
				if( IN.ase_texcoord3.zw.x > 0.0 )
				ifLocalVar1278 = appendResult381;
				float2 Offset723 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1278 * _AlbedoTiling5 );
				float2 Offset725 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset723 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset723;
				float2 Offset744 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset725 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset725;
				float2 Offset743 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset744 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset744;
				float2 temp_output_1000_0 = ddx( Offset743 );
				float2 temp_output_998_0 = ddy( Offset743 );
				float4 ifLocalVar1297 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1297 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset743, temp_output_1000_0, temp_output_998_0 );
				float2 ifLocalVar1279 = 0;
				if( IN.ase_texcoord3.zw.y > 0.0 )
				ifLocalVar1279 = appendResult379;
				float2 uv_Height6754 = IN.ase_texcoord3.xy;
				float ifLocalVar1344 = 0;
				if( break1329.y > 0.0 )
				ifLocalVar1344 = SAMPLE_TEXTURE2D( _Height6, sampler_Height1, uv_Height6754 ).r;
				float2 Offset704 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1279 * _AlbedoTiling6 );
				float2 Offset706 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset704 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset704;
				float2 Offset708 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset706 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset706;
				float2 Offset701 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset708 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset708;
				float2 temp_output_990_0 = ddx( Offset701 );
				float2 temp_output_985_0 = ddy( Offset701 );
				float4 ifLocalVar1300 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1300 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset701, temp_output_990_0, temp_output_985_0 );
				float2 ifLocalVar1280 = 0;
				if( IN.ase_texcoord3.zw.y > 0.0 )
				ifLocalVar1280 = appendResult380;
				float2 Offset719 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1280 * _AlbedoTiling6 );
				float2 Offset717 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset719 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset719;
				float2 Offset715 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset717 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset717;
				float2 Offset714 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset715 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset715;
				float2 temp_output_989_0 = ddx( Offset714 );
				float2 temp_output_987_0 = ddy( Offset714 );
				float4 ifLocalVar1299 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1299 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset714, temp_output_989_0, temp_output_987_0 );
				float2 ifLocalVar1281 = 0;
				if( IN.ase_texcoord3.zw.y > 0.0 )
				ifLocalVar1281 = appendResult381;
				float2 Offset713 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1281 * _AlbedoTiling6 );
				float2 Offset711 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset713 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset713;
				float2 Offset703 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset711 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset711;
				float2 Offset702 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset703 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset703;
				float2 temp_output_988_0 = ddx( Offset702 );
				float2 temp_output_986_0 = ddy( Offset702 );
				float4 ifLocalVar1301 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1301 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset702, temp_output_988_0, temp_output_986_0 );
				float4 screenPos = IN.ase_texcoord6;
				float clampResult1261 = clamp( ( ( screenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1289 * break382.x ) + ( ifLocalVar1288 * break382.y ) ) + ( ifLocalVar1287 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1286 * break382.x ) + ( ifLocalVar1285 * break382.y ) ) + ( ifLocalVar1284 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1292 * break382.x ) + ( ifLocalVar1291 * break382.y ) ) + ( ifLocalVar1290 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1294 * break382.x ) + ( ifLocalVar1295 * break382.y ) ) + ( ifLocalVar1293 * break382.z ) ) ) ) + ( IN.ase_texcoord3.zw.x * ( ( ( ifLocalVar1296 * break382.x ) + ( ifLocalVar1298 * break382.y ) ) + ( ifLocalVar1297 * break382.z ) ) ) ) + ( IN.ase_texcoord3.zw.y * ( ( ( ifLocalVar1300 * break382.x ) + ( ifLocalVar1299 * break382.y ) ) + ( ifLocalVar1301 * break382.z ) ) ) ) , clampResult1261);
				
				
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

			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
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
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _Shiny6;
			float _Smooth1;
			float _NormalStrength6;
			float _Smooth2;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth3;
			float _NormalStrength5;
			float _NormalStrength4;
			float _NormalStrength3;
			float _AlbedoTiling1;
			float _HeightParallax1;
			float _Falloff;
			float _AlbedoTiling2;
			float _HeightParallax2;
			float _AlbedoTiling3;
			float _HeightParallax3;
			float _AlbedoTiling4;
			float _HeightParallax4;
			float _AlbedoTiling5;
			float _HeightParallax5;
			float _AlbedoTiling6;
			float _HeightParallax6;
			float _FadeOffset;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
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
			TEXTURE2D(_Normal1);
			TEXTURE2D(_Height1);
			SAMPLER(sampler_Height1);
			SAMPLER(sampler_Normal1);
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

				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
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
				float4 ase_texcoord : TEXCOORD0;
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
				o.ase_texcoord = v.ase_texcoord;
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
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
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

				float4 break1374 = IN.ase_color;
				float3 break372 = WorldPosition;
				float3 break602 = sign( WorldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float2 ifLocalVar1264 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1264 = appendResult379;
				float4 break1330 = IN.ase_color;
				float2 uv_Height1443 = IN.ase_texcoord4.xy;
				float ifLocalVar1348 = 0;
				if( break1330.r > 0.0 )
				ifLocalVar1348 = SAMPLE_TEXTURE2D( _Height1, sampler_Height1, uv_Height1443 ).r;
				float3 ase_worldBitangent = IN.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( WorldTangent.xyz.x, ase_worldBitangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.xyz.y, ase_worldBitangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.xyz.z, ase_worldBitangent.z, WorldNormal.z );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 Offset446 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( ifLocalVar1264 * _AlbedoTiling1 );
				float2 Offset449 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset446 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset446;
				float2 Offset454 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset449 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset449;
				float2 Offset459 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset454 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset454;
				float2 temp_output_966_0 = ddx( Offset459 );
				float2 temp_output_970_0 = ddy( Offset459 );
				float3 unpack587 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_Normal1, Offset459, temp_output_966_0, temp_output_970_0 ), _NormalStrength1 );
				unpack587.z = lerp( 1, unpack587.z, saturate(_NormalStrength1) );
				float3 ifLocalVar1390 = 0;
				if( break1374.r > 0.0 )
				ifLocalVar1390 = unpack587;
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( WorldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 PlanarNormal1254 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break382 = PlanarNormal1254;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 ifLocalVar1265 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1265 = appendResult380;
				float2 Offset626 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( ifLocalVar1265 * _AlbedoTiling1 );
				float2 Offset628 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset626 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset626;
				float2 Offset630 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset628 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset628;
				float2 Offset632 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset630 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset630;
				float2 temp_output_967_0 = ddx( Offset632 );
				float2 temp_output_971_0 = ddy( Offset632 );
				float3 unpack578 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_Normal1, Offset632, temp_output_967_0, temp_output_971_0 ), _NormalStrength1 );
				unpack578.z = lerp( 1, unpack578.z, saturate(_NormalStrength1) );
				float3 ifLocalVar1389 = 0;
				if( break1374.r > 0.0 )
				ifLocalVar1389 = unpack578;
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 ifLocalVar1266 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1266 = appendResult381;
				float2 Offset633 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( _AlbedoTiling1 * ifLocalVar1266 );
				float2 Offset635 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset633 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset633;
				float2 Offset637 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset635 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset635;
				float2 Offset639 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset637 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset637;
				float2 temp_output_968_0 = ddx( Offset639 );
				float2 temp_output_972_0 = ddy( Offset639 );
				float3 unpack584 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_Normal1, Offset639, temp_output_968_0, temp_output_972_0 ), _NormalStrength1 );
				unpack584.z = lerp( 1, unpack584.z, saturate(_NormalStrength1) );
				float3 ifLocalVar1377 = 0;
				if( break1374.r > 0.0 )
				ifLocalVar1377 = unpack584;
				float2 ifLocalVar1267 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1267 = appendResult379;
				float2 uv_Height2662 = IN.ase_texcoord4.xy;
				float ifLocalVar1346 = 0;
				if( break1330.g > 0.0 )
				ifLocalVar1346 = SAMPLE_TEXTURE2D( _Height2, sampler_Height1, uv_Height2662 ).r;
				float2 Offset644 = ( ( ifLocalVar1346 - 1 ) * float3( 0,0,0 ).xy * _HeightParallax2 ) + ( ifLocalVar1267 * _AlbedoTiling2 );
				float2 Offset646 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset644 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset644;
				float2 Offset648 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset646 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset646;
				float2 Offset661 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset648 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset648;
				float2 temp_output_984_0 = ddx( Offset661 );
				float2 temp_output_979_0 = ddy( Offset661 );
				float3 unpack544 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_Normal1, Offset661, temp_output_984_0, temp_output_979_0 ), _NormalStrength2 );
				unpack544.z = lerp( 1, unpack544.z, saturate(_NormalStrength2) );
				float3 ifLocalVar1388 = 0;
				if( break1374.g > 0.0 )
				ifLocalVar1388 = unpack544;
				float2 ifLocalVar1268 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1268 = appendResult380;
				float2 Offset650 = ( ( ifLocalVar1346 - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + ( ifLocalVar1268 * _AlbedoTiling2 );
				float2 Offset652 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset650 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset650;
				float2 Offset654 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset652 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset652;
				float2 Offset656 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset654 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset654;
				float2 temp_output_983_0 = ddx( Offset656 );
				float2 temp_output_981_0 = ddy( Offset656 );
				float3 unpack571 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_Normal1, Offset656, temp_output_983_0, temp_output_981_0 ), _NormalStrength2 );
				unpack571.z = lerp( 1, unpack571.z, saturate(_NormalStrength2) );
				float3 ifLocalVar1376 = 0;
				if( break1374.g > 0.0 )
				ifLocalVar1376 = unpack571;
				float2 ifLocalVar1269 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1269 = appendResult381;
				float2 Offset657 = ( ( ifLocalVar1346 - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + ( ifLocalVar1269 * _AlbedoTiling2 );
				float2 Offset659 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset657 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset657;
				float2 Offset643 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset659 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset659;
				float2 Offset641 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset643 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset643;
				float2 temp_output_982_0 = ddx( Offset641 );
				float2 temp_output_980_0 = ddy( Offset641 );
				float3 unpack500 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_Normal1, Offset641, temp_output_982_0, temp_output_980_0 ), _NormalStrength2 );
				unpack500.z = lerp( 1, unpack500.z, saturate(_NormalStrength2) );
				float3 ifLocalVar1375 = 0;
				if( break1374.g > 0.0 )
				ifLocalVar1375 = unpack500;
				float2 ifLocalVar1270 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1270 = appendResult379;
				float2 uv_Height3678 = IN.ase_texcoord4.xy;
				float ifLocalVar1336 = 0;
				if( break1330.b > 0.0 )
				ifLocalVar1336 = SAMPLE_TEXTURE2D( _Height3, sampler_Height1, uv_Height3678 ).r;
				float2 Offset667 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1270 * _AlbedoTiling3 );
				float2 Offset669 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset667 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset667;
				float2 Offset671 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset669 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset669;
				float2 Offset664 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset671 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset671;
				float2 temp_output_978_0 = ddx( Offset664 );
				float2 temp_output_973_0 = ddy( Offset664 );
				float3 unpack497 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_Normal1, Offset664, temp_output_978_0, temp_output_973_0 ), _NormalStrength3 );
				unpack497.z = lerp( 1, unpack497.z, saturate(_NormalStrength3) );
				float3 ifLocalVar1380 = 0;
				if( break1374.b > 0.0 )
				ifLocalVar1380 = unpack497;
				float2 ifLocalVar1271 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1271 = appendResult380;
				float2 Offset683 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1271 * _AlbedoTiling3 );
				float2 Offset681 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset683 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset683;
				float2 Offset679 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset681 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset681;
				float2 Offset677 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset679 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset679;
				float2 temp_output_977_0 = ddx( Offset677 );
				float2 temp_output_975_0 = ddy( Offset677 );
				float3 unpack540 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_Normal1, Offset677, temp_output_977_0, temp_output_975_0 ), _NormalStrength3 );
				unpack540.z = lerp( 1, unpack540.z, saturate(_NormalStrength3) );
				float3 ifLocalVar1379 = 0;
				if( break1374.b > 0.0 )
				ifLocalVar1379 = unpack540;
				float2 ifLocalVar1272 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1272 = appendResult381;
				float2 Offset676 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1272 * _AlbedoTiling3 );
				float2 Offset674 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset676 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset676;
				float2 Offset666 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset674 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset674;
				float2 Offset665 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset666 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset666;
				float2 temp_output_976_0 = ddx( Offset665 );
				float2 temp_output_974_0 = ddy( Offset665 );
				float3 unpack554 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_Normal1, Offset665, temp_output_976_0, temp_output_974_0 ), _NormalStrength3 );
				unpack554.z = lerp( 1, unpack554.z, saturate(_NormalStrength3) );
				float3 ifLocalVar1378 = 0;
				if( break1374.b > 0.0 )
				ifLocalVar1378 = unpack554;
				float2 ifLocalVar1273 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1273 = appendResult379;
				float2 uv_Height4740 = IN.ase_texcoord4.xy;
				float ifLocalVar1338 = 0;
				if( break1330.a > 0.0 )
				ifLocalVar1338 = SAMPLE_TEXTURE2D( _Height4, sampler_Height1, uv_Height4740 ).r;
				float2 Offset690 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1273 * _AlbedoTiling4 );
				float2 Offset692 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset690 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset690;
				float2 Offset727 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset692 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset692;
				float2 Offset752 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset727 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset727;
				float2 temp_output_996_0 = ddx( Offset752 );
				float2 temp_output_991_0 = ddy( Offset752 );
				float3 unpack499 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_Normal1, Offset752, temp_output_996_0, temp_output_991_0 ), _NormalStrength4 );
				unpack499.z = lerp( 1, unpack499.z, saturate(_NormalStrength4) );
				float3 ifLocalVar1382 = 0;
				if( break1374.a > 0.0 )
				ifLocalVar1382 = unpack499;
				float2 ifLocalVar1274 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1274 = appendResult380;
				float2 Offset729 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1274 * _AlbedoTiling4 );
				float2 Offset731 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset729 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset729;
				float2 Offset753 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset731 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset731;
				float2 Offset734 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset753 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset753;
				float2 temp_output_995_0 = ddx( Offset734 );
				float2 temp_output_993_0 = ddy( Offset734 );
				float3 unpack505 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_Normal1, Offset734, temp_output_995_0, temp_output_993_0 ), _NormalStrength4 );
				unpack505.z = lerp( 1, unpack505.z, saturate(_NormalStrength4) );
				float3 ifLocalVar1383 = 0;
				if( break1374.a > 0.0 )
				ifLocalVar1383 = unpack505;
				float2 ifLocalVar1275 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1275 = appendResult381;
				float2 Offset735 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1275 * _AlbedoTiling4 );
				float2 Offset737 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset735 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset735;
				float2 Offset689 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset737 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset737;
				float2 Offset687 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset689 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset689;
				float2 temp_output_994_0 = ddx( Offset687 );
				float2 temp_output_992_0 = ddy( Offset687 );
				float3 unpack508 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_Normal1, Offset687, temp_output_994_0, temp_output_992_0 ), _NormalStrength4 );
				unpack508.z = lerp( 1, unpack508.z, saturate(_NormalStrength4) );
				float3 ifLocalVar1381 = 0;
				if( break1374.a > 0.0 )
				ifLocalVar1381 = unpack508;
				float2 break1373 = IN.ase_texcoord4.zw;
				float2 ifLocalVar1276 = 0;
				if( IN.ase_texcoord4.zw.x > 0.0 )
				ifLocalVar1276 = appendResult379;
				float2 break1329 = IN.ase_texcoord4.zw;
				float2 uv_Height5693 = IN.ase_texcoord4.xy;
				float ifLocalVar1340 = 0;
				if( break1329.x > 0.0 )
				ifLocalVar1340 = SAMPLE_TEXTURE2D( _Height5, sampler_Height1, uv_Height5693 ).r;
				float2 Offset745 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1276 * _AlbedoTiling5 );
				float2 Offset747 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset745 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset745;
				float2 Offset749 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset747 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset747;
				float2 Offset742 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset749 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset749;
				float2 temp_output_1002_0 = ddx( Offset742 );
				float2 temp_output_997_0 = ddy( Offset742 );
				float3 unpack504 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_Normal1, Offset742, temp_output_1002_0, temp_output_997_0 ), _NormalStrength5 );
				unpack504.z = lerp( 1, unpack504.z, saturate(_NormalStrength5) );
				float3 ifLocalVar1384 = 0;
				if( break1373.x > 0.0 )
				ifLocalVar1384 = unpack504;
				float2 ifLocalVar1277 = 0;
				if( IN.ase_texcoord4.zw.x > 0.0 )
				ifLocalVar1277 = appendResult380;
				float2 Offset698 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1277 * _AlbedoTiling5 );
				float2 Offset696 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset698 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset698;
				float2 Offset694 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset696 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset696;
				float2 Offset722 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset694 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset694;
				float2 temp_output_1001_0 = ddx( Offset722 );
				float2 temp_output_999_0 = ddy( Offset722 );
				float3 unpack564 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_Normal1, Offset722, temp_output_1001_0, temp_output_999_0 ), _NormalStrength5 );
				unpack564.z = lerp( 1, unpack564.z, saturate(_NormalStrength5) );
				float3 ifLocalVar1372 = 0;
				if( break1373.x > 0.0 )
				ifLocalVar1372 = unpack564;
				float2 ifLocalVar1278 = 0;
				if( IN.ase_texcoord4.zw.x > 0.0 )
				ifLocalVar1278 = appendResult381;
				float2 Offset723 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1278 * _AlbedoTiling5 );
				float2 Offset725 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset723 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset723;
				float2 Offset744 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset725 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset725;
				float2 Offset743 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset744 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset744;
				float2 temp_output_1000_0 = ddx( Offset743 );
				float2 temp_output_998_0 = ddy( Offset743 );
				float3 unpack506 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_Normal1, Offset743, temp_output_1000_0, temp_output_998_0 ), _NormalStrength5 );
				unpack506.z = lerp( 1, unpack506.z, saturate(_NormalStrength5) );
				float3 ifLocalVar1391 = 0;
				if( break1373.x > 0.0 )
				ifLocalVar1391 = unpack506;
				float2 ifLocalVar1279 = 0;
				if( IN.ase_texcoord4.zw.y > 0.0 )
				ifLocalVar1279 = appendResult379;
				float2 uv_Height6754 = IN.ase_texcoord4.xy;
				float ifLocalVar1344 = 0;
				if( break1329.y > 0.0 )
				ifLocalVar1344 = SAMPLE_TEXTURE2D( _Height6, sampler_Height1, uv_Height6754 ).r;
				float2 Offset704 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1279 * _AlbedoTiling6 );
				float2 Offset706 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset704 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset704;
				float2 Offset708 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset706 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset706;
				float2 Offset701 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset708 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset708;
				float2 temp_output_990_0 = ddx( Offset701 );
				float2 temp_output_985_0 = ddy( Offset701 );
				float3 unpack539 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_Normal1, Offset701, temp_output_990_0, temp_output_985_0 ), _NormalStrength6 );
				unpack539.z = lerp( 1, unpack539.z, saturate(_NormalStrength6) );
				float3 ifLocalVar1386 = 0;
				if( break1373.y > 0.0 )
				ifLocalVar1386 = unpack539;
				float2 ifLocalVar1280 = 0;
				if( IN.ase_texcoord4.zw.y > 0.0 )
				ifLocalVar1280 = appendResult380;
				float2 Offset719 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1280 * _AlbedoTiling6 );
				float2 Offset717 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset719 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset719;
				float2 Offset715 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset717 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset717;
				float2 Offset714 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset715 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset715;
				float2 temp_output_989_0 = ddx( Offset714 );
				float2 temp_output_987_0 = ddy( Offset714 );
				float3 unpack561 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_Normal1, Offset714, temp_output_989_0, temp_output_987_0 ), _NormalStrength6 );
				unpack561.z = lerp( 1, unpack561.z, saturate(_NormalStrength6) );
				float3 ifLocalVar1385 = 0;
				if( break1373.y > 0.0 )
				ifLocalVar1385 = unpack561;
				float2 ifLocalVar1281 = 0;
				if( IN.ase_texcoord4.zw.y > 0.0 )
				ifLocalVar1281 = appendResult381;
				float2 Offset713 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1281 * _AlbedoTiling6 );
				float2 Offset711 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset713 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset713;
				float2 Offset703 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset711 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset711;
				float2 Offset702 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset703 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset703;
				float2 temp_output_988_0 = ddx( Offset702 );
				float2 temp_output_986_0 = ddy( Offset702 );
				float3 unpack568 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_Normal1, Offset702, temp_output_988_0, temp_output_986_0 ), _NormalStrength6 );
				unpack568.z = lerp( 1, unpack568.z, saturate(_NormalStrength6) );
				float3 ifLocalVar1387 = 0;
				if( break1373.y > 0.0 )
				ifLocalVar1387 = unpack568;
				
				float3 Normal = ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1390 * break382.x ) + ( ifLocalVar1389 * break382.y ) ) + ( ifLocalVar1377 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1388 * break382.x ) + ( ifLocalVar1376 * break382.y ) ) + ( ifLocalVar1375 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1380 * break382.x ) + ( ifLocalVar1379 * break382.y ) ) + ( ifLocalVar1378 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1382 * break382.x ) + ( ifLocalVar1383 * break382.y ) ) + ( ifLocalVar1381 * break382.z ) ) ) ) + ( IN.ase_texcoord4.zw.x * ( ( ( ifLocalVar1384 * break382.x ) + ( ifLocalVar1372 * break382.y ) ) + ( ifLocalVar1391 * break382.z ) ) ) ) + ( IN.ase_texcoord4.zw.y * ( ( ( ifLocalVar1386 * break382.x ) + ( ifLocalVar1385 * break382.y ) ) + ( ifLocalVar1387 * break382.z ) ) ) );
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

			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
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
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _Shiny6;
			float _Smooth1;
			float _NormalStrength6;
			float _Smooth2;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth3;
			float _NormalStrength5;
			float _NormalStrength4;
			float _NormalStrength3;
			float _AlbedoTiling1;
			float _HeightParallax1;
			float _Falloff;
			float _AlbedoTiling2;
			float _HeightParallax2;
			float _AlbedoTiling3;
			float _HeightParallax3;
			float _AlbedoTiling4;
			float _HeightParallax4;
			float _AlbedoTiling5;
			float _HeightParallax5;
			float _AlbedoTiling6;
			float _HeightParallax6;
			float _FadeOffset;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
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
			TEXTURE2D(_Albedo1);
			TEXTURE2D(_Height1);
			SAMPLER(sampler_Height1);
			SAMPLER(sampler_Albedo1);
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
			SAMPLER(sampler_Normal1);
			TEXTURE2D(_Normal2);
			TEXTURE2D(_Normal3);
			TEXTURE2D(_Normal4);
			TEXTURE2D(_Normal5);
			TEXTURE2D(_Normal6);
			TEXTURE2D(_Occlusion1);
			SAMPLER(sampler_Occlusion1);
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

				o.ase_color = v.ase_color;
				o.ase_texcoord8.xy = v.texcoord.xy;
				o.ase_texcoord8.zw = v.texcoord1.xy;
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

				float4 break1303 = IN.ase_color;
				float3 break372 = WorldPosition;
				float3 break602 = sign( WorldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float2 ifLocalVar1264 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1264 = appendResult379;
				float4 break1330 = IN.ase_color;
				float2 uv_Height1443 = IN.ase_texcoord8.xy;
				float ifLocalVar1348 = 0;
				if( break1330.r > 0.0 )
				ifLocalVar1348 = SAMPLE_TEXTURE2D( _Height1, sampler_Height1, uv_Height1443 ).r;
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * WorldViewDirection.x + tanToWorld1 * WorldViewDirection.y  + tanToWorld2 * WorldViewDirection.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float2 Offset446 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( ifLocalVar1264 * _AlbedoTiling1 );
				float2 Offset449 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset446 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset446;
				float2 Offset454 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset449 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset449;
				float2 Offset459 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset454 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset454;
				float2 temp_output_966_0 = ddx( Offset459 );
				float2 temp_output_970_0 = ddy( Offset459 );
				float4 ifLocalVar1289 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1289 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset459, temp_output_966_0, temp_output_970_0 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( WorldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 PlanarNormal1254 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break382 = PlanarNormal1254;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 ifLocalVar1265 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1265 = appendResult380;
				float2 Offset626 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( ifLocalVar1265 * _AlbedoTiling1 );
				float2 Offset628 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset626 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset626;
				float2 Offset630 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset628 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset628;
				float2 Offset632 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset630 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset630;
				float2 temp_output_967_0 = ddx( Offset632 );
				float2 temp_output_971_0 = ddy( Offset632 );
				float4 ifLocalVar1288 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1288 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset632, temp_output_967_0, temp_output_971_0 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 ifLocalVar1266 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1266 = appendResult381;
				float2 Offset633 = ( ( ifLocalVar1348 - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + ( _AlbedoTiling1 * ifLocalVar1266 );
				float2 Offset635 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset633 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset633;
				float2 Offset637 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset635 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset635;
				float2 Offset639 = ( ( SAMPLE_TEXTURE2D( _Height1, sampler_Height1, Offset637 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax1 ) + Offset637;
				float2 temp_output_968_0 = ddx( Offset639 );
				float2 temp_output_972_0 = ddy( Offset639 );
				float4 ifLocalVar1287 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1287 = SAMPLE_TEXTURE2D_GRAD( _Albedo1, sampler_Albedo1, Offset639, temp_output_968_0, temp_output_972_0 );
				float2 ifLocalVar1267 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1267 = appendResult379;
				float2 uv_Height2662 = IN.ase_texcoord8.xy;
				float ifLocalVar1346 = 0;
				if( break1330.g > 0.0 )
				ifLocalVar1346 = SAMPLE_TEXTURE2D( _Height2, sampler_Height1, uv_Height2662 ).r;
				float2 Offset644 = ( ( ifLocalVar1346 - 1 ) * float3( 0,0,0 ).xy * _HeightParallax2 ) + ( ifLocalVar1267 * _AlbedoTiling2 );
				float2 Offset646 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset644 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset644;
				float2 Offset648 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset646 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset646;
				float2 Offset661 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset648 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset648;
				float2 temp_output_984_0 = ddx( Offset661 );
				float2 temp_output_979_0 = ddy( Offset661 );
				float4 ifLocalVar1286 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1286 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset661, temp_output_984_0, temp_output_979_0 );
				float2 ifLocalVar1268 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1268 = appendResult380;
				float2 Offset650 = ( ( ifLocalVar1346 - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + ( ifLocalVar1268 * _AlbedoTiling2 );
				float2 Offset652 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset650 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset650;
				float2 Offset654 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset652 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset652;
				float2 Offset656 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset654 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset654;
				float2 temp_output_983_0 = ddx( Offset656 );
				float2 temp_output_981_0 = ddy( Offset656 );
				float4 ifLocalVar1285 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1285 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset656, temp_output_983_0, temp_output_981_0 );
				float2 ifLocalVar1269 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1269 = appendResult381;
				float2 Offset657 = ( ( ifLocalVar1346 - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + ( ifLocalVar1269 * _AlbedoTiling2 );
				float2 Offset659 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset657 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset657;
				float2 Offset643 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset659 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset659;
				float2 Offset641 = ( ( SAMPLE_TEXTURE2D( _Height2, sampler_Height1, Offset643 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax2 ) + Offset643;
				float2 temp_output_982_0 = ddx( Offset641 );
				float2 temp_output_980_0 = ddy( Offset641 );
				float4 ifLocalVar1284 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1284 = SAMPLE_TEXTURE2D_GRAD( _Albedo2, sampler_Albedo1, Offset641, temp_output_982_0, temp_output_980_0 );
				float2 ifLocalVar1270 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1270 = appendResult379;
				float2 uv_Height3678 = IN.ase_texcoord8.xy;
				float ifLocalVar1336 = 0;
				if( break1330.b > 0.0 )
				ifLocalVar1336 = SAMPLE_TEXTURE2D( _Height3, sampler_Height1, uv_Height3678 ).r;
				float2 Offset667 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1270 * _AlbedoTiling3 );
				float2 Offset669 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset667 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset667;
				float2 Offset671 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset669 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset669;
				float2 Offset664 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset671 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset671;
				float2 temp_output_978_0 = ddx( Offset664 );
				float2 temp_output_973_0 = ddy( Offset664 );
				float4 ifLocalVar1292 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1292 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset664, temp_output_978_0, temp_output_973_0 );
				float2 ifLocalVar1271 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1271 = appendResult380;
				float2 Offset683 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1271 * _AlbedoTiling3 );
				float2 Offset681 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset683 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset683;
				float2 Offset679 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset681 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset681;
				float2 Offset677 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset679 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset679;
				float2 temp_output_977_0 = ddx( Offset677 );
				float2 temp_output_975_0 = ddy( Offset677 );
				float4 ifLocalVar1291 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1291 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset677, temp_output_977_0, temp_output_975_0 );
				float2 ifLocalVar1272 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1272 = appendResult381;
				float2 Offset676 = ( ( ifLocalVar1336 - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + ( ifLocalVar1272 * _AlbedoTiling3 );
				float2 Offset674 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset676 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset676;
				float2 Offset666 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset674 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset674;
				float2 Offset665 = ( ( SAMPLE_TEXTURE2D( _Height3, sampler_Height1, Offset666 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax3 ) + Offset666;
				float2 temp_output_976_0 = ddx( Offset665 );
				float2 temp_output_974_0 = ddy( Offset665 );
				float4 ifLocalVar1290 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1290 = SAMPLE_TEXTURE2D_GRAD( _Albedo3, sampler_Albedo1, Offset665, temp_output_976_0, temp_output_974_0 );
				float2 ifLocalVar1273 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1273 = appendResult379;
				float2 uv_Height4740 = IN.ase_texcoord8.xy;
				float ifLocalVar1338 = 0;
				if( break1330.a > 0.0 )
				ifLocalVar1338 = SAMPLE_TEXTURE2D( _Height4, sampler_Height1, uv_Height4740 ).r;
				float2 Offset690 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1273 * _AlbedoTiling4 );
				float2 Offset692 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset690 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset690;
				float2 Offset727 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset692 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset692;
				float2 Offset752 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset727 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset727;
				float2 temp_output_996_0 = ddx( Offset752 );
				float2 temp_output_991_0 = ddy( Offset752 );
				float4 ifLocalVar1294 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1294 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset752, temp_output_996_0, temp_output_991_0 );
				float2 ifLocalVar1274 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1274 = appendResult380;
				float2 Offset729 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1274 * _AlbedoTiling4 );
				float2 Offset731 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset729 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset729;
				float2 Offset753 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset731 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset731;
				float2 Offset734 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset753 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset753;
				float2 temp_output_995_0 = ddx( Offset734 );
				float2 temp_output_993_0 = ddy( Offset734 );
				float4 ifLocalVar1295 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1295 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset734, temp_output_995_0, temp_output_993_0 );
				float2 ifLocalVar1275 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1275 = appendResult381;
				float2 Offset735 = ( ( ifLocalVar1338 - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + ( ifLocalVar1275 * _AlbedoTiling4 );
				float2 Offset737 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset735 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset735;
				float2 Offset689 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset737 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset737;
				float2 Offset687 = ( ( SAMPLE_TEXTURE2D( _Height4, sampler_Height1, Offset689 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax4 ) + Offset689;
				float2 temp_output_994_0 = ddx( Offset687 );
				float2 temp_output_992_0 = ddy( Offset687 );
				float4 ifLocalVar1293 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1293 = SAMPLE_TEXTURE2D_GRAD( _Albedo4, sampler_Albedo1, Offset687, temp_output_994_0, temp_output_992_0 );
				float2 break1305 = IN.ase_texcoord8.zw;
				float2 ifLocalVar1276 = 0;
				if( IN.ase_texcoord8.zw.x > 0.0 )
				ifLocalVar1276 = appendResult379;
				float2 break1329 = IN.ase_texcoord8.zw;
				float2 uv_Height5693 = IN.ase_texcoord8.xy;
				float ifLocalVar1340 = 0;
				if( break1329.x > 0.0 )
				ifLocalVar1340 = SAMPLE_TEXTURE2D( _Height5, sampler_Height1, uv_Height5693 ).r;
				float2 Offset745 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1276 * _AlbedoTiling5 );
				float2 Offset747 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset745 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset745;
				float2 Offset749 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset747 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset747;
				float2 Offset742 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset749 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset749;
				float2 temp_output_1002_0 = ddx( Offset742 );
				float2 temp_output_997_0 = ddy( Offset742 );
				float4 ifLocalVar1296 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1296 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset742, temp_output_1002_0, temp_output_997_0 );
				float2 ifLocalVar1277 = 0;
				if( IN.ase_texcoord8.zw.x > 0.0 )
				ifLocalVar1277 = appendResult380;
				float2 Offset698 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1277 * _AlbedoTiling5 );
				float2 Offset696 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset698 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset698;
				float2 Offset694 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset696 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset696;
				float2 Offset722 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset694 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset694;
				float2 temp_output_1001_0 = ddx( Offset722 );
				float2 temp_output_999_0 = ddy( Offset722 );
				float4 ifLocalVar1298 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1298 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset722, temp_output_1001_0, temp_output_999_0 );
				float2 ifLocalVar1278 = 0;
				if( IN.ase_texcoord8.zw.x > 0.0 )
				ifLocalVar1278 = appendResult381;
				float2 Offset723 = ( ( ifLocalVar1340 - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + ( ifLocalVar1278 * _AlbedoTiling5 );
				float2 Offset725 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset723 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset723;
				float2 Offset744 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset725 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset725;
				float2 Offset743 = ( ( SAMPLE_TEXTURE2D( _Height5, sampler_Height1, Offset744 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax5 ) + Offset744;
				float2 temp_output_1000_0 = ddx( Offset743 );
				float2 temp_output_998_0 = ddy( Offset743 );
				float4 ifLocalVar1297 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1297 = SAMPLE_TEXTURE2D_GRAD( _Albedo5, sampler_Albedo1, Offset743, temp_output_1000_0, temp_output_998_0 );
				float2 ifLocalVar1279 = 0;
				if( IN.ase_texcoord8.zw.y > 0.0 )
				ifLocalVar1279 = appendResult379;
				float2 uv_Height6754 = IN.ase_texcoord8.xy;
				float ifLocalVar1344 = 0;
				if( break1329.y > 0.0 )
				ifLocalVar1344 = SAMPLE_TEXTURE2D( _Height6, sampler_Height1, uv_Height6754 ).r;
				float2 Offset704 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1279 * _AlbedoTiling6 );
				float2 Offset706 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset704 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset704;
				float2 Offset708 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset706 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset706;
				float2 Offset701 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset708 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset708;
				float2 temp_output_990_0 = ddx( Offset701 );
				float2 temp_output_985_0 = ddy( Offset701 );
				float4 ifLocalVar1300 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1300 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset701, temp_output_990_0, temp_output_985_0 );
				float2 ifLocalVar1280 = 0;
				if( IN.ase_texcoord8.zw.y > 0.0 )
				ifLocalVar1280 = appendResult380;
				float2 Offset719 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1280 * _AlbedoTiling6 );
				float2 Offset717 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset719 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset719;
				float2 Offset715 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset717 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset717;
				float2 Offset714 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset715 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset715;
				float2 temp_output_989_0 = ddx( Offset714 );
				float2 temp_output_987_0 = ddy( Offset714 );
				float4 ifLocalVar1299 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1299 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset714, temp_output_989_0, temp_output_987_0 );
				float2 ifLocalVar1281 = 0;
				if( IN.ase_texcoord8.zw.y > 0.0 )
				ifLocalVar1281 = appendResult381;
				float2 Offset713 = ( ( ifLocalVar1344 - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + ( ifLocalVar1281 * _AlbedoTiling6 );
				float2 Offset711 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset713 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset713;
				float2 Offset703 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset711 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset711;
				float2 Offset702 = ( ( SAMPLE_TEXTURE2D( _Height6, sampler_Height1, Offset703 ).r - 1 ) * ase_tanViewDir.xy * _HeightParallax6 ) + Offset703;
				float2 temp_output_988_0 = ddx( Offset702 );
				float2 temp_output_986_0 = ddy( Offset702 );
				float4 ifLocalVar1301 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1301 = SAMPLE_TEXTURE2D_GRAD( _Albedo6, sampler_Albedo1, Offset702, temp_output_988_0, temp_output_986_0 );
				float clampResult1261 = clamp( ( ( ScreenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1289 * break382.x ) + ( ifLocalVar1288 * break382.y ) ) + ( ifLocalVar1287 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1286 * break382.x ) + ( ifLocalVar1285 * break382.y ) ) + ( ifLocalVar1284 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1292 * break382.x ) + ( ifLocalVar1291 * break382.y ) ) + ( ifLocalVar1290 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1294 * break382.x ) + ( ifLocalVar1295 * break382.y ) ) + ( ifLocalVar1293 * break382.z ) ) ) ) + ( IN.ase_texcoord8.zw.x * ( ( ( ifLocalVar1296 * break382.x ) + ( ifLocalVar1298 * break382.y ) ) + ( ifLocalVar1297 * break382.z ) ) ) ) + ( IN.ase_texcoord8.zw.y * ( ( ( ifLocalVar1300 * break382.x ) + ( ifLocalVar1299 * break382.y ) ) + ( ifLocalVar1301 * break382.z ) ) ) ) , clampResult1261);
				
				float4 break1374 = IN.ase_color;
				float3 unpack587 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_Normal1, Offset459, temp_output_966_0, temp_output_970_0 ), _NormalStrength1 );
				unpack587.z = lerp( 1, unpack587.z, saturate(_NormalStrength1) );
				float3 ifLocalVar1390 = 0;
				if( break1374.r > 0.0 )
				ifLocalVar1390 = unpack587;
				float3 unpack578 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_Normal1, Offset632, temp_output_967_0, temp_output_971_0 ), _NormalStrength1 );
				unpack578.z = lerp( 1, unpack578.z, saturate(_NormalStrength1) );
				float3 ifLocalVar1389 = 0;
				if( break1374.r > 0.0 )
				ifLocalVar1389 = unpack578;
				float3 unpack584 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_Normal1, Offset639, temp_output_968_0, temp_output_972_0 ), _NormalStrength1 );
				unpack584.z = lerp( 1, unpack584.z, saturate(_NormalStrength1) );
				float3 ifLocalVar1377 = 0;
				if( break1374.r > 0.0 )
				ifLocalVar1377 = unpack584;
				float3 unpack544 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_Normal1, Offset661, temp_output_984_0, temp_output_979_0 ), _NormalStrength2 );
				unpack544.z = lerp( 1, unpack544.z, saturate(_NormalStrength2) );
				float3 ifLocalVar1388 = 0;
				if( break1374.g > 0.0 )
				ifLocalVar1388 = unpack544;
				float3 unpack571 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_Normal1, Offset656, temp_output_983_0, temp_output_981_0 ), _NormalStrength2 );
				unpack571.z = lerp( 1, unpack571.z, saturate(_NormalStrength2) );
				float3 ifLocalVar1376 = 0;
				if( break1374.g > 0.0 )
				ifLocalVar1376 = unpack571;
				float3 unpack500 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_Normal1, Offset641, temp_output_982_0, temp_output_980_0 ), _NormalStrength2 );
				unpack500.z = lerp( 1, unpack500.z, saturate(_NormalStrength2) );
				float3 ifLocalVar1375 = 0;
				if( break1374.g > 0.0 )
				ifLocalVar1375 = unpack500;
				float3 unpack497 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_Normal1, Offset664, temp_output_978_0, temp_output_973_0 ), _NormalStrength3 );
				unpack497.z = lerp( 1, unpack497.z, saturate(_NormalStrength3) );
				float3 ifLocalVar1380 = 0;
				if( break1374.b > 0.0 )
				ifLocalVar1380 = unpack497;
				float3 unpack540 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_Normal1, Offset677, temp_output_977_0, temp_output_975_0 ), _NormalStrength3 );
				unpack540.z = lerp( 1, unpack540.z, saturate(_NormalStrength3) );
				float3 ifLocalVar1379 = 0;
				if( break1374.b > 0.0 )
				ifLocalVar1379 = unpack540;
				float3 unpack554 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_Normal1, Offset665, temp_output_976_0, temp_output_974_0 ), _NormalStrength3 );
				unpack554.z = lerp( 1, unpack554.z, saturate(_NormalStrength3) );
				float3 ifLocalVar1378 = 0;
				if( break1374.b > 0.0 )
				ifLocalVar1378 = unpack554;
				float3 unpack499 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_Normal1, Offset752, temp_output_996_0, temp_output_991_0 ), _NormalStrength4 );
				unpack499.z = lerp( 1, unpack499.z, saturate(_NormalStrength4) );
				float3 ifLocalVar1382 = 0;
				if( break1374.a > 0.0 )
				ifLocalVar1382 = unpack499;
				float3 unpack505 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_Normal1, Offset734, temp_output_995_0, temp_output_993_0 ), _NormalStrength4 );
				unpack505.z = lerp( 1, unpack505.z, saturate(_NormalStrength4) );
				float3 ifLocalVar1383 = 0;
				if( break1374.a > 0.0 )
				ifLocalVar1383 = unpack505;
				float3 unpack508 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal4, sampler_Normal1, Offset687, temp_output_994_0, temp_output_992_0 ), _NormalStrength4 );
				unpack508.z = lerp( 1, unpack508.z, saturate(_NormalStrength4) );
				float3 ifLocalVar1381 = 0;
				if( break1374.a > 0.0 )
				ifLocalVar1381 = unpack508;
				float2 break1373 = IN.ase_texcoord8.zw;
				float3 unpack504 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_Normal1, Offset742, temp_output_1002_0, temp_output_997_0 ), _NormalStrength5 );
				unpack504.z = lerp( 1, unpack504.z, saturate(_NormalStrength5) );
				float3 ifLocalVar1384 = 0;
				if( break1373.x > 0.0 )
				ifLocalVar1384 = unpack504;
				float3 unpack564 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_Normal1, Offset722, temp_output_1001_0, temp_output_999_0 ), _NormalStrength5 );
				unpack564.z = lerp( 1, unpack564.z, saturate(_NormalStrength5) );
				float3 ifLocalVar1372 = 0;
				if( break1373.x > 0.0 )
				ifLocalVar1372 = unpack564;
				float3 unpack506 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal5, sampler_Normal1, Offset743, temp_output_1000_0, temp_output_998_0 ), _NormalStrength5 );
				unpack506.z = lerp( 1, unpack506.z, saturate(_NormalStrength5) );
				float3 ifLocalVar1391 = 0;
				if( break1373.x > 0.0 )
				ifLocalVar1391 = unpack506;
				float3 unpack539 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_Normal1, Offset701, temp_output_990_0, temp_output_985_0 ), _NormalStrength6 );
				unpack539.z = lerp( 1, unpack539.z, saturate(_NormalStrength6) );
				float3 ifLocalVar1386 = 0;
				if( break1373.y > 0.0 )
				ifLocalVar1386 = unpack539;
				float3 unpack561 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_Normal1, Offset714, temp_output_989_0, temp_output_987_0 ), _NormalStrength6 );
				unpack561.z = lerp( 1, unpack561.z, saturate(_NormalStrength6) );
				float3 ifLocalVar1385 = 0;
				if( break1373.y > 0.0 )
				ifLocalVar1385 = unpack561;
				float3 unpack568 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _Normal6, sampler_Normal1, Offset702, temp_output_988_0, temp_output_986_0 ), _NormalStrength6 );
				unpack568.z = lerp( 1, unpack568.z, saturate(_NormalStrength6) );
				float3 ifLocalVar1387 = 0;
				if( break1373.y > 0.0 )
				ifLocalVar1387 = unpack568;
				
				float4 break1326 = IN.ase_color;
				float ifLocalVar1308 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1308 = SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_Occlusion1, Offset459, temp_output_966_0, temp_output_970_0 ).r;
				float ifLocalVar1309 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1309 = SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_Occlusion1, Offset632, temp_output_967_0, temp_output_971_0 ).r;
				float ifLocalVar1323 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1323 = SAMPLE_TEXTURE2D_GRAD( _Occlusion1, sampler_Occlusion1, Offset639, temp_output_968_0, temp_output_972_0 ).r;
				float temp_output_903_0 = ( IN.ase_color.r * ( ( ( ifLocalVar1308 * break382.x ) + ( ifLocalVar1309 * break382.y ) ) + ( ifLocalVar1323 * break382.z ) ) );
				float ifLocalVar1310 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1310 = SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_Occlusion1, Offset661, temp_output_984_0, temp_output_979_0 ).r;
				float ifLocalVar1324 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1324 = SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_Occlusion1, Offset656, temp_output_983_0, temp_output_981_0 ).r;
				float ifLocalVar1325 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1325 = SAMPLE_TEXTURE2D_GRAD( _Occlusion2, sampler_Occlusion1, Offset641, temp_output_982_0, temp_output_980_0 ).r;
				float temp_output_942_0 = ( IN.ase_color.g * ( ( ( ifLocalVar1310 * break382.x ) + ( ifLocalVar1324 * break382.y ) ) + ( ifLocalVar1325 * break382.z ) ) );
				float ifLocalVar1320 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1320 = SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_Occlusion1, Offset664, temp_output_978_0, temp_output_973_0 ).r;
				float ifLocalVar1321 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1321 = SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_Occlusion1, Offset677, temp_output_977_0, temp_output_975_0 ).r;
				float ifLocalVar1322 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1322 = SAMPLE_TEXTURE2D_GRAD( _Occlusion3, sampler_Occlusion1, Offset665, temp_output_976_0, temp_output_974_0 ).r;
				float temp_output_944_0 = ( IN.ase_color.b * ( ( ( ifLocalVar1320 * break382.x ) + ( ifLocalVar1321 * break382.y ) ) + ( ifLocalVar1322 * break382.z ) ) );
				float ifLocalVar1318 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1318 = SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_Occlusion1, Offset752, temp_output_996_0, temp_output_991_0 ).r;
				float ifLocalVar1317 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1317 = SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_Occlusion1, Offset734, temp_output_995_0, temp_output_993_0 ).r;
				float ifLocalVar1319 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1319 = SAMPLE_TEXTURE2D_GRAD( _Occlusion4, sampler_Occlusion1, Offset687, temp_output_994_0, temp_output_992_0 ).r;
				float temp_output_924_0 = ( IN.ase_color.a * ( ( ( ifLocalVar1318 * break382.x ) + ( ifLocalVar1317 * break382.y ) ) + ( ifLocalVar1319 * break382.z ) ) );
				float2 break1327 = IN.ase_texcoord8.zw;
				float ifLocalVar1316 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1316 = SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_Occlusion1, Offset742, temp_output_1002_0, temp_output_997_0 ).r;
				float ifLocalVar1314 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1314 = SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_Occlusion1, Offset722, temp_output_1001_0, temp_output_999_0 ).r;
				float ifLocalVar1315 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1315 = SAMPLE_TEXTURE2D_GRAD( _Occlusion5, sampler_Occlusion1, Offset743, temp_output_1000_0, temp_output_998_0 ).r;
				float temp_output_947_0 = ( IN.ase_texcoord8.zw.x * ( ( ( ifLocalVar1316 * break382.x ) + ( ifLocalVar1314 * break382.y ) ) + ( ifLocalVar1315 * break382.z ) ) );
				float ifLocalVar1312 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1312 = SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_Occlusion1, Offset701, temp_output_990_0, temp_output_985_0 ).r;
				float ifLocalVar1313 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1313 = SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_Occlusion1, Offset714, temp_output_989_0, temp_output_987_0 ).r;
				float ifLocalVar1311 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1311 = SAMPLE_TEXTURE2D_GRAD( _Occlusion6, sampler_Occlusion1, Offset702, temp_output_988_0, temp_output_986_0 ).r;
				float temp_output_943_0 = ( IN.ase_texcoord8.zw.y * ( ( ( ifLocalVar1312 * break382.x ) + ( ifLocalVar1313 * break382.y ) ) + ( ifLocalVar1311 * break382.z ) ) );
				half3 temp_cast_2 = (( ( ( ( ( ( _Shiny1 * temp_output_903_0 ) + ( _Shiny2 * temp_output_942_0 ) ) + ( _Shiny3 * temp_output_944_0 ) ) + ( _Shiny4 * temp_output_924_0 ) ) + ( _Shiny5 * temp_output_947_0 ) ) + ( _Shiny6 * temp_output_943_0 ) )).xxx;
				
				float3 Albedo = lerpResult1262.rgb;
				float3 Normal = ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1390 * break382.x ) + ( ifLocalVar1389 * break382.y ) ) + ( ifLocalVar1377 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1388 * break382.x ) + ( ifLocalVar1376 * break382.y ) ) + ( ifLocalVar1375 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1380 * break382.x ) + ( ifLocalVar1379 * break382.y ) ) + ( ifLocalVar1378 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1382 * break382.x ) + ( ifLocalVar1383 * break382.y ) ) + ( ifLocalVar1381 * break382.z ) ) ) ) + ( IN.ase_texcoord8.zw.x * ( ( ( ifLocalVar1384 * break382.x ) + ( ifLocalVar1372 * break382.y ) ) + ( ifLocalVar1391 * break382.z ) ) ) ) + ( IN.ase_texcoord8.zw.y * ( ( ( ifLocalVar1386 * break382.x ) + ( ifLocalVar1385 * break382.y ) ) + ( ifLocalVar1387 * break382.z ) ) ) );
				float3 Emission = 0;
				float3 Specular = temp_cast_2;
				float Metallic = 0;
				float Smoothness = ( ( ( ( ( ( _Smooth1 * temp_output_903_0 ) + ( _Smooth2 * temp_output_942_0 ) ) + ( _Smooth3 * temp_output_944_0 ) ) + ( _Smooth4 * temp_output_924_0 ) ) + ( _Smooth5 * temp_output_947_0 ) ) + ( _Smooth6 * temp_output_943_0 ) );
				float Occlusion = ( ( ( ( ( ( _OcclusionStrength1 * temp_output_903_0 ) + ( _OcclusionStrength2 * temp_output_942_0 ) ) + ( _OcclusionStrength3 * temp_output_944_0 ) ) + ( _OcclusionStrength4 * temp_output_924_0 ) ) + ( _OcclusionStrength5 * temp_output_947_0 ) ) + ( _OcclusionStrength6 * temp_output_943_0 ) );
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
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _Shiny6;
			float _Smooth1;
			float _NormalStrength6;
			float _Smooth2;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth3;
			float _NormalStrength5;
			float _NormalStrength4;
			float _NormalStrength3;
			float _AlbedoTiling1;
			float _HeightParallax1;
			float _Falloff;
			float _AlbedoTiling2;
			float _HeightParallax2;
			float _AlbedoTiling3;
			float _HeightParallax3;
			float _AlbedoTiling4;
			float _HeightParallax4;
			float _AlbedoTiling5;
			float _HeightParallax5;
			float _AlbedoTiling6;
			float _HeightParallax6;
			float _FadeOffset;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
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
			float _Shiny1;
			float _Shiny2;
			float _Shiny3;
			float _Shiny4;
			float _Shiny5;
			float _Shiny6;
			float _Smooth1;
			float _NormalStrength6;
			float _Smooth2;
			float _Smooth4;
			float _Smooth5;
			float _Smooth6;
			float _OcclusionStrength1;
			float _OcclusionStrength2;
			float _OcclusionStrength3;
			float _OcclusionStrength4;
			float _Smooth3;
			float _NormalStrength5;
			float _NormalStrength4;
			float _NormalStrength3;
			float _AlbedoTiling1;
			float _HeightParallax1;
			float _Falloff;
			float _AlbedoTiling2;
			float _HeightParallax2;
			float _AlbedoTiling3;
			float _HeightParallax3;
			float _AlbedoTiling4;
			float _HeightParallax4;
			float _AlbedoTiling5;
			float _HeightParallax5;
			float _AlbedoTiling6;
			float _HeightParallax6;
			float _FadeOffset;
			float _FadeRange;
			float _NormalStrength1;
			float _NormalStrength2;
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
297;160;1920;746;7655.795;3385.45;1;True;False
Node;AmplifyShaderEditor.CommentaryNode;611;-10119.24,213.2172;Inherit;False;1094.51;860.2861;;22;610;372;592;593;594;595;598;599;597;600;601;602;606;607;609;596;343;1254;382;380;381;379;Triplanar UV;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1282;-7578.115,-3329.467;Inherit;False;1134.239;818.3521;;18;1264;1265;1266;1267;1268;1269;1270;1271;1272;1273;1274;1275;1276;1277;1278;1279;1280;1281;Tiling Optimization;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1169;-9488.603,-705.7982;Inherit;False;461.7822;435.8462;;3;464;113;114;Mesh Data;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;491;-6366.915,-3348.589;Inherit;False;1412.169;843.6172;;24;490;489;408;405;404;399;406;407;486;409;397;393;411;400;413;410;488;392;487;485;402;403;390;412;Tiling Albedo;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1349;-5436.295,-1327.182;Inherit;False;597.2061;616.3065;;8;1329;1330;1348;1346;1336;1338;1340;1344;Height Optimization;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;494;-5095.11,3338.169;Inherit;False;1453.274;1471.567;;24;587;584;578;571;568;564;561;555;554;545;544;541;540;539;508;507;506;505;504;503;500;499;498;497;Normal Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1043;1239.43,1918.797;Inherit;False;1270.305;488.4753;;17;1025;1026;1027;1028;1029;1030;1031;1032;1033;1034;1035;1036;1037;1038;1039;1040;1041;Rough;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;763;-7396.489,-659.6669;Inherit;False;5950.879;2176.445;;139;655;643;639;638;637;446;458;449;654;653;652;651;649;650;664;666;667;668;669;670;684;672;673;671;675;676;677;679;680;681;682;683;674;685;658;657;656;665;659;454;457;626;627;628;644;629;632;633;634;635;453;636;661;641;631;648;744;700;699;642;660;647;459;630;687;688;689;690;691;692;646;695;696;701;697;702;719;711;703;704;705;706;708;709;710;712;645;713;714;715;716;717;718;720;698;694;722;745;725;721;728;729;730;731;732;733;734;735;736;737;738;739;742;743;724;746;727;726;723;747;749;750;748;752;753;740;686;751;754;443;662;678;463;640;663;741;693;707;892;Height;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1063;1215.242,2532.323;Inherit;False;1270.305;488.4753;;17;1081;1080;1079;1078;1077;1076;1074;1073;1072;1071;1070;1069;1068;1067;1066;1065;1064;Occlusion;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1004;-1100.503,-141.9112;Inherit;False;923.9189;593.9789;;36;970;972;971;968;967;966;979;980;981;982;983;984;973;974;975;976;977;978;985;986;987;988;989;990;991;992;993;994;995;996;997;998;999;1000;1001;1002;DDs;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1307;2179.734,-319.2421;Inherit;False;1134.235;976.7544;;20;1327;1326;1325;1324;1323;1322;1321;1320;1319;1318;1317;1316;1315;1314;1313;1312;1311;1310;1309;1308;Occlusion Optimization;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;383;-4813.138,-3376.342;Inherit;False;1453.274;1471.567;;24;370;110;369;47;368;109;46;367;366;108;45;365;364;107;44;363;360;106;43;371;362;361;105;42;Albedo Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;625;-2020.861,3410.002;Inherit;False;1683.023;2064.379;;53;509;495;588;573;566;543;535;559;574;580;536;552;570;589;577;549;546;533;547;565;562;534;581;542;537;560;582;572;550;563;579;553;567;548;583;556;614;613;615;616;617;618;576;551;586;557;569;558;575;538;496;513;585;Normal Compose;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1306;-3073.492,-3304.807;Inherit;False;1134.235;976.7544;;20;1284;1285;1287;1290;1291;1292;1293;1294;1295;1296;1297;1298;1299;1300;1301;1286;1288;1289;1303;1305;Albedo Optimization;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1263;2762.805,2673.404;Inherit;False;1860.958;464.9319;;8;1255;1256;1257;1258;1259;1260;1261;1262;Fade Effect;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1371;-3362.865,3574.773;Inherit;False;1134.235;976.7544;;20;1391;1390;1389;1388;1387;1386;1385;1384;1383;1382;1381;1380;1379;1378;1377;1376;1375;1374;1373;1372;Normal Optimization;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1044;2579.038,1937.094;Inherit;False;1270.305;488.4753;;17;1061;1060;1059;1058;1057;1056;1055;1054;1053;1052;1051;1050;1049;1048;1047;1046;1045;Smooth;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;893;3551.494,-681.0444;Inherit;False;1645.003;1929.028;;48;964;963;962;961;960;959;957;953;952;948;947;944;943;942;939;938;937;936;933;931;928;927;926;925;924;921;919;918;917;916;915;914;912;910;909;908;907;903;902;898;897;895;1248;1249;1250;1251;1252;1253;Occlusion Compose;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;894;428.9417,-478.1337;Inherit;False;1453.274;1471.567;;32;965;958;956;954;950;946;945;941;940;934;932;930;929;923;922;920;913;911;906;905;904;901;900;896;6;7;9;8;2;4;5;3;Occlusion Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;441;-1457.987,-3456.726;Inherit;False;1645.003;1929.028;;47;389;378;375;373;374;385;387;377;376;388;386;384;420;419;417;421;422;415;416;426;425;418;424;423;433;431;436;434;429;435;437;432;427;438;428;430;128;137;127;126;133;136;135;132;129;134;130;Albedo Compose;1,1,1,1;0;0
Node;AmplifyShaderEditor.AbsOpNode;594;-9814.242,346.2175;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;592;-10069.24,263.2173;Inherit;False;Property;_Falloff;Fall off;60;1;[Header];Create;True;1;Other Parameter;0;0;False;0;False;1.56;1.56;0;4;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldPosInputsNode;343;-10028.56,856.1431;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.BreakToComponentsNode;602;-9659.544,638.9012;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.BreakToComponentsNode;372;-9742.183,857.4487;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.NegateNode;609;-9573.034,782.3111;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;595;-9667.241,328.217;Inherit;False;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;607;-9413.018,749.1266;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-9421.32,858.1641;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;606;-9421.317,648.3832;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;381;-9197.72,844.5002;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;379;-9213.733,652.2679;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1270;-6817.751,-3273.551;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SignOpNode;601;-9808.947,641.3202;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;597;-9677.24,435.217;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.WorldNormalVector;593;-10063.24,349.2173;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ConditionalIfNode;1264;-7528.043,-3273.71;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.VertexColorNode;113;-9426.863,-655.7982;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ConditionalIfNode;1267;-7176.294,-3271.993;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;486;-5838.517,-3065.814;Inherit;False;Property;_AlbedoTiling2;Albedo Tiling 2;11;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1265;-7353.527,-3279.467;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1269;-7176.365,-3092.242;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1268;-7001.772,-3277.749;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;598;-9529.243,428.217;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1266;-7528.115,-3093.96;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1038;1292.336,1987.54;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;404;-5587.343,-3176.791;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;487;-5403.021,-3063.214;Inherit;False;Property;_AlbedoTiling3;Albedo Tiling 3;21;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;403;-5987.766,-3091.311;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;393;-5587.911,-3283.794;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;405;-5578.095,-3062.131;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;599;-9527.243,547.2161;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;600;-9679.24,558.2161;Inherit;False;Constant;_Float0;Float 0;30;0;Create;True;0;0;0;False;0;False;1E-05;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;380;-9199.224,753.1307;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1272;-6817.822,-3093.801;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;392;-5132.758,-2888.088;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;400;-5442.559,-2885.034;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;407;-5149.646,-3068.075;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;399;-5148.766,-3298.589;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;114;-9438.603,-428.952;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;488;-6092.019,-2626.412;Inherit;False;Property;_AlbedoTiling4;Albedo Tiling 4;31;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1274;-7346.277,-2903.62;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1273;-7520.794,-2897.864;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;390;-5986.229,-3294.481;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1275;-7520.866,-2718.113;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1254;-9224.415,291.7631;Inherit;False;PlanarNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;489;-5701.918,-2631.612;Inherit;False;Property;_AlbedoTiling5;Albedo Tiling 5;41;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;382;-9195.033,368.2576;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.ConditionalIfNode;1276;-7163.82,-2902.541;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;408;-5831.159,-2769.425;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1271;-6643.237,-3279.307;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;406;-5145.949,-3175.338;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;596;-9364.243,320.2173;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;397;-5826.812,-2895.732;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;409;-5829.31,-2639.971;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;410;-5440.383,-2780.669;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1279;-6808.396,-2899.423;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;490;-5381.583,-2623.109;Inherit;False;Property;_AlbedoTiling6;Albedo Tiling 6;51;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;411;-5442.233,-2647.515;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1281;-6808.467,-2719.672;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1277;-6989.3,-2908.297;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1280;-6633.882,-2905.179;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;485;-6316.915,-3082.714;Inherit;False;Property;_AlbedoTiling1;Albedo Tiling 1;1;0;Create;True;0;0;0;False;0;False;0.1;0.19;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;413;-5116.746,-2653.063;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;137;-682.4127,-1662.699;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;370;-4027.073,-2145.932;Inherit;True;Property;_TextureSample16;Texture Sample 16;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;110;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ConditionalIfNode;1313;3123.966,263.4445;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;541;-5038.835,3900.281;Inherit;True;Property;_Normal3;Normal 3;22;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;4af0b502770203d41b2dccc536456c35;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;412;-5127.844,-2773.271;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1278;-7163.891,-2722.79;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;402;-5987.767,-3193.026;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1047;2934.436,2149.944;Inherit;False;Property;_Smooth3;Smooth 3;27;0;Create;True;0;0;0;False;0;False;0.1;0.76;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1061;2777.038,2125.053;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;629;-5715.838,-378.7396;Inherit;True;Property;_TextureSample40;Texture Sample 40;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;443;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;558;-1240.431,4987.93;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1312;2949.453,269.2006;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;738;-3290.272,-585.6816;Inherit;True;Property;_TextureSample84;Texture Sample 84;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;740;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1074;1413.241,2720.282;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;743;-1718.425,578.6297;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;389;-616.9007,-2926.751;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;534;-1713.114,4436.196;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;732;-2649.118,-379.3983;Inherit;True;Property;_TextureSample81;Texture Sample 81;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;740;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;432;-576.7386,-2678.763;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;546;-612.2732,4665.602;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;130;-474.3727,-1670.91;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;589;-1704.547,4663.606;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;504;-4788.328,4370.753;Inherit;True;Property;_TextureSample24;Texture Sample 24;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1059;2774.241,2242.387;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;453;-6356.992,-585.023;Inherit;True;Property;_TextureSample18;Texture Sample 18;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;443;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1060;2629.038,2243.051;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;437;-47.98127,-2665.954;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;651;-6332.36,362.3237;Inherit;True;Property;_TextureSample49;Texture Sample 49;18;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;662;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;921;4384.012,-378.4793;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1030;1899.83,2231.646;Inherit;False;Property;_Shiny6;Shiny 6;56;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1068;2173.651,2592.156;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;387;-874.4837,-3393.918;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1257;3330.804,2930.478;Inherit;False;Property;_FadeRange;Fade Range;62;0;Create;True;0;0;0;False;0;False;0.5;0.9;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;550;-1960.55,4419.357;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ParallaxMappingNode;664;-4772.605,839.2658;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;419;-323.9315,-2920.31;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ParallaxMappingNode;659;-5965.186,581.1671;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;737;-2917.387,-150.9878;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;618;-1343.074,5352.915;Inherit;False;Property;_NormalStrength6;Normal Strength 6;53;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;424;-1141.67,-2201.954;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;132;-833.5067,-1903.915;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ParallaxMappingNode;648;-5367.258,138.1094;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1311;2949.383,448.9516;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;641;-4785.144,579.2883;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;752;-1746.622,-593.03;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1066;2315.484,2701.575;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1026;1854.83,2027.648;Inherit;False;Property;_Shiny2;Shiny 2;16;0;Create;True;0;0;0;False;0;False;0.1;0.13;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;942;4446.947,833.6118;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;895;4704.074,331.4738;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;567;-1703.131,4197.611;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;386;-872.9066,-3171;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.DdxOpNode;990;-467.13,175.123;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DdxOpNode;984;-754.881,-84.92342;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1252;3837.601,1063.589;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;539;-3997.074,4361.473;Inherit;True;Property;_TextureSample28;Texture Sample 28;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;369;-4476.181,-2140.353;Inherit;True;Property;_TextureSample15;Texture Sample 15;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;109;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;563;-1966.876,4660.941;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;948;3607.819,-408.1262;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;964;4961.497,109.7277;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;506;-4758.153,4574.158;Inherit;True;Property;_TextureSample26;Texture Sample 26;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;504;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;741;-4260.85,384.2246;Float;False;Property;_HeightParallax5;Height Parallax 5;49;0;Create;True;0;0;0;False;0;False;0;0.015;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;415;-70.16633,-3145.055;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1041;1437.43,2106.757;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;640;-7327.568,384.8832;Float;False;Property;_HeightParallax2;Height Parallax 2;19;0;Create;True;0;0;0;False;0;False;0;0;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;633;-6640.239,-133.6768;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;436;-49.39729,-2199.959;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;724;-3262.071,585.9781;Inherit;True;Property;_TextureSample78;Texture Sample 78;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;693;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1052;3532.186,2232.225;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;42;-4755.289,-3305.805;Inherit;True;Property;_Albedo1;Albedo 1;0;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;ace22d21483e490428f552c9a83ec097;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;586;-1245.094,4887.499;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ParallaxMappingNode;706;-2885.934,840.486;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1072;1419.241,2842.28;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;925;4136.572,-395.318;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;971;-911.505,-2.288212;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;435;-311.7306,-2202.624;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;740;-3973.304,-388.371;Inherit;True;Property;_Height4;Height 4;38;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;152c3965dee21ca47841692981204d1b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;708;-2278.723,837.592;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;634;-6347.71,-144.8595;Inherit;True;Property;_TextureSample42;Texture Sample 42;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;443;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;581;-1141.03,4652.793;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1057;2633.038,2121.052;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;46;-4750.576,-2345.262;Inherit;True;Property;_Albedo5;Albedo 5;40;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;c787bdaf6230f4b48a70eca7221420ad;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ParallaxMappingNode;454;-5386.178,-593.3868;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;906;735.7248,554.4523;Inherit;True;Property;_TextureSample111;Texture Sample 111;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DdyOpNode;981;-622.6281,3.383114;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1248;3842.29,758.881;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.WireNode;961;4392.577,-151.0691;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;917;4431.324,562.9147;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;513;-784.942,5179.146;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;562;-1707.118,3460.001;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1028;1897.83,2145.647;Inherit;False;Property;_Shiny4;Shiny 4;36;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;666;-5336.16,1278.414;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;748;-2039.189,561.9927;Inherit;True;Property;_TextureSample87;Texture Sample 87;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;693;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;962;4947.879,-141.9632;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1053;3679.281,2106.346;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;903;4294.853,830.3947;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1056;2784.038,2009.054;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;574;-869.8551,4198.434;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1324;2756.078,-109.1252;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;537;-1435.782,3694.557;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1079;1873.641,2759.173;Inherit;False;Property;_OcclusionStrength4;Occlusion Strength 4;35;0;Create;True;0;0;0;False;0;False;0.1;0.5;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;128;-465.5377,-1796.79;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;907;4690.295,-609.1301;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;434;-834.1607,-2457.016;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;508;-4002.397,4103.732;Inherit;True;Property;_TextureSample27;Texture Sample 27;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;499;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DdyOpNode;991;-912.757,177.7993;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;963;4168.992,560.2497;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;986;-339.8869,341.0663;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode;45;-4001.874,-2819.115;Inherit;True;Property;_Albedo4;Albedo 4;30;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;53fd6e83a5f2d1841959744abed92a6b;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;636;-5712.267,-154.4267;Inherit;True;Property;_TextureSample43;Texture Sample 43;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;443;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;731;-2920.958,-375.3009;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;378;-1403.238,-3406.726;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;642;-5105.909,562.6514;Inherit;True;Property;_TextureSample45;Texture Sample 45;18;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;662;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;627;-6351.281,-369.1725;Inherit;True;Property;_TextureSample39;Texture Sample 39;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;443;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;464;-9230.82,-523.5919;Float;False;Tangent;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;1055;3537.448,1996.927;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;896;1221.99,546.1744;Inherit;True;Property;_Occlusion6;Occlusion 6;54;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;f073d69c92cf03d4b837236064595ff3;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;616;-1923.716,5355.101;Inherit;False;Property;_NormalStrength4;Normal Strength 4;33;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;987;-334.8781,263.4288;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;714;-1700.177,1054.458;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;615;-1349.637,5262.154;Inherit;False;Property;_NormalStrength3;Normal Strength 3;23;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1310;2581.556,-103.3694;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1255;3329.804,2743.478;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;674;-5943.371,1281.308;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ColorNode;1256;4005.743,2926.336;Inherit;False;Property;_FadeColor;Fade Color;63;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.6415094,0.6415094,0.6415094,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;365;-4462.279,-2596.79;Inherit;True;Property;_TextureSample11;Texture Sample 11;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;107;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1081;1875.641,2845.172;Inherit;False;Property;_OcclusionStrength6;Occlusion Strength 6;55;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1250;3845.805,918.2674;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.BreakToComponentsNode;1251;4013.396,920.6111;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;947;4291.947,1067.61;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;943;4445.947,1071.61;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1309;2404.323,-110.8432;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdxOpNode;978;-461.3409,-91.91146;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1322;2940.028,74.82275;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;999;-613.1603,257.6197;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;924;4439.947,949.612;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;952;4173.741,95.7477;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1258;3594.805,2781.478;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1316;2594.031,266.0826;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1325;2581.485,76.38158;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;923;1521.663,287.4326;Inherit;True;Property;_TextureSample114;Texture Sample 114;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;950;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;43;-3970.749,-3316.846;Inherit;True;Property;_Albedo2;Albedo 2;10;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;c0a45b109fd65b046936482efba94d21;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ConditionalIfNode;1344;-5034.666,-917.8752;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1323;2229.734,74.66381;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1253;4009.878,1062.417;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.TexturePropertyNode;47;-4020.089,-2352.035;Inherit;True;Property;_Albedo6;Albedo 6;50;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;97d17f5fbbbb20f43b0b696444e5484b;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ConditionalIfNode;1319;2236.983,450.5106;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;498;-4302.064,4362.477;Inherit;True;Property;_Normal6;Normal 6;52;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;f7d983e300c633049b2eb105f4904746;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ConditionalIfNode;1308;2229.806,-105.0862;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdxOpNode;989;-470.1173,248.4024;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;457;-5134.11,-609.0084;Inherit;True;Property;_TextureSample19;Texture Sample 19;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;443;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;572;-633.0422,3720.501;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ParallaxMappingNode;747;-2907.749,140.3448;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DdyOpNode;970;-909.0011,-87.44003;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1031;2339.672,1968.797;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;974;-334.0968,74.03326;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1034;2207.172,2088.05;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1071;1268.148,2601.066;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;109;-4506.356,-2343.757;Inherit;True;Property;_TextureSample4;Texture Sample 4;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;734;-1740.912,-377.1795;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;713;-3532.785,1297.302;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DdxOpNode;1000;-748.4025,327.7443;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;443;-6972.944,-379.6334;Inherit;True;Property;_HeightMap999;HeightMap 999;5;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;b5add4c373ddaf5d88e8b041aaa9f5ca;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ConditionalIfNode;1321;3114.611,-110.6833;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1318;2237.055,270.7596;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;705;-3249.537,845.9556;Inherit;True;Property;_TextureSample69;Texture Sample 69;58;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;754;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;681;-5946.942,1056.995;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1314;2768.55,260.3265;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;654;-5361.546,353.9601;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;653;-5696.917,352.7567;Inherit;True;Property;_TextureSample50;Texture Sample 50;18;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;662;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;913;485.217,83.98105;Inherit;True;Property;_Occlusion3;Occlusion 3;24;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;c43e618f497cb96429438f86915af477;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;503;-4256.537,3393.554;Inherit;True;Property;_Normal2;Normal 2;12;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;8ae71100421dfea42bfa470977e74f79;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;954;478.9416,295.7427;Inherit;True;Property;_TextureSample124;Texture Sample 124;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;945;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ConditionalIfNode;1315;2593.959,445.8337;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1054;3546.78,2106.346;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;549;-1717.099,3698.588;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;373;-1154.222,-3166.969;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1029;1593.828,2224.646;Inherit;False;Property;_Shiny5;Shiny 5;46;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;499;-4032.797,3908.853;Inherit;True;Property;_TextureSample22;Texture Sample 22;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1048;3237.438,2163.944;Inherit;False;Property;_Smooth4;Smooth 4;37;0;Create;True;0;0;0;False;0;False;0.1;0.44;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1317;2411.573,265.0035;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;940;1526.985,545.1722;Inherit;True;Property;_TextureSample119;Texture Sample 119;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;543;-1962.127,4196.438;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;929;765.8996,757.8569;Inherit;True;Property;_TextureSample115;Texture Sample 115;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;906;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;892;-7274.792,-368.1359;Inherit;True;Property;_Height1;Height 1;8;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;None;ee02344ea46b19d4495ca3724c2b98c8;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;905;1239.608,287.2278;Inherit;True;Property;_TextureSample110;Texture Sample 110;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;950;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;449;-5993.389,-590.4927;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;950;1491.263,92.55305;Inherit;True;Property;_TextureSample123;Texture Sample 123;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;911;779.8019,301.4197;Inherit;True;Property;_TextureSample112;Texture Sample 112;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;945;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;638;-5124.829,-168.8449;Inherit;True;Property;_TextureSample44;Texture Sample 44;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;443;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;956;481.3713,760.6459;Inherit;True;Property;_TextureSample125;Texture Sample 125;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;906;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;560;-624.4751,3947.914;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;126;-474.8697,-1906.209;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;673;-5680.813,837.0472;Inherit;True;Property;_TextureSample57;Texture Sample 57;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;678;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1040;1289.43,2224.754;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;426;-1399.253,-2669.121;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1249;4014.567,761.2252;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.BreakToComponentsNode;1327;2422.369,-260.8971;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;934;789.8869,-215.5443;Inherit;True;Property;_TextureSample118;Texture Sample 118;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;946;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;536;-868.277,4421.353;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;922;485.6164,-206.0123;Inherit;True;Property;_TextureSample113;Texture Sample 113;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;946;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;946;778.4968,-428.1335;Inherit;True;Property;_TextureSample122;Texture Sample 122;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;687;-1737.346,-152.8666;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;933;3606.243,-631.0444;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1326;2255.924,-269.2433;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;361;-4756.464,-3104.221;Inherit;True;Property;_TextureSample7;Texture Sample 7;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;105;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1069;1420.241,2604.283;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;679;-5339.73,1054.101;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;945;763.5129,83.02914;Inherit;True;Property;_TextureSample121;Texture Sample 121;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;703;-2269.44,1277.755;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1340;-5220.904,-923.4819;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1320;2940.099,-104.9272;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;613;-1924.961,5266.924;Inherit;False;Property;_NormalStrength1;Normal Strength 1;3;0;Create;True;0;0;0;False;0;False;1;0.757;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;496;-920.439,5068.849;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;106;-3713.262,-3322.887;Inherit;True;Property;_TextureSample1;Texture Sample 1;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;495;-1179.777,3938.808;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ParallaxMappingNode;657;-6621.318,597.8194;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DdxOpNode;1002;-745.4132,169.3139;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;377;-1407.987,-2942.224;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;458;-5721.549,-594.5901;Inherit;True;Property;_TextureSample20;Texture Sample 20;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;443;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DdxOpNode;977;-464.3292,-18.63197;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;556;-1708.532,3926;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1077;1830.641,2641.174;Inherit;False;Property;_OcclusionStrength2;Occlusion Strength 2;15;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;992;-920.2697,340.5883;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;719;-3536.356,1072.989;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;552;-1442.109,3936.143;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;693;-3954.385,339.367;Inherit;True;Property;_Height5;Height 5;48;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;48d5da9476be181878c0de6e31565719;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;668;-6316.257,846.6142;Inherit;True;Property;_TextureSample54;Texture Sample 54;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;678;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;672;-5671.532,1277.211;Inherit;True;Property;_TextureSample56;Texture Sample 56;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;678;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;930;1261.523,-215.0624;Inherit;True;Property;_TextureSample116;Texture Sample 116;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;932;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;904;1562.217,-203.1573;Inherit;True;Property;_TextureSample109;Texture Sample 109;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;932;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;901;491.5041,552.9474;Inherit;True;Property;_Occlusion5;Occlusion 5;44;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;904abe3a0a0047448aaf87399172740a;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ParallaxMappingNode;667;-6608.786,857.7969;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;680;-5675.102,1052.898;Inherit;True;Property;_TextureSample59;Texture Sample 59;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;678;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;910;4685.546,-144.6283;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;553;-1178.362,3472.81;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ParallaxMappingNode;677;-4766.896,1055.116;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;580;-1139.615,4186.796;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;716;-2608.383,1052.239;Inherit;True;Property;_TextureSample74;Texture Sample 74;58;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;754;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;376;-1401.662,-3183.808;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ParallaxMappingNode;717;-2880.223,1056.336;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;683;-6603.075,1073.647;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1051;3679.281,1987.094;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;658;-6328.79,586.6367;Inherit;True;Property;_TextureSample52;Texture Sample 52;18;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;662;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;655;-5109.479,338.3384;Inherit;True;Property;_TextureSample51;Texture Sample 51;18;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;662;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;617;-1630.662,5358.38;Inherit;False;Property;_NormalStrength5;Normal Strength 5;43;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;584;-4734.166,3600.757;Inherit;True;Property;_TextureSample37;Texture Sample 37;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;587;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DdxOpNode;976;-464.3292,66.52008;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;744;-2291.256,577.6144;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;368;-4760.709,-2137.564;Inherit;True;Property;_TextureSample14;Texture Sample 14;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;109;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;931;4422.757,335.5048;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;985;-332.3722,178.2773;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1036;1444.43,1990.757;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;684;-5093.375,822.6288;Inherit;True;Property;_TextureSample61;Texture Sample 61;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;678;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;384;-625.4656,-3154.161;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;908;3865.239,-629.8723;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1033;2339.672,2088.05;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;639;-4804.064,-152.208;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DdxOpNode;983;-757.8693,-11.64369;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;135;-688.4127,-1784.698;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ParallaxMappingNode;637;-5376.895,-153.2232;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;688;-2058.109,-169.5035;Inherit;True;Property;_TextureSample63;Texture Sample 63;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;740;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;750;-2626.627,576.4108;Inherit;True;Property;_TextureSample88;Texture Sample 88;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;693;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;675;-6306.975,1286.778;Inherit;True;Property;_TextureSample58;Texture Sample 58;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;678;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1027;1594.828,2131.647;Inherit;False;Property;_Shiny3;Shiny 3;26;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;108;-3750.817,-2805.656;Inherit;True;Property;_TextureSample3;Texture Sample 3;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;133;-681.4127,-1900.698;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;900;1215.006,752.2778;Inherit;True;Property;_TextureSample108;Texture Sample 108;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;940;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1065;2168.39,2827.454;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;972;-916.5138,75.35016;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;576;-1551.046,4877.902;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;707;-2017.374,1262.134;Inherit;True;Property;_TextureSample70;Texture Sample 70;58;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;754;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;416;-1150.236,-2429.364;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DdxOpNode;994;-1050.502,333.0754;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1078;1570.639,2745.173;Inherit;False;Property;_OcclusionStrength3;Occlusion Strength 3;25;0;Create;True;0;0;0;False;0;False;0.1;0.86;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;997;-610.6554,172.4682;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;433;-835.7376,-2679.934;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;712;-3240.256,1286.119;Inherit;True;Property;_TextureSample73;Texture Sample 73;58;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;754;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;564;-5042.681,4576.947;Inherit;True;Property;_TextureSample33;Texture Sample 33;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;504;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;678;-6977.462,1043.187;Inherit;True;Property;_Height3;Height 3;28;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;0bcd6d7ff60ab6e4981683a3351a46c1;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;646;-5974.469,141.0034;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;927;4393.993,-617.0643;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;727;-2319.458,-594.0455;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;585;-920.605,5178.268;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;588;-572.8381,4447.792;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;420;-60.18415,-3383.64;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ParallaxMappingNode;749;-2300.538,137.4507;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;685;-5087.664,1038.479;Inherit;True;Property;_TextureSample62;Texture Sample 62;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;678;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;551;-1395.179,4875.179;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;535;-1437.36,3471.637;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;720;-2026.655,821.9703;Inherit;True;Property;_TextureSample76;Texture Sample 76;58;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;754;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;374;-1144.24,-3405.554;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ParallaxMappingNode;722;-1721.992,354.3167;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;939;3869.225,107.7328;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;665;-4763.328,1279.429;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;127;-333.0355,-1916.042;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ParallaxMappingNode;701;-1705.887,838.6072;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;733;-2061.68,-393.8165;Inherit;True;Property;_TextureSample82;Texture Sample 82;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;740;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;644;-6630.601,157.6559;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;735;-3573.52,-134.3354;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;548;-1188.343,3711.396;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ParallaxMappingNode;652;-5968.758,356.8541;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;915;3859.243,346.3178;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;425;-1140.254,-2667.949;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ParallaxMappingNode;628;-5987.678,-374.6422;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;561;-4309.047,4568.58;Inherit;True;Property;_TextureSample32;Texture Sample 32;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;539;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1032;2192.578,2213.928;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;973;-326.5841,-88.75741;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;742;-1727.702,138.4661;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;728;-2067.391,-609.6669;Inherit;True;Property;_TextureSample79;Texture Sample 79;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;740;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;459;-4813.342,-592.3714;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;663;-7305.754,1085.024;Float;False;Property;_HeightParallax3;Height Parallax 3;29;0;Create;True;0;0;0;False;0;False;0;0;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;626;-6643.81,-357.9899;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode;920;1240.206,79.09408;Inherit;True;Property;_Occlusion4;Occlusion 4;34;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;0db7eaa826100804c98ac7de7aa42dbe;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ParallaxMappingNode;698;-3558.171,372.8479;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;364;-4763.138,-2602.467;Inherit;True;Property;_TextureSample10;Texture Sample 10;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;107;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;686;-4279.77,-347.2719;Float;False;Property;_HeightParallax4;Height Parallax 4;39;0;Create;True;0;0;0;False;0;False;0;0.01;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;105;-4463.584,-3326.342;Inherit;True;Property;_TextureSample0;Texture Sample 0;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;959;4432.739,96.91885;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;692;-2926.669,-591.1513;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;385;-879.2327,-2929.416;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;710;-2614.094,836.3886;Inherit;True;Property;_TextureSample72;Texture Sample 72;58;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;754;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;428;-57.96418,-2427.369;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;645;-6338.072,146.4731;Inherit;True;Property;_TextureSample46;Texture Sample 46;18;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;662;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;542;-610.8562,4199.605;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DdxOpNode;968;-1046.746,67.83698;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;421;-319.1825,-3384.812;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;375;-1145.655,-2939.559;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1046;3194.438,2045.945;Inherit;False;Property;_Smooth2;Smooth 2;17;0;Create;True;0;0;0;False;0;False;0.1;1.06;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;696;-2902.038,356.1955;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode;965;486.7912,-407.5963;Inherit;True;Property;_Occlusion1;Occlusion 1;4;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;9fd8b2202bbe9c94eb3313c3f871bc03;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;936;3610.228,106.5607;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;998;-618.1691,335.2575;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;718;-3243.826,1061.806;Inherit;True;Property;_TextureSample75;Texture Sample 75;58;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;754;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DdxOpNode;967;-1046.746,-17.31507;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;649;-5115.189,122.4878;Inherit;True;Property;_TextureSample48;Texture Sample 48;18;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;662;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;725;-2898.467,580.5085;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;363;-3679.863,-3101.366;Inherit;True;Property;_TextureSample9;Texture Sample 9;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;106;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;944;4295.947,945.6119;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;429;-578.1536,-2212.767;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DdyOpNode;975;-329.089,-3.605106;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;635;-5984.106,-150.3292;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;676;-6599.504,1297.961;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;715;-2273.011,1053.442;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;697;-3265.641,361.6651;Inherit;True;Property;_TextureSample66;Texture Sample 66;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;693;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;129;-333.0365,-1796.79;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;582;-874.6029,4662.937;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1070;1269.242,2716.281;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;660;-5693.347,577.0695;Inherit;True;Property;_TextureSample53;Texture Sample 53;18;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;662;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1076;1552.639,2645.174;Inherit;False;Property;_OcclusionStrength1;Occlusion Strength 1;5;0;Create;True;0;0;0;False;0;False;0.1;2.36;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1049;2933.436,2242.943;Inherit;False;Property;_Smooth5;Smooth 5;47;0;Create;True;0;0;0;False;0;False;0.1;0.21;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;729;-3577.091,-358.6485;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DdyOpNode;993;-915.2609,262.9512;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;941;1524.64,763.436;Inherit;True;Property;_TextureSample120;Texture Sample 120;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;940;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DdxOpNode;995;-1050.502,247.9244;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;721;-2020.944,1037.821;Inherit;True;Property;_TextureSample77;Texture Sample 77;58;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;754;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenPosInputsNode;1260;2890.002,2723.404;Float;False;1;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;647;-5702.628,136.906;Inherit;True;Property;_TextureSample47;Texture Sample 47;18;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;662;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;569;-1388.856,4981.455;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;559;-1947.416,3486.874;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;700;-2042.759,337.6798;Inherit;True;Property;_TextureSample68;Texture Sample 68;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;693;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1025;1576.828,2031.648;Inherit;False;Property;_Shiny1;Shiny 1;6;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.DdxOpNode;996;-1047.514,174.645;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;723;-3554.6,597.1608;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;538;-629.1082,5080.268;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ParallaxMappingNode;702;-1696.61,1278.771;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;918;4175.318,318.6657;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;928;4130.246,-153.7342;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;575;-774.6029,5077.017;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;430;-305.4044,-2444.208;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;438;-306.9815,-2667.127;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;898;4949.294,-607.9583;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1045;2916.436,2049.945;Inherit;False;Property;_Smooth1;Smooth 1;7;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;446;-6649.521,-573.8403;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;709;-2604.812,1276.552;Inherit;True;Property;_TextureSample71;Texture Sample 71;58;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;754;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;632;-4807.632,-376.5209;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;570;-880.4801,3703.664;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DdxOpNode;988;-470.1183,333.5529;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;107;-4478.568,-2815.18;Inherit;True;Property;_TextureSample2;Texture Sample 2;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;902;4939.312,-369.373;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;568;-3999.419,4579.737;Inherit;True;Property;_TextureSample34;Texture Sample 34;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;539;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;739;-2645.548,-155.0853;Inherit;True;Property;_TextureSample85;Texture Sample 85;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;740;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;650;-6624.89,373.5065;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;362;-4452.194,-3113.753;Inherit;True;Property;_TextureSample8;Texture Sample 8;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;105;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DdyOpNode;980;-627.6359,81.02155;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;614;-1628.474,5262.154;Inherit;False;Property;_NormalStrength2;Normal Strength 2;13;0;Create;True;0;0;0;False;0;False;1;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;699;-2048.47,121.8292;Inherit;True;Property;_TextureSample67;Texture Sample 67;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;693;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1058;2631.944,2005.837;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;932;1528.818,-424.6784;Inherit;True;Property;_TextureSample117;Texture Sample 117;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;417;-61.59919,-2917.645;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;919;4951.514,348.3127;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;422;-317.6065,-3161.894;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;565;-1964.536,3681.749;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1286;-2671.67,-3088.934;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;691;-2654.829,-595.2487;Inherit;True;Property;_TextureSample64;Texture Sample 64;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;740;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;937;3611.805,329.4787;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;661;-4794.42,139.1247;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;736;-3280.99,-145.5182;Inherit;True;Property;_TextureSample83;Texture Sample 83;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;740;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;505;-4284.447,4103.527;Inherit;True;Property;_TextureSample25;Texture Sample 25;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;499;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DdxOpNode;966;-1043.757,-90.59481;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ParallaxMappingNode;669;-5952.654,841.1446;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DdxOpNode;982;-757.8693,73.50787;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1259;2812.805,2963.478;Inherit;False;Property;_FadeOffset;Fade Offset;61;0;Create;True;1;Fade;0;0;False;0;False;0.5;2.61;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;926;4691.871,-386.2122;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;431;-840.4866,-2215.432;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;573;-1398.614,4185.625;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;566;-882.0551,3480.743;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ParallaxMappingNode;704;-3542.067,857.1382;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ClampOpNode;1261;3854.804,2802.478;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1080;1569.639,2838.172;Inherit;False;Property;_OcclusionStrength5;Occlusion Strength 5;45;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;711;-2876.652,1280.65;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexturePropertyNode;507;-4283.849,3895.394;Inherit;True;Property;_Normal4;Normal 4;32;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;8ac5011d0c027884c9b3a0fc68382066;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ConditionalIfNode;1338;-5386.295,-923.78;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;753;-2313.747,-378.1949;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1336;-5029.089,-1115.353;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;656;-4788.71,354.9753;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;916;4697.747,573.0578;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1330;-5357.472,-1277.182;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode;463;-7333.955,-456.917;Float;False;Property;_HeightParallax1;Height Parallax 1;9;0;Create;True;0;0;0;False;0;False;0;0.0747;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;662;-7021.103,340.0256;Inherit;True;Property;_Height2;Height 2;18;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;e9f0beb985338621a8cd6be88de9115f;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;695;-2630.198,352.0981;Inherit;True;Property;_TextureSample65;Texture Sample 65;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;693;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;631;-5128.399,-393.1578;Inherit;True;Property;_TextureSample41;Texture Sample 41;5;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;443;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;110;-3715.095,-2353.037;Inherit;True;Property;_TextureSample5;Texture Sample 5;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;557;-1557.948,4981.029;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1329;-5191.028,-1268.836;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;746;-3271.352,145.8145;Inherit;True;Property;_TextureSample86;Texture Sample 86;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;693;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;388;-615.4847,-3392.746;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;670;-5084.094,1262.792;Inherit;True;Property;_TextureSample55;Texture Sample 55;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;678;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;953;3605.479,571.0626;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;909;4702.496,108.5549;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;533;-1397.037,4408.544;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1348;-5383.591,-1113.024;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;897;4134.995,-618.2362;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1064;2315.484,2582.323;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;547;-1403.363,4650.128;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ParallaxMappingNode;630;-5380.467,-377.5362;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;579;-623.0591,3481.916;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;726;-4239.035,1084.366;Float;False;Property;_HeightParallax6;Height Parallax 6;59;0;Create;True;0;0;0;False;0;False;0;0.005;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;694;-2294.826,353.3015;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DdyOpNode;979;-620.1232,-81.76888;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;751;-2635.908,136.2474;Inherit;True;Property;_TextureSample89;Texture Sample 89;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;693;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1039;1436.436,2228.754;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1035;2197.84,1978.63;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;418;-1397.676,-2446.203;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;423;-1404.002,-2204.619;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1073;1265.242,2838.28;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;44;-4756.863,-2814.228;Inherit;True;Property;_Albedo3;Albedo 3;20;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;d4193c885fab53849a003d859b9fd170;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.WireNode;938;3863.824,-163.8772;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;958;1271.331,-418.6373;Inherit;True;Property;_Occlusion2;Occlusion 2;14;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;aacaf9e80a8410a498b89b7012536647;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;360;-3980.557,-3113.271;Inherit;True;Property;_TextureSample6;Texture Sample 6;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;106;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;690;-3582.802,-574.499;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1346;-5213.474,-1116.283;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;912;4960.081,575.7228;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;555;-5032.548,4369.248;Inherit;True;Property;_Normal5;Normal 5;42;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;7ba1d8f065cc0624cbe9f611dfad9839;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ConditionalIfNode;1300;-2303.773,-2716.364;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1262;4441.763,2851.668;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;367;-3720.417,-2610.777;Inherit;True;Property;_TextureSample13;Texture Sample 13;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;108;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1037;1293.43,2102.756;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;136;-836.4127,-1666.699;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;682;-6310.546,1062.465;Inherit;True;Property;_TextureSample60;Texture Sample 60;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;678;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ParallaxMappingNode;689;-2310.176,-153.8818;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;427;-586.7208,-2440.177;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ParallaxMappingNode;745;-3563.882,156.9972;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1303;-2997.302,-3254.808;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.WireNode;957;3867.809,573.7277;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;730;-3284.561,-369.8311;Inherit;True;Property;_TextureSample80;Texture Sample 80;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;740;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;754;-3932.57,1039.508;Inherit;True;Property;_Height6;Height 6;58;2;[NoScaleOffset];[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;3c450cff8f4a1405da9cc1fa98f04f3c;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;FLOAT2;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DdxOpNode;1001;-748.4015,242.5933;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1067;2182.983,2701.575;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1289;-3023.42,-3090.651;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ParallaxMappingNode;671;-5345.442,838.2505;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1050;3239.438,2249.943;Inherit;False;Property;_Smooth6;Smooth 6;57;0;Create;True;0;0;0;False;0;False;0.1;0.2;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;371;-3717.44,-2134.774;Inherit;True;Property;_TextureSample17;Texture Sample 17;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;110;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;577;-1149.597,4425.383;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;366;-4002.472,-2610.982;Inherit;True;Property;_TextureSample12;Texture Sample 12;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;108;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ConditionalIfNode;1298;-2484.676,-2725.238;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1305;-2830.857,-3246.462;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.ConditionalIfNode;1284;-2671.741,-2909.183;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1288;-2848.903,-3096.408;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;545;-5037.263,3401.238;Inherit;True;Property;_Normal1;Normal 1;2;3;[NoScaleOffset];[Normal];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;86d916eaa43f47148959f0d9fb5b5cf1;True;bump;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ConditionalIfNode;1285;-2497.148,-3094.69;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1290;-2313.198,-2910.742;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1291;-2138.615,-3096.248;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1292;-2313.127,-3090.492;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1293;-3016.243,-2535.054;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1294;-3016.171,-2714.805;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1295;-2841.653,-2720.561;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1287;-3023.492,-2910.901;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1296;-2659.195,-2719.482;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;583;-1970.861,3923.334;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;914;3601.494,-166.5423;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1301;-2303.843,-2536.613;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1372;-2774.049,4154.342;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;134;-832.4127,-1788.698;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1299;-2129.26,-2722.12;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;960;3855.257,-391.2871;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ParallaxMappingNode;643;-5357.975,578.273;Inherit;False;Normal;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1373;-3120.23,3633.118;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.ConditionalIfNode;1297;-2659.266,-2539.731;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1374;-3286.675,3624.772;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.ConditionalIfNode;1376;-2786.521,3784.89;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1377;-3312.865,3968.679;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1378;-2602.571,3968.838;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1379;-2427.988,3783.332;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1380;-2602.5,3789.088;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;554;-4744.251,4117.719;Inherit;True;Property;_TextureSample31;Texture Sample 31;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;497;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ConditionalIfNode;1375;-2961.114,3970.397;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1382;-3305.544,4164.775;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;509;-886.8041,3945.249;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1384;-2948.568,4160.098;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1386;-2593.146,4163.216;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;540;-5045.11,4112.042;Inherit;True;Property;_TextureSample29;Texture Sample 29;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;497;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;497;-4760.54,3899.33;Inherit;True;Property;_TextureSample21;Texture Sample 21;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ConditionalIfNode;1383;-3131.026,4159.019;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1385;-2418.633,4157.46;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;571;-4262.534,3601.239;Inherit;True;Property;_TextureSample35;Texture Sample 35;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;544;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ConditionalIfNode;1381;-3305.616,4344.526;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;544;-3995.241,3391.623;Inherit;True;Property;_TextureSample30;Texture Sample 30;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ConditionalIfNode;1391;-2948.639,4339.849;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1390;-3312.793,3788.929;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1389;-3138.276,3783.172;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1388;-2961.043,3790.646;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1387;-2593.216,4342.967;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;587;-4745.556,3388.169;Inherit;True;Property;_TextureSample38;Texture Sample 38;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;500;-3961.842,3613.144;Inherit;True;Property;_TextureSample23;Texture Sample 23;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;544;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;578;-5038.436,3610.289;Inherit;True;Property;_TextureSample36;Texture Sample 36;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Instance;587;Derivative;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1;1482.389,3872.617;Half;False;True;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;uTerrains_Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;19;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;6;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;False;False;True;1;LightMode=UniversalForward;False;False;0;Hidden/InternalErrorShader;0;0;Standard;40;Workflow;0;637838400787734890;Surface;0;637838607566779460;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;0;Fragment Normal Space,InvertActionOnDeselection;0;637838340752636060;Transmission;0;0;  Transmission Shadow;0.5,False,-1;0;Translucency;0;0;  Translucency Strength;1,False,-1;0;  Normal Distortion;0.5,False,-1;0;  Scattering;2,False,-1;0;  Direct;0.9,False,-1;0;  Ambient;0.1,False,-1;0;  Shadow;0.5,False,-1;0;Cast Shadows;1;0;  Use Shadow Threshold;1;637837049334647640;Receive Shadows;1;0;GPU Instancing;1;0;LOD CrossFade;1;637838598098262670;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;DOTS Instancing;0;0;Tessellation;0;637839936484844920;  Phong;1;637838398215314040;  Strength;1,True,-14;637838611146497990;  Type;1;637836364302939060;  Tess;5,True,-15;637838610927866090;  Min;25,True,-16;637838611006922130;  Max;25,True,-17;637838611072956620;  Edge Length;16,True,396;0;  Max Displacement;25,True,459;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;637838337124132950;Debug Display;0;0;Clear Coat;0;0;0;10;False;True;True;True;True;True;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;-999.5814,-3904.891;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;0;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;9;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;True;4;d3d11;glcore;gles;gles3;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;5;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Universal2D;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;3;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;8;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;True;4;d3d11;glcore;gles;gles3;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;4;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;6;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=DepthNormals;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;7;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;False;False;True;1;LightMode=UniversalGBuffer;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
WireConnection;594;0;593;0
WireConnection;602;0;601;0
WireConnection;372;0;343;0
WireConnection;609;0;602;2
WireConnection;595;0;594;0
WireConnection;595;1;592;0
WireConnection;607;0;602;1
WireConnection;607;1;372;0
WireConnection;610;0;609;0
WireConnection;610;1;372;0
WireConnection;606;0;602;0
WireConnection;606;1;372;2
WireConnection;381;0;610;0
WireConnection;381;1;372;1
WireConnection;379;0;372;1
WireConnection;379;1;606;0
WireConnection;1270;0;113;3
WireConnection;1270;2;379;0
WireConnection;601;0;593;0
WireConnection;597;0;595;0
WireConnection;1264;0;113;1
WireConnection;1264;2;379;0
WireConnection;1267;0;113;2
WireConnection;1267;2;379;0
WireConnection;1265;0;113;1
WireConnection;1265;2;380;0
WireConnection;1269;0;113;2
WireConnection;1269;2;381;0
WireConnection;1268;0;113;2
WireConnection;1268;2;380;0
WireConnection;598;0;597;0
WireConnection;598;1;597;1
WireConnection;598;2;597;2
WireConnection;1266;0;113;1
WireConnection;1266;2;381;0
WireConnection;1038;0;1025;0
WireConnection;1038;1;903;0
WireConnection;404;0;1268;0
WireConnection;404;1;486;0
WireConnection;403;0;485;0
WireConnection;403;1;1266;0
WireConnection;393;0;1267;0
WireConnection;393;1;486;0
WireConnection;405;0;1269;0
WireConnection;405;1;486;0
WireConnection;599;0;598;0
WireConnection;599;1;600;0
WireConnection;380;0;607;0
WireConnection;380;1;372;2
WireConnection;1272;0;113;3
WireConnection;1272;2;381;0
WireConnection;392;0;1279;0
WireConnection;392;1;490;0
WireConnection;400;0;1276;0
WireConnection;400;1;489;0
WireConnection;407;0;1272;0
WireConnection;407;1;487;0
WireConnection;399;0;1270;0
WireConnection;399;1;487;0
WireConnection;1274;0;113;4
WireConnection;1274;2;380;0
WireConnection;1273;0;113;4
WireConnection;1273;2;379;0
WireConnection;390;0;1264;0
WireConnection;390;1;485;0
WireConnection;1275;0;113;4
WireConnection;1275;2;381;0
WireConnection;1254;0;596;0
WireConnection;382;0;1254;0
WireConnection;1276;0;114;1
WireConnection;1276;2;379;0
WireConnection;408;0;1274;0
WireConnection;408;1;488;0
WireConnection;1271;0;113;3
WireConnection;1271;2;380;0
WireConnection;406;0;1271;0
WireConnection;406;1;487;0
WireConnection;596;0;595;0
WireConnection;596;1;599;0
WireConnection;397;0;1273;0
WireConnection;397;1;488;0
WireConnection;409;0;1275;0
WireConnection;409;1;488;0
WireConnection;410;0;1277;0
WireConnection;410;1;489;0
WireConnection;1279;0;114;2
WireConnection;1279;2;379;0
WireConnection;411;0;1278;0
WireConnection;411;1;489;0
WireConnection;1281;0;114;2
WireConnection;1281;2;381;0
WireConnection;1277;0;114;1
WireConnection;1277;2;380;0
WireConnection;1280;0;114;2
WireConnection;1280;2;380;0
WireConnection;413;0;1281;0
WireConnection;413;1;490;0
WireConnection;137;0;114;2
WireConnection;137;1;428;0
WireConnection;370;1;714;0
WireConnection;370;3;989;0
WireConnection;370;4;987;0
WireConnection;370;7;42;1
WireConnection;1313;0;1327;1
WireConnection;1313;2;900;1
WireConnection;412;0;1280;0
WireConnection;412;1;490;0
WireConnection;1278;0;114;1
WireConnection;1278;2;381;0
WireConnection;402;0;1265;0
WireConnection;402;1;485;0
WireConnection;1061;0;1048;0
WireConnection;1061;1;924;0
WireConnection;629;1;628;0
WireConnection;629;7;892;1
WireConnection;558;0;114;2
WireConnection;558;1;588;0
WireConnection;1312;0;1327;1
WireConnection;1312;2;940;1
WireConnection;738;1;690;0
WireConnection;738;7;892;1
WireConnection;1074;0;1079;0
WireConnection;1074;1;924;0
WireConnection;743;0;744;0
WireConnection;743;1;748;1
WireConnection;743;2;741;0
WireConnection;743;3;464;0
WireConnection;389;0;385;0
WireConnection;534;0;567;0
WireConnection;534;1;589;0
WireConnection;732;1;731;0
WireConnection;732;7;892;1
WireConnection;432;0;433;0
WireConnection;432;1;434;0
WireConnection;546;0;582;0
WireConnection;130;0;129;0
WireConnection;130;1;137;0
WireConnection;589;0;563;0
WireConnection;504;0;555;0
WireConnection;504;1;742;0
WireConnection;504;3;1002;0
WireConnection;504;4;997;0
WireConnection;504;5;617;0
WireConnection;504;7;545;1
WireConnection;1059;0;1050;0
WireConnection;1059;1;943;0
WireConnection;453;1;446;0
WireConnection;453;7;892;1
WireConnection;1060;0;1049;0
WireConnection;1060;1;947;0
WireConnection;437;0;438;0
WireConnection;437;1;430;0
WireConnection;651;1;650;0
WireConnection;651;7;892;1
WireConnection;921;0;927;0
WireConnection;921;1;961;0
WireConnection;1068;0;1071;0
WireConnection;1068;1;1069;0
WireConnection;387;0;1286;0
WireConnection;387;1;382;0
WireConnection;550;0;1383;0
WireConnection;550;1;382;1
WireConnection;664;0;671;0
WireConnection;664;1;684;1
WireConnection;664;2;663;0
WireConnection;664;3;464;0
WireConnection;419;0;1290;0
WireConnection;419;1;382;2
WireConnection;659;0;657;0
WireConnection;659;1;658;1
WireConnection;659;2;640;0
WireConnection;659;3;464;0
WireConnection;737;0;735;0
WireConnection;737;1;736;1
WireConnection;737;2;686;0
WireConnection;737;3;464;0
WireConnection;424;0;423;0
WireConnection;132;0;113;1
WireConnection;132;1;373;0
WireConnection;648;0;646;0
WireConnection;648;1;647;1
WireConnection;648;2;640;0
WireConnection;648;3;464;0
WireConnection;1311;0;1327;1
WireConnection;1311;2;941;1
WireConnection;641;0;643;0
WireConnection;641;1;642;1
WireConnection;641;2;640;0
WireConnection;641;3;464;0
WireConnection;752;0;727;0
WireConnection;752;1;728;1
WireConnection;752;2;686;0
WireConnection;752;3;464;0
WireConnection;1066;0;1067;0
WireConnection;1066;1;1073;0
WireConnection;942;0;113;2
WireConnection;942;1;1249;0
WireConnection;895;0;1313;0
WireConnection;895;1;382;1
WireConnection;567;0;543;0
WireConnection;567;1;550;0
WireConnection;386;0;1285;0
WireConnection;386;1;382;1
WireConnection;990;0;701;0
WireConnection;984;0;661;0
WireConnection;1252;0;931;0
WireConnection;539;0;498;0
WireConnection;539;1;701;0
WireConnection;539;3;990;0
WireConnection;539;4;985;0
WireConnection;539;5;618;0
WireConnection;539;7;545;1
WireConnection;369;1;743;0
WireConnection;369;3;1000;0
WireConnection;369;4;998;0
WireConnection;369;7;42;1
WireConnection;563;0;1381;0
WireConnection;563;1;382;2
WireConnection;948;0;1309;0
WireConnection;948;1;382;1
WireConnection;964;0;909;0
WireConnection;964;1;895;0
WireConnection;506;1;743;0
WireConnection;506;3;1000;0
WireConnection;506;4;998;0
WireConnection;506;5;617;0
WireConnection;506;7;545;1
WireConnection;415;0;420;0
WireConnection;415;1;417;0
WireConnection;1041;0;1028;0
WireConnection;1041;1;924;0
WireConnection;633;0;403;0
WireConnection;633;1;1348;0
WireConnection;633;2;463;0
WireConnection;633;3;464;0
WireConnection;436;0;435;0
WireConnection;724;1;723;0
WireConnection;724;7;892;1
WireConnection;1052;0;1053;0
WireConnection;1052;1;1059;0
WireConnection;586;0;113;3
WireConnection;586;1;572;0
WireConnection;706;0;704;0
WireConnection;706;1;705;1
WireConnection;706;2;726;0
WireConnection;706;3;464;0
WireConnection;1072;0;1081;0
WireConnection;1072;1;943;0
WireConnection;925;0;1324;0
WireConnection;925;1;382;1
WireConnection;971;0;632;0
WireConnection;435;0;1301;0
WireConnection;435;1;382;2
WireConnection;740;7;892;1
WireConnection;708;0;706;0
WireConnection;708;1;710;1
WireConnection;708;2;726;0
WireConnection;708;3;464;0
WireConnection;634;1;633;0
WireConnection;634;7;892;1
WireConnection;581;0;547;0
WireConnection;1057;0;1047;0
WireConnection;1057;1;944;0
WireConnection;454;0;449;0
WireConnection;454;1;458;1
WireConnection;454;2;463;0
WireConnection;454;3;464;0
WireConnection;906;0;901;0
WireConnection;906;1;742;0
WireConnection;906;3;1002;0
WireConnection;906;4;997;0
WireConnection;906;7;965;1
WireConnection;981;0;656;0
WireConnection;1248;0;960;0
WireConnection;961;0;928;0
WireConnection;917;0;963;0
WireConnection;513;0;585;0
WireConnection;513;1;558;0
WireConnection;562;0;559;0
WireConnection;562;1;565;0
WireConnection;666;0;674;0
WireConnection;666;1;672;1
WireConnection;666;2;663;0
WireConnection;666;3;464;0
WireConnection;748;1;744;0
WireConnection;748;7;892;1
WireConnection;962;0;910;0
WireConnection;1053;0;1054;0
WireConnection;1053;1;1060;0
WireConnection;903;0;113;1
WireConnection;903;1;1248;0
WireConnection;1056;0;1046;0
WireConnection;1056;1;942;0
WireConnection;574;0;1386;0
WireConnection;574;1;382;0
WireConnection;1324;0;1326;1
WireConnection;1324;2;930;1
WireConnection;537;0;1376;0
WireConnection;537;1;382;1
WireConnection;128;0;127;0
WireConnection;128;1;135;0
WireConnection;907;0;1320;0
WireConnection;907;1;382;0
WireConnection;434;0;1298;0
WireConnection;434;1;382;1
WireConnection;508;1;687;0
WireConnection;508;3;994;0
WireConnection;508;4;992;0
WireConnection;508;5;616;0
WireConnection;508;7;545;1
WireConnection;991;0;752;0
WireConnection;963;0;1315;0
WireConnection;963;1;382;2
WireConnection;986;0;702;0
WireConnection;636;1;635;0
WireConnection;636;7;892;1
WireConnection;731;0;729;0
WireConnection;731;1;730;1
WireConnection;731;2;686;0
WireConnection;731;3;464;0
WireConnection;378;0;1289;0
WireConnection;378;1;382;0
WireConnection;642;1;643;0
WireConnection;642;7;892;1
WireConnection;627;1;626;0
WireConnection;627;7;892;1
WireConnection;1055;0;1058;0
WireConnection;1055;1;1056;0
WireConnection;987;0;714;0
WireConnection;714;0;715;0
WireConnection;714;1;721;1
WireConnection;714;2;726;0
WireConnection;714;3;464;0
WireConnection;1310;0;1326;1
WireConnection;1310;2;932;1
WireConnection;1255;0;1260;4
WireConnection;1255;1;1259;0
WireConnection;674;0;676;0
WireConnection;674;1;675;1
WireConnection;674;2;663;0
WireConnection;674;3;464;0
WireConnection;365;1;665;0
WireConnection;365;3;976;0
WireConnection;365;4;974;0
WireConnection;365;7;42;1
WireConnection;1250;0;902;0
WireConnection;1251;0;915;0
WireConnection;947;0;114;1
WireConnection;947;1;1252;0
WireConnection;943;0;114;2
WireConnection;943;1;1253;0
WireConnection;1309;0;1326;0
WireConnection;1309;2;922;1
WireConnection;978;0;664;0
WireConnection;1322;0;1326;2
WireConnection;1322;2;911;1
WireConnection;999;0;722;0
WireConnection;924;0;113;4
WireConnection;924;1;1251;0
WireConnection;952;0;1316;0
WireConnection;952;1;382;0
WireConnection;1258;0;1255;0
WireConnection;1258;1;1257;0
WireConnection;1316;0;1327;0
WireConnection;1316;2;906;1
WireConnection;1325;0;1326;1
WireConnection;1325;2;904;1
WireConnection;923;1;687;0
WireConnection;923;3;994;0
WireConnection;923;4;992;0
WireConnection;923;7;965;1
WireConnection;1344;0;1329;1
WireConnection;1344;2;754;1
WireConnection;1323;0;1326;0
WireConnection;1323;2;934;1
WireConnection;1253;0;919;0
WireConnection;1319;0;1326;3
WireConnection;1319;2;923;1
WireConnection;1308;0;1326;0
WireConnection;1308;2;946;1
WireConnection;989;0;714;0
WireConnection;457;1;454;0
WireConnection;457;7;892;1
WireConnection;572;0;579;0
WireConnection;572;1;560;0
WireConnection;747;0;745;0
WireConnection;747;1;746;1
WireConnection;747;2;741;0
WireConnection;747;3;464;0
WireConnection;970;0;459;0
WireConnection;1031;0;1035;0
WireConnection;1031;1;1037;0
WireConnection;974;0;665;0
WireConnection;1034;0;1031;0
WireConnection;1034;1;1041;0
WireConnection;1071;0;1076;0
WireConnection;1071;1;903;0
WireConnection;109;0;46;0
WireConnection;109;1;742;0
WireConnection;109;3;1002;0
WireConnection;109;4;997;0
WireConnection;109;7;42;1
WireConnection;734;0;753;0
WireConnection;734;1;733;1
WireConnection;734;2;686;0
WireConnection;734;3;464;0
WireConnection;713;0;413;0
WireConnection;713;1;1344;0
WireConnection;713;2;726;0
WireConnection;713;3;464;0
WireConnection;1000;0;743;0
WireConnection;443;0;892;0
WireConnection;443;7;892;1
WireConnection;1321;0;1326;2
WireConnection;1321;2;954;1
WireConnection;1318;0;1326;3
WireConnection;1318;2;950;1
WireConnection;705;1;704;0
WireConnection;705;7;892;1
WireConnection;681;0;683;0
WireConnection;681;1;682;1
WireConnection;681;2;663;0
WireConnection;681;3;464;0
WireConnection;1314;0;1327;0
WireConnection;1314;2;956;1
WireConnection;654;0;652;0
WireConnection;654;1;653;1
WireConnection;654;2;640;0
WireConnection;654;3;464;0
WireConnection;653;1;652;0
WireConnection;653;7;892;1
WireConnection;954;1;677;0
WireConnection;954;3;977;0
WireConnection;954;4;975;0
WireConnection;954;7;965;1
WireConnection;1315;0;1327;0
WireConnection;1315;2;929;1
WireConnection;1054;0;1051;0
WireConnection;1054;1;1061;0
WireConnection;549;0;562;0
WireConnection;549;1;556;0
WireConnection;373;0;374;0
WireConnection;373;1;375;0
WireConnection;499;0;507;0
WireConnection;499;1;752;0
WireConnection;499;3;996;0
WireConnection;499;4;991;0
WireConnection;499;5;616;0
WireConnection;499;7;545;1
WireConnection;1317;0;1326;3
WireConnection;1317;2;905;1
WireConnection;940;0;896;0
WireConnection;940;1;701;0
WireConnection;940;3;990;0
WireConnection;940;4;985;0
WireConnection;940;7;965;1
WireConnection;543;0;1382;0
WireConnection;543;1;382;0
WireConnection;929;1;743;0
WireConnection;929;3;1000;0
WireConnection;929;4;998;0
WireConnection;929;7;965;1
WireConnection;905;1;734;0
WireConnection;905;3;995;0
WireConnection;905;4;993;0
WireConnection;905;7;965;1
WireConnection;449;0;446;0
WireConnection;449;1;453;1
WireConnection;449;2;463;0
WireConnection;449;3;464;0
WireConnection;950;0;920;0
WireConnection;950;1;752;0
WireConnection;950;3;996;0
WireConnection;950;4;991;0
WireConnection;950;7;965;1
WireConnection;911;1;665;0
WireConnection;911;3;976;0
WireConnection;911;4;974;0
WireConnection;911;7;965;1
WireConnection;638;1;637;0
WireConnection;638;7;892;1
WireConnection;956;1;722;0
WireConnection;956;3;1001;0
WireConnection;956;4;999;0
WireConnection;956;7;965;1
WireConnection;560;0;509;0
WireConnection;126;0;132;0
WireConnection;126;1;133;0
WireConnection;673;1;669;0
WireConnection;673;7;892;1
WireConnection;1040;0;1029;0
WireConnection;1040;1;947;0
WireConnection;426;0;1294;0
WireConnection;426;1;382;0
WireConnection;1249;0;921;0
WireConnection;1327;0;114;0
WireConnection;934;1;639;0
WireConnection;934;3;968;0
WireConnection;934;4;972;0
WireConnection;934;7;965;1
WireConnection;536;0;1385;0
WireConnection;536;1;382;1
WireConnection;922;1;632;0
WireConnection;922;3;967;0
WireConnection;922;4;971;0
WireConnection;922;7;965;1
WireConnection;946;0;965;0
WireConnection;946;1;459;0
WireConnection;946;3;966;0
WireConnection;946;4;970;0
WireConnection;946;7;965;1
WireConnection;687;0;689;0
WireConnection;687;1;688;1
WireConnection;687;2;686;0
WireConnection;687;3;464;0
WireConnection;933;0;1308;0
WireConnection;933;1;382;0
WireConnection;1326;0;113;0
WireConnection;361;1;632;0
WireConnection;361;3;967;0
WireConnection;361;4;971;0
WireConnection;361;7;42;1
WireConnection;1069;0;1077;0
WireConnection;1069;1;942;0
WireConnection;679;0;681;0
WireConnection;679;1;680;1
WireConnection;679;2;663;0
WireConnection;679;3;464;0
WireConnection;945;0;913;0
WireConnection;945;1;664;0
WireConnection;945;3;978;0
WireConnection;945;4;973;0
WireConnection;945;7;965;1
WireConnection;703;0;711;0
WireConnection;703;1;709;1
WireConnection;703;2;726;0
WireConnection;703;3;464;0
WireConnection;1340;0;1329;0
WireConnection;1340;2;693;1
WireConnection;1320;0;1326;2
WireConnection;1320;2;945;1
WireConnection;496;0;576;0
WireConnection;496;1;551;0
WireConnection;106;0;43;0
WireConnection;106;1;661;0
WireConnection;106;3;984;0
WireConnection;106;4;979;0
WireConnection;106;7;42;1
WireConnection;495;0;552;0
WireConnection;657;0;405;0
WireConnection;657;1;1346;0
WireConnection;657;2;640;0
WireConnection;657;3;464;0
WireConnection;1002;0;742;0
WireConnection;377;0;1287;0
WireConnection;377;1;382;2
WireConnection;458;1;449;0
WireConnection;458;7;892;1
WireConnection;977;0;677;0
WireConnection;556;0;583;0
WireConnection;992;0;687;0
WireConnection;719;0;412;0
WireConnection;719;1;1344;0
WireConnection;719;2;726;0
WireConnection;719;3;464;0
WireConnection;552;0;1375;0
WireConnection;552;1;382;2
WireConnection;693;7;892;1
WireConnection;668;1;667;0
WireConnection;668;7;892;1
WireConnection;672;1;674;0
WireConnection;672;7;892;1
WireConnection;930;1;656;0
WireConnection;930;3;983;0
WireConnection;930;4;981;0
WireConnection;930;7;965;1
WireConnection;904;1;641;0
WireConnection;904;3;982;0
WireConnection;904;4;980;0
WireConnection;904;7;965;1
WireConnection;667;0;399;0
WireConnection;667;1;1336;0
WireConnection;667;2;663;0
WireConnection;667;3;464;0
WireConnection;680;1;681;0
WireConnection;680;7;892;1
WireConnection;910;0;1322;0
WireConnection;910;1;382;2
WireConnection;553;0;535;0
WireConnection;553;1;537;0
WireConnection;677;0;679;0
WireConnection;677;1;685;1
WireConnection;677;2;663;0
WireConnection;677;3;464;0
WireConnection;580;0;573;0
WireConnection;580;1;533;0
WireConnection;716;1;717;0
WireConnection;716;7;892;1
WireConnection;376;0;1288;0
WireConnection;376;1;382;1
WireConnection;717;0;719;0
WireConnection;717;1;718;1
WireConnection;717;2;726;0
WireConnection;717;3;464;0
WireConnection;683;0;406;0
WireConnection;683;1;1336;0
WireConnection;683;2;663;0
WireConnection;683;3;464;0
WireConnection;1051;0;1055;0
WireConnection;1051;1;1057;0
WireConnection;658;1;657;0
WireConnection;658;7;892;1
WireConnection;655;1;654;0
WireConnection;655;7;892;1
WireConnection;584;1;639;0
WireConnection;584;3;968;0
WireConnection;584;4;972;0
WireConnection;584;5;613;0
WireConnection;584;7;545;1
WireConnection;976;0;665;0
WireConnection;744;0;725;0
WireConnection;744;1;750;1
WireConnection;744;2;741;0
WireConnection;744;3;464;0
WireConnection;368;1;722;0
WireConnection;368;3;1001;0
WireConnection;368;4;999;0
WireConnection;368;7;42;1
WireConnection;931;0;959;0
WireConnection;931;1;917;0
WireConnection;985;0;701;0
WireConnection;1036;0;1026;0
WireConnection;1036;1;942;0
WireConnection;684;1;671;0
WireConnection;684;7;892;1
WireConnection;384;0;388;0
WireConnection;384;1;389;0
WireConnection;908;0;933;0
WireConnection;908;1;948;0
WireConnection;1033;0;1034;0
WireConnection;1033;1;1040;0
WireConnection;639;0;637;0
WireConnection;639;1;638;1
WireConnection;639;2;463;0
WireConnection;639;3;464;0
WireConnection;983;0;656;0
WireConnection;135;0;113;4
WireConnection;135;1;416;0
WireConnection;637;0;635;0
WireConnection;637;1;636;1
WireConnection;637;2;463;0
WireConnection;637;3;464;0
WireConnection;688;1;689;0
WireConnection;688;7;892;1
WireConnection;750;1;725;0
WireConnection;750;7;892;1
WireConnection;675;1;676;0
WireConnection;675;7;892;1
WireConnection;108;0;45;0
WireConnection;108;1;752;0
WireConnection;108;3;996;0
WireConnection;108;4;991;0
WireConnection;108;7;42;1
WireConnection;133;0;113;2
WireConnection;133;1;384;0
WireConnection;900;1;714;0
WireConnection;900;3;989;0
WireConnection;900;4;987;0
WireConnection;900;7;965;1
WireConnection;1065;0;1066;0
WireConnection;1065;1;1072;0
WireConnection;972;0;639;0
WireConnection;576;0;113;1
WireConnection;576;1;549;0
WireConnection;707;1;703;0
WireConnection;707;7;892;1
WireConnection;416;0;425;0
WireConnection;416;1;424;0
WireConnection;994;0;687;0
WireConnection;997;0;742;0
WireConnection;433;0;1296;0
WireConnection;433;1;382;0
WireConnection;712;1;713;0
WireConnection;712;7;892;1
WireConnection;564;1;722;0
WireConnection;564;3;1001;0
WireConnection;564;4;999;0
WireConnection;564;5;617;0
WireConnection;564;7;545;1
WireConnection;678;7;892;1
WireConnection;646;0;644;0
WireConnection;646;1;645;1
WireConnection;646;2;640;0
WireConnection;646;3;464;0
WireConnection;927;0;897;0
WireConnection;927;1;925;0
WireConnection;727;0;692;0
WireConnection;727;1;691;1
WireConnection;727;2;686;0
WireConnection;727;3;464;0
WireConnection;585;0;538;0
WireConnection;585;1;569;0
WireConnection;588;0;542;0
WireConnection;588;1;546;0
WireConnection;420;0;421;0
WireConnection;420;1;422;0
WireConnection;749;0;747;0
WireConnection;749;1;751;1
WireConnection;749;2;741;0
WireConnection;749;3;464;0
WireConnection;685;1;679;0
WireConnection;685;7;892;1
WireConnection;551;0;113;2
WireConnection;551;1;548;0
WireConnection;535;0;1388;0
WireConnection;535;1;382;0
WireConnection;720;1;708;0
WireConnection;720;7;892;1
WireConnection;374;0;378;0
WireConnection;374;1;376;0
WireConnection;722;0;694;0
WireConnection;722;1;700;1
WireConnection;722;2;741;0
WireConnection;722;3;464;0
WireConnection;939;0;936;0
WireConnection;939;1;937;0
WireConnection;665;0;666;0
WireConnection;665;1;670;1
WireConnection;665;2;663;0
WireConnection;665;3;464;0
WireConnection;127;0;126;0
WireConnection;127;1;134;0
WireConnection;701;0;708;0
WireConnection;701;1;720;1
WireConnection;701;2;726;0
WireConnection;701;3;464;0
WireConnection;733;1;753;0
WireConnection;733;7;892;1
WireConnection;644;0;393;0
WireConnection;644;1;1346;0
WireConnection;644;2;640;0
WireConnection;735;0;409;0
WireConnection;735;1;1338;0
WireConnection;735;2;686;0
WireConnection;735;3;464;0
WireConnection;548;0;553;0
WireConnection;548;1;495;0
WireConnection;652;0;650;0
WireConnection;652;1;651;1
WireConnection;652;2;640;0
WireConnection;652;3;464;0
WireConnection;915;0;939;0
WireConnection;915;1;957;0
WireConnection;425;0;426;0
WireConnection;425;1;418;0
WireConnection;628;0;626;0
WireConnection;628;1;627;1
WireConnection;628;2;463;0
WireConnection;628;3;464;0
WireConnection;561;1;714;0
WireConnection;561;3;989;0
WireConnection;561;4;987;0
WireConnection;561;5;618;0
WireConnection;561;7;545;1
WireConnection;1032;0;1033;0
WireConnection;1032;1;1039;0
WireConnection;973;0;664;0
WireConnection;742;0;749;0
WireConnection;742;1;699;1
WireConnection;742;2;741;0
WireConnection;742;3;464;0
WireConnection;728;1;727;0
WireConnection;728;7;892;1
WireConnection;459;0;454;0
WireConnection;459;1;457;1
WireConnection;459;2;463;0
WireConnection;459;3;464;0
WireConnection;626;0;402;0
WireConnection;626;1;1348;0
WireConnection;626;2;463;0
WireConnection;626;3;464;0
WireConnection;698;0;410;0
WireConnection;698;1;1340;0
WireConnection;698;2;741;0
WireConnection;698;3;464;0
WireConnection;364;1;677;0
WireConnection;364;3;977;0
WireConnection;364;4;975;0
WireConnection;364;7;42;1
WireConnection;105;0;42;0
WireConnection;105;1;459;0
WireConnection;105;3;966;0
WireConnection;105;4;970;0
WireConnection;105;7;42;1
WireConnection;959;0;952;0
WireConnection;959;1;918;0
WireConnection;692;0;690;0
WireConnection;692;1;738;1
WireConnection;692;2;686;0
WireConnection;692;3;464;0
WireConnection;385;0;1284;0
WireConnection;385;1;382;2
WireConnection;710;1;706;0
WireConnection;710;7;892;1
WireConnection;428;0;437;0
WireConnection;428;1;436;0
WireConnection;645;1;644;0
WireConnection;645;7;892;1
WireConnection;542;0;574;0
WireConnection;542;1;536;0
WireConnection;968;0;639;0
WireConnection;421;0;1292;0
WireConnection;421;1;382;0
WireConnection;375;0;377;0
WireConnection;696;0;698;0
WireConnection;696;1;697;1
WireConnection;696;2;741;0
WireConnection;696;3;464;0
WireConnection;936;0;1318;0
WireConnection;936;1;382;0
WireConnection;998;0;743;0
WireConnection;718;1;719;0
WireConnection;718;7;892;1
WireConnection;967;0;632;0
WireConnection;649;1;648;0
WireConnection;649;7;892;1
WireConnection;725;0;723;0
WireConnection;725;1;724;1
WireConnection;725;2;741;0
WireConnection;725;3;464;0
WireConnection;363;1;641;0
WireConnection;363;3;982;0
WireConnection;363;4;980;0
WireConnection;363;7;42;1
WireConnection;944;0;113;3
WireConnection;944;1;1250;0
WireConnection;429;0;431;0
WireConnection;975;0;677;0
WireConnection;635;0;633;0
WireConnection;635;1;634;1
WireConnection;635;2;463;0
WireConnection;635;3;464;0
WireConnection;676;0;407;0
WireConnection;676;1;1336;0
WireConnection;676;2;663;0
WireConnection;676;3;464;0
WireConnection;715;0;717;0
WireConnection;715;1;716;1
WireConnection;715;2;726;0
WireConnection;715;3;464;0
WireConnection;697;1;698;0
WireConnection;697;7;892;1
WireConnection;129;0;128;0
WireConnection;129;1;136;0
WireConnection;582;0;1387;0
WireConnection;582;1;382;2
WireConnection;1070;0;1078;0
WireConnection;1070;1;944;0
WireConnection;660;1;659;0
WireConnection;660;7;892;1
WireConnection;729;0;408;0
WireConnection;729;1;1338;0
WireConnection;729;2;686;0
WireConnection;729;3;464;0
WireConnection;993;0;734;0
WireConnection;941;1;702;0
WireConnection;941;3;988;0
WireConnection;941;4;986;0
WireConnection;941;7;965;1
WireConnection;995;0;734;0
WireConnection;721;1;715;0
WireConnection;721;7;892;1
WireConnection;647;1;646;0
WireConnection;647;7;892;1
WireConnection;569;0;114;1
WireConnection;569;1;577;0
WireConnection;559;0;1390;0
WireConnection;559;1;382;0
WireConnection;700;1;694;0
WireConnection;700;7;892;1
WireConnection;996;0;752;0
WireConnection;723;0;411;0
WireConnection;723;1;1340;0
WireConnection;723;2;741;0
WireConnection;723;3;464;0
WireConnection;538;0;575;0
WireConnection;538;1;557;0
WireConnection;702;0;703;0
WireConnection;702;1;707;1
WireConnection;702;2;726;0
WireConnection;702;3;464;0
WireConnection;918;0;1314;0
WireConnection;918;1;382;1
WireConnection;928;0;1325;0
WireConnection;928;1;382;2
WireConnection;575;0;496;0
WireConnection;575;1;586;0
WireConnection;430;0;1299;0
WireConnection;430;1;382;1
WireConnection;438;0;1300;0
WireConnection;438;1;382;0
WireConnection;898;0;907;0
WireConnection;898;1;926;0
WireConnection;446;0;390;0
WireConnection;446;1;1348;0
WireConnection;446;2;463;0
WireConnection;446;3;464;0
WireConnection;709;1;711;0
WireConnection;709;7;892;1
WireConnection;632;0;630;0
WireConnection;632;1;631;1
WireConnection;632;2;463;0
WireConnection;632;3;464;0
WireConnection;570;0;1379;0
WireConnection;570;1;382;1
WireConnection;988;0;702;0
WireConnection;107;0;44;0
WireConnection;107;1;664;0
WireConnection;107;3;978;0
WireConnection;107;4;973;0
WireConnection;107;7;42;1
WireConnection;902;0;898;0
WireConnection;902;1;962;0
WireConnection;568;1;702;0
WireConnection;568;3;988;0
WireConnection;568;4;986;0
WireConnection;568;5;618;0
WireConnection;568;7;545;1
WireConnection;739;1;737;0
WireConnection;739;7;892;1
WireConnection;650;0;404;0
WireConnection;650;1;1346;0
WireConnection;650;2;640;0
WireConnection;650;3;464;0
WireConnection;362;1;639;0
WireConnection;362;3;968;0
WireConnection;362;4;972;0
WireConnection;362;7;42;1
WireConnection;980;0;641;0
WireConnection;699;1;749;0
WireConnection;699;7;892;1
WireConnection;1058;0;1045;0
WireConnection;1058;1;903;0
WireConnection;932;0;958;0
WireConnection;932;1;661;0
WireConnection;932;3;984;0
WireConnection;932;4;979;0
WireConnection;932;7;965;1
WireConnection;417;0;419;0
WireConnection;919;0;964;0
WireConnection;919;1;912;0
WireConnection;422;0;1291;0
WireConnection;422;1;382;1
WireConnection;565;0;1389;0
WireConnection;565;1;382;1
WireConnection;1286;0;1303;1
WireConnection;1286;2;106;0
WireConnection;691;1;692;0
WireConnection;691;7;892;1
WireConnection;937;0;1317;0
WireConnection;937;1;382;1
WireConnection;661;0;648;0
WireConnection;661;1;649;1
WireConnection;661;2;640;0
WireConnection;661;3;464;0
WireConnection;736;1;735;0
WireConnection;736;7;892;1
WireConnection;505;1;734;0
WireConnection;505;3;995;0
WireConnection;505;4;993;0
WireConnection;505;5;616;0
WireConnection;505;7;545;1
WireConnection;966;0;459;0
WireConnection;669;0;667;0
WireConnection;669;1;668;1
WireConnection;669;2;663;0
WireConnection;669;3;464;0
WireConnection;982;0;641;0
WireConnection;926;0;1321;0
WireConnection;926;1;382;1
WireConnection;431;0;1297;0
WireConnection;431;1;382;2
WireConnection;573;0;1384;0
WireConnection;573;1;382;0
WireConnection;566;0;1380;0
WireConnection;566;1;382;0
WireConnection;704;0;392;0
WireConnection;704;1;1344;0
WireConnection;704;2;726;0
WireConnection;704;3;464;0
WireConnection;1261;0;1258;0
WireConnection;711;0;713;0
WireConnection;711;1;712;1
WireConnection;711;2;726;0
WireConnection;711;3;464;0
WireConnection;1338;0;1330;3
WireConnection;1338;2;740;1
WireConnection;753;0;731;0
WireConnection;753;1;732;1
WireConnection;753;2;686;0
WireConnection;753;3;464;0
WireConnection;1336;0;1330;2
WireConnection;1336;2;678;1
WireConnection;656;0;654;0
WireConnection;656;1;655;1
WireConnection;656;2;640;0
WireConnection;656;3;464;0
WireConnection;916;0;1311;0
WireConnection;916;1;382;2
WireConnection;1330;0;113;0
WireConnection;662;7;892;1
WireConnection;695;1;696;0
WireConnection;695;7;892;1
WireConnection;631;1;630;0
WireConnection;631;7;892;1
WireConnection;110;0;47;0
WireConnection;110;1;701;0
WireConnection;110;3;990;0
WireConnection;110;4;985;0
WireConnection;110;7;42;1
WireConnection;557;0;113;4
WireConnection;557;1;534;0
WireConnection;1329;0;114;0
WireConnection;746;1;745;0
WireConnection;746;7;892;1
WireConnection;388;0;387;0
WireConnection;388;1;386;0
WireConnection;670;1;666;0
WireConnection;670;7;892;1
WireConnection;953;0;1319;0
WireConnection;953;1;382;2
WireConnection;909;0;1312;0
WireConnection;909;1;382;0
WireConnection;533;0;1372;0
WireConnection;533;1;382;1
WireConnection;1348;0;1330;0
WireConnection;1348;2;443;1
WireConnection;897;0;1310;0
WireConnection;897;1;382;0
WireConnection;1064;0;1068;0
WireConnection;1064;1;1070;0
WireConnection;547;0;1391;0
WireConnection;547;1;382;2
WireConnection;630;0;628;0
WireConnection;630;1;629;1
WireConnection;630;2;463;0
WireConnection;630;3;464;0
WireConnection;579;0;566;0
WireConnection;579;1;570;0
WireConnection;694;0;696;0
WireConnection;694;1;695;1
WireConnection;694;2;741;0
WireConnection;694;3;464;0
WireConnection;979;0;661;0
WireConnection;751;1;747;0
WireConnection;751;7;892;1
WireConnection;1039;0;1030;0
WireConnection;1039;1;943;0
WireConnection;1035;0;1038;0
WireConnection;1035;1;1036;0
WireConnection;418;0;1295;0
WireConnection;418;1;382;1
WireConnection;423;0;1293;0
WireConnection;423;1;382;2
WireConnection;1073;0;1080;0
WireConnection;1073;1;947;0
WireConnection;938;0;914;0
WireConnection;360;1;656;0
WireConnection;360;3;983;0
WireConnection;360;4;981;0
WireConnection;360;7;42;1
WireConnection;690;0;397;0
WireConnection;690;1;1338;0
WireConnection;690;2;686;0
WireConnection;690;3;464;0
WireConnection;1346;0;1330;1
WireConnection;1346;2;662;1
WireConnection;912;0;916;0
WireConnection;1300;0;1305;1
WireConnection;1300;2;110;0
WireConnection;1262;0;1256;0
WireConnection;1262;1;130;0
WireConnection;1262;2;1261;0
WireConnection;367;1;687;0
WireConnection;367;3;994;0
WireConnection;367;4;992;0
WireConnection;367;7;42;1
WireConnection;1037;0;1027;0
WireConnection;1037;1;944;0
WireConnection;136;0;114;1
WireConnection;136;1;427;0
WireConnection;682;1;683;0
WireConnection;682;7;892;1
WireConnection;689;0;737;0
WireConnection;689;1;739;1
WireConnection;689;2;686;0
WireConnection;689;3;464;0
WireConnection;427;0;432;0
WireConnection;427;1;429;0
WireConnection;745;0;400;0
WireConnection;745;1;1340;0
WireConnection;745;2;741;0
WireConnection;745;3;464;0
WireConnection;1303;0;113;0
WireConnection;957;0;953;0
WireConnection;730;1;729;0
WireConnection;730;7;892;1
WireConnection;754;7;892;1
WireConnection;1001;0;722;0
WireConnection;1067;0;1064;0
WireConnection;1067;1;1074;0
WireConnection;1289;0;1303;0
WireConnection;1289;2;105;0
WireConnection;671;0;669;0
WireConnection;671;1;673;1
WireConnection;671;2;663;0
WireConnection;671;3;464;0
WireConnection;371;1;702;0
WireConnection;371;3;988;0
WireConnection;371;4;986;0
WireConnection;371;7;42;1
WireConnection;577;0;580;0
WireConnection;577;1;581;0
WireConnection;366;1;734;0
WireConnection;366;3;995;0
WireConnection;366;4;993;0
WireConnection;366;7;42;1
WireConnection;1298;0;1305;0
WireConnection;1298;2;368;0
WireConnection;1305;0;114;0
WireConnection;1284;0;1303;1
WireConnection;1284;2;363;0
WireConnection;1288;0;1303;0
WireConnection;1288;2;361;0
WireConnection;1285;0;1303;1
WireConnection;1285;2;360;0
WireConnection;1290;0;1303;2
WireConnection;1290;2;365;0
WireConnection;1291;0;1303;2
WireConnection;1291;2;364;0
WireConnection;1292;0;1303;2
WireConnection;1292;2;107;0
WireConnection;1293;0;1303;3
WireConnection;1293;2;367;0
WireConnection;1294;0;1303;3
WireConnection;1294;2;108;0
WireConnection;1295;0;1303;3
WireConnection;1295;2;366;0
WireConnection;1287;0;1303;0
WireConnection;1287;2;362;0
WireConnection;1296;0;1305;0
WireConnection;1296;2;109;0
WireConnection;583;0;1377;0
WireConnection;583;1;382;2
WireConnection;914;0;1323;0
WireConnection;914;1;382;2
WireConnection;1301;0;1305;1
WireConnection;1301;2;371;0
WireConnection;1372;0;1373;0
WireConnection;1372;2;564;0
WireConnection;134;0;113;3
WireConnection;134;1;415;0
WireConnection;1299;0;1305;1
WireConnection;1299;2;370;0
WireConnection;960;0;908;0
WireConnection;960;1;938;0
WireConnection;643;0;659;0
WireConnection;643;1;660;1
WireConnection;643;2;640;0
WireConnection;643;3;464;0
WireConnection;1373;0;114;0
WireConnection;1297;0;1305;0
WireConnection;1297;2;369;0
WireConnection;1374;0;113;0
WireConnection;1376;0;1374;1
WireConnection;1376;2;571;0
WireConnection;1377;0;1374;0
WireConnection;1377;2;584;0
WireConnection;1378;0;1374;2
WireConnection;1378;2;554;0
WireConnection;1379;0;1374;2
WireConnection;1379;2;540;0
WireConnection;1380;0;1374;2
WireConnection;1380;2;497;0
WireConnection;554;1;665;0
WireConnection;554;3;976;0
WireConnection;554;4;974;0
WireConnection;554;5;615;0
WireConnection;554;7;545;1
WireConnection;1375;0;1374;1
WireConnection;1375;2;500;0
WireConnection;1382;0;1374;3
WireConnection;1382;2;499;0
WireConnection;509;0;1378;0
WireConnection;509;1;382;2
WireConnection;1384;0;1373;0
WireConnection;1384;2;504;0
WireConnection;1386;0;1373;1
WireConnection;1386;2;539;0
WireConnection;540;1;677;0
WireConnection;540;3;977;0
WireConnection;540;4;975;0
WireConnection;540;5;615;0
WireConnection;540;7;545;1
WireConnection;497;0;541;0
WireConnection;497;1;664;0
WireConnection;497;3;978;0
WireConnection;497;4;973;0
WireConnection;497;5;615;0
WireConnection;497;7;545;1
WireConnection;1383;0;1374;3
WireConnection;1383;2;505;0
WireConnection;1385;0;1373;1
WireConnection;1385;2;561;0
WireConnection;571;1;656;0
WireConnection;571;3;983;0
WireConnection;571;4;981;0
WireConnection;571;5;614;0
WireConnection;571;7;545;1
WireConnection;1381;0;1374;3
WireConnection;1381;2;508;0
WireConnection;544;0;503;0
WireConnection;544;1;661;0
WireConnection;544;3;984;0
WireConnection;544;4;979;0
WireConnection;544;5;614;0
WireConnection;544;7;545;1
WireConnection;1391;0;1373;0
WireConnection;1391;2;506;0
WireConnection;1390;0;1374;0
WireConnection;1390;2;587;0
WireConnection;1389;0;1374;0
WireConnection;1389;2;578;0
WireConnection;1388;0;1374;1
WireConnection;1388;2;544;0
WireConnection;1387;0;1373;1
WireConnection;1387;2;568;0
WireConnection;587;0;545;0
WireConnection;587;1;459;0
WireConnection;587;3;966;0
WireConnection;587;4;970;0
WireConnection;587;5;613;0
WireConnection;587;7;545;1
WireConnection;500;1;641;0
WireConnection;500;3;982;0
WireConnection;500;4;980;0
WireConnection;500;5;614;0
WireConnection;500;7;545;1
WireConnection;578;1;632;0
WireConnection;578;3;967;0
WireConnection;578;4;971;0
WireConnection;578;5;613;0
WireConnection;578;7;545;1
WireConnection;1;0;1262;0
WireConnection;1;1;513;0
WireConnection;1;9;1032;0
WireConnection;1;4;1052;0
WireConnection;1;5;1065;0
ASEEND*/
//CHKSM=94F726243861925AE65670607923E14C30EA6C56