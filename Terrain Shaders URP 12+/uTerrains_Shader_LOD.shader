// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "uTerrains_Shader_LOD"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin][Header(Textures 1)][NoScaleOffset][SingleLineTexture]_Albedo1("Albedo 1", 2D) = "white" {}
		_AlbedoTiling1("Albedo Tiling 1", Range( 0 , 2)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Occlusion1("Occlusion 1", 2D) = "white" {}
		_OcclusionStrength1("Occlusion Strength 1", Range( -10 , 10)) = 0.1
		_Shiny1("Shiny 1", Range( 0 , 10)) = 0.1
		_Smooth1("Smooth 1", Range( 0 , 10)) = 0.1
		[Header(Textures 2)][NoScaleOffset][SingleLineTexture]_Albedo2("Albedo 2", 2D) = "white" {}
		_AlbedoTiling2("Albedo Tiling 2", Range( 0 , 2)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Occlusion2("Occlusion 2", 2D) = "white" {}
		_OcclusionStrength2("Occlusion Strength 2", Range( -10 , 10)) = 0.1
		_Shiny2("Shiny 2", Range( 0 , 10)) = 0.1
		_Smooth2("Smooth 2", Range( 0 , 10)) = 0.1
		[Header(Textures 3)][NoScaleOffset][SingleLineTexture]_Albedo3("Albedo 3", 2D) = "white" {}
		_AlbedoTiling3("Albedo Tiling 3", Range( 0 , 2)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Occlusion3("Occlusion 3", 2D) = "white" {}
		_OcclusionStrength3("Occlusion Strength 3", Range( -10 , 10)) = 0.1
		_Shiny3("Shiny 3", Range( 0 , 10)) = 0.1
		_Smooth3("Smooth 3", Range( 0 , 10)) = 0.1
		[Header(Textures 4)][NoScaleOffset][SingleLineTexture]_Albedo4("Albedo 4", 2D) = "white" {}
		_AlbedoTiling4("Albedo Tiling 4", Range( 0 , 2)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Occlusion4("Occlusion 4", 2D) = "white" {}
		_OcclusionStrength4("Occlusion Strength 4", Range( -10 , 10)) = 0.1
		_Shiny4("Shiny 4", Range( 0 , 10)) = 0.1
		_Smooth4("Smooth 4", Range( 0 , 10)) = 0.1
		[Header(Textures 5)][NoScaleOffset][SingleLineTexture]_Albedo5("Albedo 5", 2D) = "white" {}
		_AlbedoTiling5("Albedo Tiling 5", Range( 0 , 2)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Occlusion5("Occlusion 5", 2D) = "white" {}
		_OcclusionStrength5("Occlusion Strength 5", Range( -10 , 10)) = 0.1
		_Shiny5("Shiny 5", Range( 0 , 10)) = 0.1
		_Smooth5("Smooth 5", Range( 0 , 10)) = 0.1
		[Header(Textures 6)][NoScaleOffset][SingleLineTexture]_Albedo6("Albedo 6", 2D) = "white" {}
		_AlbedoTiling6("Albedo Tiling 6", Range( 0 , 2)) = 0.1
		[NoScaleOffset][SingleLineTexture]_Occlusion6("Occlusion 6", 2D) = "white" {}
		_OcclusionStrength6("Occlusion Strength 6", Range( -10 , 10)) = 0.1
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
			float _FadeRange;
			float _FadeOffset;
			float _AlbedoTiling6;
			float _AlbedoTiling5;
			float _AlbedoTiling4;
			float _AlbedoTiling3;
			float _AlbedoTiling2;
			float _Falloff;
			float _AlbedoTiling1;
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
			SAMPLER(sampler_Albedo1);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Albedo6);
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

				float4 break1303 = IN.ase_color;
				float3 break372 = WorldPosition;
				float3 break602 = sign( WorldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float2 ifLocalVar1264 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1264 = appendResult379;
				float2 temp_output_390_0 = ( ifLocalVar1264 * _AlbedoTiling1 );
				float4 ifLocalVar1289 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1289 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_390_0 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( WorldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 PlanarNormal1254 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break382 = PlanarNormal1254;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 ifLocalVar1265 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1265 = appendResult380;
				float2 temp_output_402_0 = ( ifLocalVar1265 * _AlbedoTiling1 );
				float4 ifLocalVar1288 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1288 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_402_0 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 ifLocalVar1266 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1266 = appendResult381;
				float2 temp_output_403_0 = ( _AlbedoTiling1 * ifLocalVar1266 );
				float4 ifLocalVar1287 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1287 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_403_0 );
				float2 ifLocalVar1267 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1267 = appendResult379;
				float2 temp_output_393_0 = ( ifLocalVar1267 * _AlbedoTiling2 );
				float4 ifLocalVar1286 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1286 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_393_0 );
				float2 ifLocalVar1268 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1268 = appendResult380;
				float2 temp_output_404_0 = ( ifLocalVar1268 * _AlbedoTiling2 );
				float4 ifLocalVar1285 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1285 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_404_0 );
				float2 ifLocalVar1269 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1269 = appendResult381;
				float2 temp_output_405_0 = ( ifLocalVar1269 * _AlbedoTiling2 );
				float4 ifLocalVar1284 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1284 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_405_0 );
				float2 ifLocalVar1270 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1270 = appendResult379;
				float2 temp_output_399_0 = ( ifLocalVar1270 * _AlbedoTiling3 );
				float4 ifLocalVar1292 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1292 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_399_0 );
				float2 ifLocalVar1271 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1271 = appendResult380;
				float2 temp_output_406_0 = ( ifLocalVar1271 * _AlbedoTiling3 );
				float4 ifLocalVar1291 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1291 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_406_0 );
				float2 ifLocalVar1272 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1272 = appendResult381;
				float2 temp_output_407_0 = ( ifLocalVar1272 * _AlbedoTiling3 );
				float4 ifLocalVar1290 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1290 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_407_0 );
				float2 ifLocalVar1273 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1273 = appendResult379;
				float2 temp_output_397_0 = ( ifLocalVar1273 * _AlbedoTiling4 );
				float4 ifLocalVar1294 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1294 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_397_0 );
				float2 ifLocalVar1274 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1274 = appendResult380;
				float2 temp_output_408_0 = ( ifLocalVar1274 * _AlbedoTiling4 );
				float4 ifLocalVar1295 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1295 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_408_0 );
				float2 ifLocalVar1275 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1275 = appendResult381;
				float2 temp_output_409_0 = ( ifLocalVar1275 * _AlbedoTiling4 );
				float4 ifLocalVar1293 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1293 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_409_0 );
				float2 break1305 = IN.ase_texcoord8.xy;
				float2 ifLocalVar1276 = 0;
				if( IN.ase_texcoord8.xy.x > 0.0 )
				ifLocalVar1276 = appendResult379;
				float2 temp_output_400_0 = ( ifLocalVar1276 * _AlbedoTiling5 );
				float4 ifLocalVar1296 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1296 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_400_0 );
				float2 ifLocalVar1277 = 0;
				if( IN.ase_texcoord8.xy.x > 0.0 )
				ifLocalVar1277 = appendResult380;
				float2 temp_output_410_0 = ( ifLocalVar1277 * _AlbedoTiling5 );
				float4 ifLocalVar1298 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1298 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_410_0 );
				float2 ifLocalVar1278 = 0;
				if( IN.ase_texcoord8.xy.x > 0.0 )
				ifLocalVar1278 = appendResult381;
				float2 temp_output_411_0 = ( ifLocalVar1278 * _AlbedoTiling5 );
				float4 ifLocalVar1297 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1297 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_411_0 );
				float2 ifLocalVar1279 = 0;
				if( IN.ase_texcoord8.xy.y > 0.0 )
				ifLocalVar1279 = appendResult379;
				float2 temp_output_392_0 = ( ifLocalVar1279 * _AlbedoTiling6 );
				float4 ifLocalVar1300 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1300 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_392_0 );
				float2 ifLocalVar1280 = 0;
				if( IN.ase_texcoord8.xy.y > 0.0 )
				ifLocalVar1280 = appendResult380;
				float2 temp_output_412_0 = ( ifLocalVar1280 * _AlbedoTiling6 );
				float4 ifLocalVar1299 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1299 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_412_0 );
				float2 ifLocalVar1281 = 0;
				if( IN.ase_texcoord8.xy.y > 0.0 )
				ifLocalVar1281 = appendResult381;
				float2 temp_output_413_0 = ( ifLocalVar1281 * _AlbedoTiling6 );
				float4 ifLocalVar1301 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1301 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_413_0 );
				float clampResult1261 = clamp( ( ( ScreenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1289 * break382.x ) + ( ifLocalVar1288 * break382.y ) ) + ( ifLocalVar1287 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1286 * break382.x ) + ( ifLocalVar1285 * break382.y ) ) + ( ifLocalVar1284 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1292 * break382.x ) + ( ifLocalVar1291 * break382.y ) ) + ( ifLocalVar1290 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1294 * break382.x ) + ( ifLocalVar1295 * break382.y ) ) + ( ifLocalVar1293 * break382.z ) ) ) ) + ( IN.ase_texcoord8.xy.x * ( ( ( ifLocalVar1296 * break382.x ) + ( ifLocalVar1298 * break382.y ) ) + ( ifLocalVar1297 * break382.z ) ) ) ) + ( IN.ase_texcoord8.xy.y * ( ( ( ifLocalVar1300 * break382.x ) + ( ifLocalVar1299 * break382.y ) ) + ( ifLocalVar1301 * break382.z ) ) ) ) , clampResult1261);
				
				float4 break1326 = IN.ase_color;
				float ifLocalVar1308 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1308 = SAMPLE_TEXTURE2D( _Occlusion1, sampler_Occlusion1, temp_output_390_0 ).r;
				float ifLocalVar1309 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1309 = SAMPLE_TEXTURE2D( _Occlusion1, sampler_Occlusion1, temp_output_402_0 ).r;
				float ifLocalVar1323 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1323 = SAMPLE_TEXTURE2D( _Occlusion1, sampler_Occlusion1, temp_output_403_0 ).r;
				float temp_output_903_0 = ( IN.ase_color.r * ( ( ( ifLocalVar1308 * break382.x ) + ( ifLocalVar1309 * break382.y ) ) + ( ifLocalVar1323 * break382.z ) ) );
				float ifLocalVar1310 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1310 = SAMPLE_TEXTURE2D( _Occlusion2, sampler_Occlusion1, temp_output_393_0 ).r;
				float ifLocalVar1324 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1324 = SAMPLE_TEXTURE2D( _Occlusion2, sampler_Occlusion1, temp_output_404_0 ).r;
				float ifLocalVar1325 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1325 = SAMPLE_TEXTURE2D( _Occlusion2, sampler_Occlusion1, temp_output_405_0 ).r;
				float temp_output_942_0 = ( IN.ase_color.g * ( ( ( ifLocalVar1310 * break382.x ) + ( ifLocalVar1324 * break382.y ) ) + ( ifLocalVar1325 * break382.z ) ) );
				float ifLocalVar1320 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1320 = SAMPLE_TEXTURE2D( _Occlusion3, sampler_Occlusion1, temp_output_399_0 ).r;
				float ifLocalVar1321 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1321 = SAMPLE_TEXTURE2D( _Occlusion3, sampler_Occlusion1, temp_output_406_0 ).r;
				float ifLocalVar1322 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1322 = SAMPLE_TEXTURE2D( _Occlusion3, sampler_Occlusion1, temp_output_407_0 ).r;
				float temp_output_944_0 = ( IN.ase_color.b * ( ( ( ifLocalVar1320 * break382.x ) + ( ifLocalVar1321 * break382.y ) ) + ( ifLocalVar1322 * break382.z ) ) );
				float ifLocalVar1318 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1318 = SAMPLE_TEXTURE2D( _Occlusion4, sampler_Occlusion1, temp_output_397_0 ).r;
				float ifLocalVar1317 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1317 = SAMPLE_TEXTURE2D( _Occlusion4, sampler_Occlusion1, temp_output_408_0 ).r;
				float ifLocalVar1319 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1319 = SAMPLE_TEXTURE2D( _Occlusion4, sampler_Occlusion1, temp_output_409_0 ).r;
				float temp_output_924_0 = ( IN.ase_color.a * ( ( ( ifLocalVar1318 * break382.x ) + ( ifLocalVar1317 * break382.y ) ) + ( ifLocalVar1319 * break382.z ) ) );
				float2 break1327 = IN.ase_texcoord8.xy;
				float ifLocalVar1316 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1316 = SAMPLE_TEXTURE2D( _Occlusion5, sampler_Occlusion1, temp_output_400_0 ).r;
				float ifLocalVar1314 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1314 = SAMPLE_TEXTURE2D( _Occlusion5, sampler_Occlusion1, temp_output_410_0 ).r;
				float ifLocalVar1315 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1315 = SAMPLE_TEXTURE2D( _Occlusion5, sampler_Occlusion1, temp_output_411_0 ).r;
				float temp_output_947_0 = ( IN.ase_texcoord8.xy.x * ( ( ( ifLocalVar1316 * break382.x ) + ( ifLocalVar1314 * break382.y ) ) + ( ifLocalVar1315 * break382.z ) ) );
				float ifLocalVar1312 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1312 = SAMPLE_TEXTURE2D( _Occlusion6, sampler_Occlusion1, temp_output_392_0 ).r;
				float ifLocalVar1313 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1313 = SAMPLE_TEXTURE2D( _Occlusion6, sampler_Occlusion1, temp_output_412_0 ).r;
				float ifLocalVar1311 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1311 = SAMPLE_TEXTURE2D( _Occlusion6, sampler_Occlusion1, temp_output_413_0 ).r;
				float temp_output_943_0 = ( IN.ase_texcoord8.xy.y * ( ( ( ifLocalVar1312 * break382.x ) + ( ifLocalVar1313 * break382.y ) ) + ( ifLocalVar1311 * break382.z ) ) );
				half3 temp_cast_2 = (( ( ( ( ( ( _Shiny1 * temp_output_903_0 ) + ( _Shiny2 * temp_output_942_0 ) ) + ( _Shiny3 * temp_output_944_0 ) ) + ( _Shiny4 * temp_output_924_0 ) ) + ( _Shiny5 * temp_output_947_0 ) ) + ( _Shiny6 * temp_output_943_0 ) )).xxx;
				
				float3 Albedo = lerpResult1262.rgb;
				float3 Normal = float3(0, 0, 1);
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
			float _FadeRange;
			float _FadeOffset;
			float _AlbedoTiling6;
			float _AlbedoTiling5;
			float _AlbedoTiling4;
			float _AlbedoTiling3;
			float _AlbedoTiling2;
			float _Falloff;
			float _AlbedoTiling1;
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
			float _FadeRange;
			float _FadeOffset;
			float _AlbedoTiling6;
			float _AlbedoTiling5;
			float _AlbedoTiling4;
			float _AlbedoTiling3;
			float _AlbedoTiling2;
			float _Falloff;
			float _AlbedoTiling1;
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
			float _FadeRange;
			float _FadeOffset;
			float _AlbedoTiling6;
			float _AlbedoTiling5;
			float _AlbedoTiling4;
			float _AlbedoTiling3;
			float _AlbedoTiling2;
			float _Falloff;
			float _AlbedoTiling1;
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
			SAMPLER(sampler_Albedo1);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Albedo6);


			
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

				float4 break1303 = IN.ase_color;
				float3 break372 = WorldPosition;
				float3 ase_worldNormal = IN.ase_texcoord4.xyz;
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float2 ifLocalVar1264 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1264 = appendResult379;
				float2 temp_output_390_0 = ( ifLocalVar1264 * _AlbedoTiling1 );
				float4 ifLocalVar1289 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1289 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_390_0 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 PlanarNormal1254 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break382 = PlanarNormal1254;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 ifLocalVar1265 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1265 = appendResult380;
				float2 temp_output_402_0 = ( ifLocalVar1265 * _AlbedoTiling1 );
				float4 ifLocalVar1288 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1288 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_402_0 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 ifLocalVar1266 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1266 = appendResult381;
				float2 temp_output_403_0 = ( _AlbedoTiling1 * ifLocalVar1266 );
				float4 ifLocalVar1287 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1287 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_403_0 );
				float2 ifLocalVar1267 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1267 = appendResult379;
				float2 temp_output_393_0 = ( ifLocalVar1267 * _AlbedoTiling2 );
				float4 ifLocalVar1286 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1286 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_393_0 );
				float2 ifLocalVar1268 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1268 = appendResult380;
				float2 temp_output_404_0 = ( ifLocalVar1268 * _AlbedoTiling2 );
				float4 ifLocalVar1285 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1285 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_404_0 );
				float2 ifLocalVar1269 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1269 = appendResult381;
				float2 temp_output_405_0 = ( ifLocalVar1269 * _AlbedoTiling2 );
				float4 ifLocalVar1284 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1284 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_405_0 );
				float2 ifLocalVar1270 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1270 = appendResult379;
				float2 temp_output_399_0 = ( ifLocalVar1270 * _AlbedoTiling3 );
				float4 ifLocalVar1292 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1292 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_399_0 );
				float2 ifLocalVar1271 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1271 = appendResult380;
				float2 temp_output_406_0 = ( ifLocalVar1271 * _AlbedoTiling3 );
				float4 ifLocalVar1291 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1291 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_406_0 );
				float2 ifLocalVar1272 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1272 = appendResult381;
				float2 temp_output_407_0 = ( ifLocalVar1272 * _AlbedoTiling3 );
				float4 ifLocalVar1290 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1290 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_407_0 );
				float2 ifLocalVar1273 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1273 = appendResult379;
				float2 temp_output_397_0 = ( ifLocalVar1273 * _AlbedoTiling4 );
				float4 ifLocalVar1294 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1294 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_397_0 );
				float2 ifLocalVar1274 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1274 = appendResult380;
				float2 temp_output_408_0 = ( ifLocalVar1274 * _AlbedoTiling4 );
				float4 ifLocalVar1295 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1295 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_408_0 );
				float2 ifLocalVar1275 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1275 = appendResult381;
				float2 temp_output_409_0 = ( ifLocalVar1275 * _AlbedoTiling4 );
				float4 ifLocalVar1293 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1293 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_409_0 );
				float2 break1305 = IN.ase_texcoord5.xy;
				float2 ifLocalVar1276 = 0;
				if( IN.ase_texcoord5.xy.x > 0.0 )
				ifLocalVar1276 = appendResult379;
				float2 temp_output_400_0 = ( ifLocalVar1276 * _AlbedoTiling5 );
				float4 ifLocalVar1296 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1296 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_400_0 );
				float2 ifLocalVar1277 = 0;
				if( IN.ase_texcoord5.xy.x > 0.0 )
				ifLocalVar1277 = appendResult380;
				float2 temp_output_410_0 = ( ifLocalVar1277 * _AlbedoTiling5 );
				float4 ifLocalVar1298 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1298 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_410_0 );
				float2 ifLocalVar1278 = 0;
				if( IN.ase_texcoord5.xy.x > 0.0 )
				ifLocalVar1278 = appendResult381;
				float2 temp_output_411_0 = ( ifLocalVar1278 * _AlbedoTiling5 );
				float4 ifLocalVar1297 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1297 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_411_0 );
				float2 ifLocalVar1279 = 0;
				if( IN.ase_texcoord5.xy.y > 0.0 )
				ifLocalVar1279 = appendResult379;
				float2 temp_output_392_0 = ( ifLocalVar1279 * _AlbedoTiling6 );
				float4 ifLocalVar1300 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1300 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_392_0 );
				float2 ifLocalVar1280 = 0;
				if( IN.ase_texcoord5.xy.y > 0.0 )
				ifLocalVar1280 = appendResult380;
				float2 temp_output_412_0 = ( ifLocalVar1280 * _AlbedoTiling6 );
				float4 ifLocalVar1299 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1299 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_412_0 );
				float2 ifLocalVar1281 = 0;
				if( IN.ase_texcoord5.xy.y > 0.0 )
				ifLocalVar1281 = appendResult381;
				float2 temp_output_413_0 = ( ifLocalVar1281 * _AlbedoTiling6 );
				float4 ifLocalVar1301 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1301 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_413_0 );
				float4 screenPos = IN.ase_texcoord6;
				float clampResult1261 = clamp( ( ( screenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1289 * break382.x ) + ( ifLocalVar1288 * break382.y ) ) + ( ifLocalVar1287 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1286 * break382.x ) + ( ifLocalVar1285 * break382.y ) ) + ( ifLocalVar1284 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1292 * break382.x ) + ( ifLocalVar1291 * break382.y ) ) + ( ifLocalVar1290 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1294 * break382.x ) + ( ifLocalVar1295 * break382.y ) ) + ( ifLocalVar1293 * break382.z ) ) ) ) + ( IN.ase_texcoord5.xy.x * ( ( ( ifLocalVar1296 * break382.x ) + ( ifLocalVar1298 * break382.y ) ) + ( ifLocalVar1297 * break382.z ) ) ) ) + ( IN.ase_texcoord5.xy.y * ( ( ( ifLocalVar1300 * break382.x ) + ( ifLocalVar1299 * break382.y ) ) + ( ifLocalVar1301 * break382.z ) ) ) ) , clampResult1261);
				
				
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
			float _FadeRange;
			float _FadeOffset;
			float _AlbedoTiling6;
			float _AlbedoTiling5;
			float _AlbedoTiling4;
			float _AlbedoTiling3;
			float _AlbedoTiling2;
			float _Falloff;
			float _AlbedoTiling1;
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
			SAMPLER(sampler_Albedo1);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Albedo6);


			
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

				float4 break1303 = IN.ase_color;
				float3 break372 = WorldPosition;
				float3 ase_worldNormal = IN.ase_texcoord2.xyz;
				float3 break602 = sign( ase_worldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float2 ifLocalVar1264 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1264 = appendResult379;
				float2 temp_output_390_0 = ( ifLocalVar1264 * _AlbedoTiling1 );
				float4 ifLocalVar1289 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1289 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_390_0 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( ase_worldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 PlanarNormal1254 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break382 = PlanarNormal1254;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 ifLocalVar1265 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1265 = appendResult380;
				float2 temp_output_402_0 = ( ifLocalVar1265 * _AlbedoTiling1 );
				float4 ifLocalVar1288 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1288 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_402_0 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 ifLocalVar1266 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1266 = appendResult381;
				float2 temp_output_403_0 = ( _AlbedoTiling1 * ifLocalVar1266 );
				float4 ifLocalVar1287 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1287 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_403_0 );
				float2 ifLocalVar1267 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1267 = appendResult379;
				float2 temp_output_393_0 = ( ifLocalVar1267 * _AlbedoTiling2 );
				float4 ifLocalVar1286 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1286 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_393_0 );
				float2 ifLocalVar1268 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1268 = appendResult380;
				float2 temp_output_404_0 = ( ifLocalVar1268 * _AlbedoTiling2 );
				float4 ifLocalVar1285 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1285 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_404_0 );
				float2 ifLocalVar1269 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1269 = appendResult381;
				float2 temp_output_405_0 = ( ifLocalVar1269 * _AlbedoTiling2 );
				float4 ifLocalVar1284 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1284 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_405_0 );
				float2 ifLocalVar1270 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1270 = appendResult379;
				float2 temp_output_399_0 = ( ifLocalVar1270 * _AlbedoTiling3 );
				float4 ifLocalVar1292 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1292 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_399_0 );
				float2 ifLocalVar1271 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1271 = appendResult380;
				float2 temp_output_406_0 = ( ifLocalVar1271 * _AlbedoTiling3 );
				float4 ifLocalVar1291 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1291 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_406_0 );
				float2 ifLocalVar1272 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1272 = appendResult381;
				float2 temp_output_407_0 = ( ifLocalVar1272 * _AlbedoTiling3 );
				float4 ifLocalVar1290 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1290 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_407_0 );
				float2 ifLocalVar1273 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1273 = appendResult379;
				float2 temp_output_397_0 = ( ifLocalVar1273 * _AlbedoTiling4 );
				float4 ifLocalVar1294 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1294 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_397_0 );
				float2 ifLocalVar1274 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1274 = appendResult380;
				float2 temp_output_408_0 = ( ifLocalVar1274 * _AlbedoTiling4 );
				float4 ifLocalVar1295 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1295 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_408_0 );
				float2 ifLocalVar1275 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1275 = appendResult381;
				float2 temp_output_409_0 = ( ifLocalVar1275 * _AlbedoTiling4 );
				float4 ifLocalVar1293 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1293 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_409_0 );
				float2 break1305 = IN.ase_texcoord3.xy;
				float2 ifLocalVar1276 = 0;
				if( IN.ase_texcoord3.xy.x > 0.0 )
				ifLocalVar1276 = appendResult379;
				float2 temp_output_400_0 = ( ifLocalVar1276 * _AlbedoTiling5 );
				float4 ifLocalVar1296 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1296 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_400_0 );
				float2 ifLocalVar1277 = 0;
				if( IN.ase_texcoord3.xy.x > 0.0 )
				ifLocalVar1277 = appendResult380;
				float2 temp_output_410_0 = ( ifLocalVar1277 * _AlbedoTiling5 );
				float4 ifLocalVar1298 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1298 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_410_0 );
				float2 ifLocalVar1278 = 0;
				if( IN.ase_texcoord3.xy.x > 0.0 )
				ifLocalVar1278 = appendResult381;
				float2 temp_output_411_0 = ( ifLocalVar1278 * _AlbedoTiling5 );
				float4 ifLocalVar1297 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1297 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_411_0 );
				float2 ifLocalVar1279 = 0;
				if( IN.ase_texcoord3.xy.y > 0.0 )
				ifLocalVar1279 = appendResult379;
				float2 temp_output_392_0 = ( ifLocalVar1279 * _AlbedoTiling6 );
				float4 ifLocalVar1300 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1300 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_392_0 );
				float2 ifLocalVar1280 = 0;
				if( IN.ase_texcoord3.xy.y > 0.0 )
				ifLocalVar1280 = appendResult380;
				float2 temp_output_412_0 = ( ifLocalVar1280 * _AlbedoTiling6 );
				float4 ifLocalVar1299 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1299 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_412_0 );
				float2 ifLocalVar1281 = 0;
				if( IN.ase_texcoord3.xy.y > 0.0 )
				ifLocalVar1281 = appendResult381;
				float2 temp_output_413_0 = ( ifLocalVar1281 * _AlbedoTiling6 );
				float4 ifLocalVar1301 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1301 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_413_0 );
				float4 screenPos = IN.ase_texcoord4;
				float clampResult1261 = clamp( ( ( screenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1289 * break382.x ) + ( ifLocalVar1288 * break382.y ) ) + ( ifLocalVar1287 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1286 * break382.x ) + ( ifLocalVar1285 * break382.y ) ) + ( ifLocalVar1284 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1292 * break382.x ) + ( ifLocalVar1291 * break382.y ) ) + ( ifLocalVar1290 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1294 * break382.x ) + ( ifLocalVar1295 * break382.y ) ) + ( ifLocalVar1293 * break382.z ) ) ) ) + ( IN.ase_texcoord3.xy.x * ( ( ( ifLocalVar1296 * break382.x ) + ( ifLocalVar1298 * break382.y ) ) + ( ifLocalVar1297 * break382.z ) ) ) ) + ( IN.ase_texcoord3.xy.y * ( ( ( ifLocalVar1300 * break382.x ) + ( ifLocalVar1299 * break382.y ) ) + ( ifLocalVar1301 * break382.z ) ) ) ) , clampResult1261);
				
				
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
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
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
				float3 worldNormal : TEXCOORD2;
				float4 worldTangent : TEXCOORD3;
				
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
			float _FadeRange;
			float _FadeOffset;
			float _AlbedoTiling6;
			float _AlbedoTiling5;
			float _AlbedoTiling4;
			float _AlbedoTiling3;
			float _AlbedoTiling2;
			float _Falloff;
			float _AlbedoTiling1;
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

				
				float3 Normal = float3(0, 0, 1);
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
			float _FadeRange;
			float _FadeOffset;
			float _AlbedoTiling6;
			float _AlbedoTiling5;
			float _AlbedoTiling4;
			float _AlbedoTiling3;
			float _AlbedoTiling2;
			float _Falloff;
			float _AlbedoTiling1;
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
			SAMPLER(sampler_Albedo1);
			TEXTURE2D(_Albedo2);
			TEXTURE2D(_Albedo3);
			TEXTURE2D(_Albedo4);
			TEXTURE2D(_Albedo5);
			TEXTURE2D(_Albedo6);
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

				float4 break1303 = IN.ase_color;
				float3 break372 = WorldPosition;
				float3 break602 = sign( WorldNormal );
				float2 appendResult379 = (float2(break372.y , ( break602.x * break372.z )));
				float2 ifLocalVar1264 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1264 = appendResult379;
				float2 temp_output_390_0 = ( ifLocalVar1264 * _AlbedoTiling1 );
				float4 ifLocalVar1289 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1289 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_390_0 );
				float3 temp_cast_0 = (_Falloff).xxx;
				float3 temp_output_595_0 = pow( abs( WorldNormal ) , temp_cast_0 );
				float3 break597 = temp_output_595_0;
				float3 PlanarNormal1254 = ( temp_output_595_0 / ( ( break597.x + break597.y + break597.z ) + 1E-05 ) );
				float3 break382 = PlanarNormal1254;
				float2 appendResult380 = (float2(( break602.y * break372.x ) , break372.z));
				float2 ifLocalVar1265 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1265 = appendResult380;
				float2 temp_output_402_0 = ( ifLocalVar1265 * _AlbedoTiling1 );
				float4 ifLocalVar1288 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1288 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_402_0 );
				float2 appendResult381 = (float2(( -break602.z * break372.x ) , break372.y));
				float2 ifLocalVar1266 = 0;
				if( IN.ase_color.r > 0.0 )
				ifLocalVar1266 = appendResult381;
				float2 temp_output_403_0 = ( _AlbedoTiling1 * ifLocalVar1266 );
				float4 ifLocalVar1287 = 0;
				if( break1303.r > 0.0 )
				ifLocalVar1287 = SAMPLE_TEXTURE2D( _Albedo1, sampler_Albedo1, temp_output_403_0 );
				float2 ifLocalVar1267 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1267 = appendResult379;
				float2 temp_output_393_0 = ( ifLocalVar1267 * _AlbedoTiling2 );
				float4 ifLocalVar1286 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1286 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_393_0 );
				float2 ifLocalVar1268 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1268 = appendResult380;
				float2 temp_output_404_0 = ( ifLocalVar1268 * _AlbedoTiling2 );
				float4 ifLocalVar1285 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1285 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_404_0 );
				float2 ifLocalVar1269 = 0;
				if( IN.ase_color.g > 0.0 )
				ifLocalVar1269 = appendResult381;
				float2 temp_output_405_0 = ( ifLocalVar1269 * _AlbedoTiling2 );
				float4 ifLocalVar1284 = 0;
				if( break1303.g > 0.0 )
				ifLocalVar1284 = SAMPLE_TEXTURE2D( _Albedo2, sampler_Albedo1, temp_output_405_0 );
				float2 ifLocalVar1270 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1270 = appendResult379;
				float2 temp_output_399_0 = ( ifLocalVar1270 * _AlbedoTiling3 );
				float4 ifLocalVar1292 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1292 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_399_0 );
				float2 ifLocalVar1271 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1271 = appendResult380;
				float2 temp_output_406_0 = ( ifLocalVar1271 * _AlbedoTiling3 );
				float4 ifLocalVar1291 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1291 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_406_0 );
				float2 ifLocalVar1272 = 0;
				if( IN.ase_color.b > 0.0 )
				ifLocalVar1272 = appendResult381;
				float2 temp_output_407_0 = ( ifLocalVar1272 * _AlbedoTiling3 );
				float4 ifLocalVar1290 = 0;
				if( break1303.b > 0.0 )
				ifLocalVar1290 = SAMPLE_TEXTURE2D( _Albedo3, sampler_Albedo1, temp_output_407_0 );
				float2 ifLocalVar1273 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1273 = appendResult379;
				float2 temp_output_397_0 = ( ifLocalVar1273 * _AlbedoTiling4 );
				float4 ifLocalVar1294 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1294 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_397_0 );
				float2 ifLocalVar1274 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1274 = appendResult380;
				float2 temp_output_408_0 = ( ifLocalVar1274 * _AlbedoTiling4 );
				float4 ifLocalVar1295 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1295 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_408_0 );
				float2 ifLocalVar1275 = 0;
				if( IN.ase_color.a > 0.0 )
				ifLocalVar1275 = appendResult381;
				float2 temp_output_409_0 = ( ifLocalVar1275 * _AlbedoTiling4 );
				float4 ifLocalVar1293 = 0;
				if( break1303.a > 0.0 )
				ifLocalVar1293 = SAMPLE_TEXTURE2D( _Albedo4, sampler_Albedo1, temp_output_409_0 );
				float2 break1305 = IN.ase_texcoord8.xy;
				float2 ifLocalVar1276 = 0;
				if( IN.ase_texcoord8.xy.x > 0.0 )
				ifLocalVar1276 = appendResult379;
				float2 temp_output_400_0 = ( ifLocalVar1276 * _AlbedoTiling5 );
				float4 ifLocalVar1296 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1296 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_400_0 );
				float2 ifLocalVar1277 = 0;
				if( IN.ase_texcoord8.xy.x > 0.0 )
				ifLocalVar1277 = appendResult380;
				float2 temp_output_410_0 = ( ifLocalVar1277 * _AlbedoTiling5 );
				float4 ifLocalVar1298 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1298 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_410_0 );
				float2 ifLocalVar1278 = 0;
				if( IN.ase_texcoord8.xy.x > 0.0 )
				ifLocalVar1278 = appendResult381;
				float2 temp_output_411_0 = ( ifLocalVar1278 * _AlbedoTiling5 );
				float4 ifLocalVar1297 = 0;
				if( break1305.x > 0.0 )
				ifLocalVar1297 = SAMPLE_TEXTURE2D( _Albedo5, sampler_Albedo1, temp_output_411_0 );
				float2 ifLocalVar1279 = 0;
				if( IN.ase_texcoord8.xy.y > 0.0 )
				ifLocalVar1279 = appendResult379;
				float2 temp_output_392_0 = ( ifLocalVar1279 * _AlbedoTiling6 );
				float4 ifLocalVar1300 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1300 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_392_0 );
				float2 ifLocalVar1280 = 0;
				if( IN.ase_texcoord8.xy.y > 0.0 )
				ifLocalVar1280 = appendResult380;
				float2 temp_output_412_0 = ( ifLocalVar1280 * _AlbedoTiling6 );
				float4 ifLocalVar1299 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1299 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_412_0 );
				float2 ifLocalVar1281 = 0;
				if( IN.ase_texcoord8.xy.y > 0.0 )
				ifLocalVar1281 = appendResult381;
				float2 temp_output_413_0 = ( ifLocalVar1281 * _AlbedoTiling6 );
				float4 ifLocalVar1301 = 0;
				if( break1305.y > 0.0 )
				ifLocalVar1301 = SAMPLE_TEXTURE2D( _Albedo6, sampler_Albedo1, temp_output_413_0 );
				float clampResult1261 = clamp( ( ( ScreenPos.w - _FadeOffset ) * _FadeRange ) , 0.0 , 1.0 );
				float4 lerpResult1262 = lerp( _FadeColor , ( ( ( ( ( ( IN.ase_color.r * ( ( ( ifLocalVar1289 * break382.x ) + ( ifLocalVar1288 * break382.y ) ) + ( ifLocalVar1287 * break382.z ) ) ) + ( IN.ase_color.g * ( ( ( ifLocalVar1286 * break382.x ) + ( ifLocalVar1285 * break382.y ) ) + ( ifLocalVar1284 * break382.z ) ) ) ) + ( IN.ase_color.b * ( ( ( ifLocalVar1292 * break382.x ) + ( ifLocalVar1291 * break382.y ) ) + ( ifLocalVar1290 * break382.z ) ) ) ) + ( IN.ase_color.a * ( ( ( ifLocalVar1294 * break382.x ) + ( ifLocalVar1295 * break382.y ) ) + ( ifLocalVar1293 * break382.z ) ) ) ) + ( IN.ase_texcoord8.xy.x * ( ( ( ifLocalVar1296 * break382.x ) + ( ifLocalVar1298 * break382.y ) ) + ( ifLocalVar1297 * break382.z ) ) ) ) + ( IN.ase_texcoord8.xy.y * ( ( ( ifLocalVar1300 * break382.x ) + ( ifLocalVar1299 * break382.y ) ) + ( ifLocalVar1301 * break382.z ) ) ) ) , clampResult1261);
				
				float4 break1326 = IN.ase_color;
				float ifLocalVar1308 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1308 = SAMPLE_TEXTURE2D( _Occlusion1, sampler_Occlusion1, temp_output_390_0 ).r;
				float ifLocalVar1309 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1309 = SAMPLE_TEXTURE2D( _Occlusion1, sampler_Occlusion1, temp_output_402_0 ).r;
				float ifLocalVar1323 = 0;
				if( break1326.r > 0.0 )
				ifLocalVar1323 = SAMPLE_TEXTURE2D( _Occlusion1, sampler_Occlusion1, temp_output_403_0 ).r;
				float temp_output_903_0 = ( IN.ase_color.r * ( ( ( ifLocalVar1308 * break382.x ) + ( ifLocalVar1309 * break382.y ) ) + ( ifLocalVar1323 * break382.z ) ) );
				float ifLocalVar1310 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1310 = SAMPLE_TEXTURE2D( _Occlusion2, sampler_Occlusion1, temp_output_393_0 ).r;
				float ifLocalVar1324 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1324 = SAMPLE_TEXTURE2D( _Occlusion2, sampler_Occlusion1, temp_output_404_0 ).r;
				float ifLocalVar1325 = 0;
				if( break1326.g > 0.0 )
				ifLocalVar1325 = SAMPLE_TEXTURE2D( _Occlusion2, sampler_Occlusion1, temp_output_405_0 ).r;
				float temp_output_942_0 = ( IN.ase_color.g * ( ( ( ifLocalVar1310 * break382.x ) + ( ifLocalVar1324 * break382.y ) ) + ( ifLocalVar1325 * break382.z ) ) );
				float ifLocalVar1320 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1320 = SAMPLE_TEXTURE2D( _Occlusion3, sampler_Occlusion1, temp_output_399_0 ).r;
				float ifLocalVar1321 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1321 = SAMPLE_TEXTURE2D( _Occlusion3, sampler_Occlusion1, temp_output_406_0 ).r;
				float ifLocalVar1322 = 0;
				if( break1326.b > 0.0 )
				ifLocalVar1322 = SAMPLE_TEXTURE2D( _Occlusion3, sampler_Occlusion1, temp_output_407_0 ).r;
				float temp_output_944_0 = ( IN.ase_color.b * ( ( ( ifLocalVar1320 * break382.x ) + ( ifLocalVar1321 * break382.y ) ) + ( ifLocalVar1322 * break382.z ) ) );
				float ifLocalVar1318 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1318 = SAMPLE_TEXTURE2D( _Occlusion4, sampler_Occlusion1, temp_output_397_0 ).r;
				float ifLocalVar1317 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1317 = SAMPLE_TEXTURE2D( _Occlusion4, sampler_Occlusion1, temp_output_408_0 ).r;
				float ifLocalVar1319 = 0;
				if( break1326.a > 0.0 )
				ifLocalVar1319 = SAMPLE_TEXTURE2D( _Occlusion4, sampler_Occlusion1, temp_output_409_0 ).r;
				float temp_output_924_0 = ( IN.ase_color.a * ( ( ( ifLocalVar1318 * break382.x ) + ( ifLocalVar1317 * break382.y ) ) + ( ifLocalVar1319 * break382.z ) ) );
				float2 break1327 = IN.ase_texcoord8.xy;
				float ifLocalVar1316 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1316 = SAMPLE_TEXTURE2D( _Occlusion5, sampler_Occlusion1, temp_output_400_0 ).r;
				float ifLocalVar1314 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1314 = SAMPLE_TEXTURE2D( _Occlusion5, sampler_Occlusion1, temp_output_410_0 ).r;
				float ifLocalVar1315 = 0;
				if( break1327.x > 0.0 )
				ifLocalVar1315 = SAMPLE_TEXTURE2D( _Occlusion5, sampler_Occlusion1, temp_output_411_0 ).r;
				float temp_output_947_0 = ( IN.ase_texcoord8.xy.x * ( ( ( ifLocalVar1316 * break382.x ) + ( ifLocalVar1314 * break382.y ) ) + ( ifLocalVar1315 * break382.z ) ) );
				float ifLocalVar1312 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1312 = SAMPLE_TEXTURE2D( _Occlusion6, sampler_Occlusion1, temp_output_392_0 ).r;
				float ifLocalVar1313 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1313 = SAMPLE_TEXTURE2D( _Occlusion6, sampler_Occlusion1, temp_output_412_0 ).r;
				float ifLocalVar1311 = 0;
				if( break1327.y > 0.0 )
				ifLocalVar1311 = SAMPLE_TEXTURE2D( _Occlusion6, sampler_Occlusion1, temp_output_413_0 ).r;
				float temp_output_943_0 = ( IN.ase_texcoord8.xy.y * ( ( ( ifLocalVar1312 * break382.x ) + ( ifLocalVar1313 * break382.y ) ) + ( ifLocalVar1311 * break382.z ) ) );
				half3 temp_cast_2 = (( ( ( ( ( ( _Shiny1 * temp_output_903_0 ) + ( _Shiny2 * temp_output_942_0 ) ) + ( _Shiny3 * temp_output_944_0 ) ) + ( _Shiny4 * temp_output_924_0 ) ) + ( _Shiny5 * temp_output_947_0 ) ) + ( _Shiny6 * temp_output_943_0 ) )).xxx;
				
				float3 Albedo = lerpResult1262.rgb;
				float3 Normal = float3(0, 0, 1);
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
			float _FadeRange;
			float _FadeOffset;
			float _AlbedoTiling6;
			float _AlbedoTiling5;
			float _AlbedoTiling4;
			float _AlbedoTiling3;
			float _AlbedoTiling2;
			float _Falloff;
			float _AlbedoTiling1;
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
			float _FadeRange;
			float _FadeOffset;
			float _AlbedoTiling6;
			float _AlbedoTiling5;
			float _AlbedoTiling4;
			float _AlbedoTiling3;
			float _AlbedoTiling2;
			float _Falloff;
			float _AlbedoTiling1;
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
297;160;1920;870;10615.12;4428.019;5.871668;False;False
Node;AmplifyShaderEditor.CommentaryNode;611;-10119.24,213.2172;Inherit;False;1094.51;860.2861;;22;610;372;592;593;594;595;598;599;597;600;601;602;606;607;609;596;343;1254;382;380;381;379;Triplanar UV;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;383;-4813.138,-3376.342;Inherit;False;1453.274;1471.567;;24;370;110;369;47;368;109;46;367;366;108;45;365;364;107;44;363;360;106;43;371;362;361;105;42;Albedo Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;441;-1457.987,-3456.726;Inherit;False;1645.003;1929.028;;47;389;378;375;373;374;385;387;377;376;388;386;384;420;419;417;421;422;415;416;426;425;418;424;423;433;431;436;434;429;435;437;432;427;438;428;430;128;137;127;126;133;136;135;132;129;134;130;Albedo Compose;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;894;-4841.756,-1752.885;Inherit;False;1453.274;1471.567;;32;965;958;956;954;950;946;945;941;940;934;932;930;929;923;922;920;913;911;906;905;904;901;900;896;6;7;9;8;2;4;5;3;Occlusion Textures;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1263;-3697.32,2568.998;Inherit;False;1860.958;464.9319;;8;1255;1256;1257;1258;1259;1260;1261;1262;Fade Effect;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1306;-3073.492,-3304.807;Inherit;False;1134.235;976.7544;;20;1284;1285;1287;1290;1291;1292;1293;1294;1295;1296;1297;1298;1299;1300;1301;1286;1288;1289;1303;1305;Albedo Optimization;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;491;-6366.915,-3348.589;Inherit;False;1412.169;843.6172;;24;490;489;408;405;404;399;406;407;486;409;397;393;411;400;413;410;488;392;487;485;402;403;390;412;Tiling Albedo;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;893;-2908.631,-785.4505;Inherit;False;1645.003;1929.028;;48;964;963;962;961;960;959;957;953;952;948;947;944;943;942;939;938;937;936;933;931;928;927;926;925;924;921;919;918;917;916;915;914;912;910;909;908;907;903;902;898;897;895;1248;1249;1250;1251;1252;1253;Occlusion Compose;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1063;-5244.883,2427.917;Inherit;False;1270.305;488.4753;;17;1081;1080;1079;1078;1077;1076;1074;1073;1072;1071;1070;1069;1068;1067;1066;1065;1064;Occlusion;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1043;-5220.695,1814.391;Inherit;False;1270.305;488.4753;;17;1025;1026;1027;1028;1029;1030;1031;1032;1033;1034;1035;1036;1037;1038;1039;1040;1041;Rough;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1169;-9488.603,-705.7982;Inherit;False;461.7822;435.8462;;3;464;113;114;Mesh Data;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1282;-7578.115,-3329.467;Inherit;False;1134.239;818.3521;;18;1264;1265;1266;1267;1268;1269;1270;1271;1272;1273;1274;1275;1276;1277;1278;1279;1280;1281;Tiling Optimization;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1307;-4369.438,110.6401;Inherit;False;1134.235;976.7544;;20;1327;1326;1325;1324;1323;1322;1321;1320;1319;1318;1317;1316;1315;1314;1313;1312;1311;1310;1309;1308;Occlusion Optimization;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1044;-3881.087,1832.688;Inherit;False;1270.305;488.4753;;17;1061;1060;1059;1058;1057;1056;1055;1054;1053;1052;1051;1050;1049;1048;1047;1046;1045;Smooth;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;913;-4785.481,-1190.771;Inherit;True;Property;_Occlusion3;Occlusion 3;14;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;c43e618f497cb96429438f86915af477;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ConditionalIfNode;1314;-3780.622,690.2087;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1048;-3222.687,2059.538;Inherit;False;Property;_Smooth4;Smooth 4;23;0;Create;True;0;0;0;False;0;False;0.1;0.44;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1029;-4866.297,2120.24;Inherit;False;Property;_Shiny5;Shiny 5;28;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1054;-2913.344,2001.94;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1315;-3955.214,875.7159;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1318;-4312.117,700.6418;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1317;-4137.6,694.8857;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1071;-5191.977,2496.66;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1034;-4252.953,1983.644;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1031;-4120.453,1864.391;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1308;-4319.366,324.796;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1319;-4312.189,880.3928;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1321;-3434.562,319.1989;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1323;-4319.438,504.546;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1253;-2450.247,958.0109;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1040;-5170.695,2120.348;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1325;-3967.687,506.2638;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1327;-4126.804,168.9851;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleAddOpNode;939;-2590.9,3.32679;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;927;-2066.132,-721.4704;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1078;-4889.486,2640.767;Inherit;False;Property;_OcclusionStrength3;Occlusion Strength 3;15;0;Create;True;0;0;0;False;0;False;0.1;0.86;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1065;-4291.735,2723.048;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1027;-4865.297,2027.241;Inherit;False;Property;_Shiny3;Shiny 3;16;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1033;-4120.453,1983.644;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1036;-5015.695,1886.351;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1316;-3955.142,695.9648;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1051;-2780.844,1882.688;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;910;-1774.579,-249.0343;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;931;-2037.368,231.0988;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1077;-4629.484,2536.768;Inherit;False;Property;_OcclusionStrength2;Occlusion Strength 2;9;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1320;-3609.074,324.955;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1069;-5039.884,2499.877;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1326;-4293.249,160.6389;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.TexturePropertyNode;901;-4779.194,-721.8046;Inherit;True;Property;_Occlusion5;Occlusion 5;26;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;904abe3a0a0047448aaf87399172740a;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;947;-2168.177,963.2039;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1032;-4267.547,2109.522;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1258;-2865.32,2677.072;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;962;-1512.246,-246.3692;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1028;-4562.295,2041.241;Inherit;False;Property;_Shiny4;Shiny 4;22;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;917;-2028.8,458.5084;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;961;-2067.548,-255.4751;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1248;-2617.835,654.4749;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1057;-3827.087,2016.646;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;925;-2323.553,-499.724;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1072;-5040.884,2737.874;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1052;-2927.939,2127.819;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1041;-5022.695,2002.351;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;964;-1498.628,5.321663;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;948;-2852.305,-512.5321;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1252;-2622.524,959.1829;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;895;-1756.051,227.0678;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;942;-2013.178,729.2057;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1053;-2780.844,2001.94;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;903;-2165.271,725.9885;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1056;-3676.087,1904.648;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1324;-3793.095,320.757;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;924;-2020.178,845.2058;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1322;-3609.144,504.7049;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1309;-4144.85,319.039;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;943;-2014.178,967.2039;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;915;-2600.882,241.9118;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1251;-2446.729,816.205;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.BreakToComponentsNode;1250;-2614.32,813.8612;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.ColorNode;1256;-2454.382,2821.93;Inherit;False;Property;_FadeColor;Fade Color;39;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.6415094,0.6415094,0.6415094,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1081;-4584.484,2740.766;Inherit;False;Property;_OcclusionStrength6;Occlusion Strength 6;33;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1255;-3130.321,2639.072;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1310;-3967.617,326.5128;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;896;-4048.707,-728.5776;Inherit;True;Property;_Occlusion6;Occlusion 6;32;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;f073d69c92cf03d4b837236064595ff3;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;1055;-2922.677,1892.521;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1066;-4144.641,2597.169;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;907;-1769.83,-713.5362;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1079;-4586.484,2654.767;Inherit;False;Property;_OcclusionStrength4;Occlusion Strength 4;21;0;Create;True;0;0;0;False;0;False;0.1;0.5;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;952;-2286.384,-8.658318;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1249;-2445.558,656.8191;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1070;-5190.883,2611.875;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1266;-7528.115,-3093.96;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;110;-3715.095,-2353.037;Inherit;True;Property;_TextureSample5;Texture Sample 5;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;109;-4506.356,-2343.757;Inherit;True;Property;_TextureSample4;Texture Sample 4;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;367;-3720.417,-2610.777;Inherit;True;Property;_TextureSample13;Texture Sample 13;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;108;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;366;-4002.472,-2610.982;Inherit;True;Property;_TextureSample12;Texture Sample 12;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;108;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;365;-4462.279,-2596.79;Inherit;True;Property;_TextureSample11;Texture Sample 11;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;107;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;364;-4763.138,-2602.467;Inherit;True;Property;_TextureSample10;Texture Sample 10;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;107;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;108;-3750.817,-2805.656;Inherit;True;Property;_TextureSample3;Texture Sample 3;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;107;-4478.568,-2815.18;Inherit;True;Property;_TextureSample2;Texture Sample 2;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;360;-3980.557,-3113.271;Inherit;True;Property;_TextureSample6;Texture Sample 6;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;106;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;363;-3679.863,-3101.366;Inherit;True;Property;_TextureSample9;Texture Sample 9;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;106;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;106;-3713.262,-3322.887;Inherit;True;Property;_TextureSample1;Texture Sample 1;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;361;-4756.464,-3104.221;Inherit;True;Property;_TextureSample7;Texture Sample 7;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;105;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;959;-2027.386,-7.487175;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;105;-4463.584,-3326.342;Inherit;True;Property;_TextureSample0;Texture Sample 0;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;897;-2325.13,-722.6423;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;368;-4760.709,-2137.564;Inherit;True;Property;_TextureSample14;Texture Sample 14;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;109;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;369;-4476.181,-2140.353;Inherit;True;Property;_TextureSample15;Texture Sample 15;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;109;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;362;-4452.194,-3113.753;Inherit;True;Property;_TextureSample8;Texture Sample 8;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;105;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;371;-3717.44,-2134.774;Inherit;True;Property;_TextureSample17;Texture Sample 17;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;110;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;930;-4009.174,-1489.814;Inherit;True;Property;_TextureSample116;Texture Sample 116;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;932;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;958;-3999.366,-1693.389;Inherit;True;Property;_Occlusion2;Occlusion 2;8;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;aacaf9e80a8410a498b89b7012536647;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;908;-2594.885,-734.2784;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;940;-3743.712,-729.5798;Inherit;True;Property;_TextureSample119;Texture Sample 119;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;929;-4504.798,-516.895;Inherit;True;Property;_TextureSample115;Texture Sample 115;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;906;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;956;-4789.326,-514.106;Inherit;True;Property;_TextureSample125;Texture Sample 125;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;906;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;906;-4534.973,-720.2997;Inherit;True;Property;_TextureSample111;Texture Sample 111;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;954;-4791.757,-979.009;Inherit;True;Property;_TextureSample124;Texture Sample 124;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;945;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;950;-3779.434,-1182.199;Inherit;True;Property;_TextureSample123;Texture Sample 123;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;905;-4031.089,-987.5239;Inherit;True;Property;_TextureSample110;Texture Sample 110;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;950;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;911;-4490.896,-973.332;Inherit;True;Property;_TextureSample112;Texture Sample 112;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;945;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;945;-4507.185,-1191.723;Inherit;True;Property;_TextureSample121;Texture Sample 121;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;370;-4027.073,-2145.932;Inherit;True;Property;_TextureSample16;Texture Sample 16;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;110;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;934;-4480.811,-1490.296;Inherit;True;Property;_TextureSample118;Texture Sample 118;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;946;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;922;-4785.081,-1480.764;Inherit;True;Property;_TextureSample113;Texture Sample 113;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;946;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;946;-4492.201,-1702.885;Inherit;True;Property;_TextureSample122;Texture Sample 122;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;923;-3749.034,-987.3191;Inherit;True;Property;_TextureSample114;Texture Sample 114;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;950;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;920;-4030.491,-1195.658;Inherit;True;Property;_Occlusion4;Occlusion 4;20;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;0db7eaa826100804c98ac7de7aa42dbe;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;902;-1520.813,-473.779;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;960;-2604.867,-495.6931;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1058;-3828.18,1901.431;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1076;-4907.486,2540.768;Inherit;False;Property;_OcclusionStrength1;Occlusion Strength 1;3;0;Create;True;0;0;0;False;0;False;0.1;2.36;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1045;-3543.689,1945.539;Inherit;False;Property;_Smooth1;Smooth 1;5;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;898;-1510.831,-712.3644;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;928;-2329.879,-258.1403;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;918;-2284.807,214.2597;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1025;-4883.297,1927.242;Inherit;False;Property;_Shiny1;Shiny 1;4;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1260;-3570.123,2618.998;Float;False;1;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1049;-3526.689,2138.537;Inherit;False;Property;_Smooth5;Smooth 5;29;0;Create;True;0;0;0;False;0;False;0.1;0.21;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1026;-4605.295,1923.242;Inherit;False;Property;_Shiny2;Shiny 2;10;0;Create;True;0;0;0;False;0;False;0.1;0.13;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;963;-2291.133,455.8434;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;944;-2164.177,841.2057;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;936;-2849.897,2.154671;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;965;-4783.906,-1682.348;Inherit;True;Property;_Occlusion1;Occlusion 1;2;2;[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;9fd8b2202bbe9c94eb3313c3f871bc03;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1046;-3265.687,1941.539;Inherit;False;Property;_Smooth2;Smooth 2;11;0;Create;True;0;0;0;False;0;False;0.1;1.06;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;919;-1508.611,243.9067;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;937;-2848.32,225.0727;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1259;-3647.32,2859.072;Inherit;False;Property;_FadeOffset;Fade Offset;37;0;Create;True;1;Fade;0;0;False;0;False;0.5;2.61;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;926;-1768.254,-490.6182;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1050;-3220.687,2145.537;Inherit;False;Property;_Smooth6;Smooth 6;35;0;Create;True;0;0;0;False;0;False;0.1;0.2;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1067;-4277.142,2597.169;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;957;-2592.316,469.3215;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1037;-5166.695,1998.35;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1262;-2018.361,2747.262;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;912;-1500.044,471.3165;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;938;-2596.301,-268.2833;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;933;-2853.882,-735.4505;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;914;-2858.631,-270.9484;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1039;-5023.689,2124.348;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1064;-4144.641,2477.917;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;909;-1757.629,4.148872;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;953;-2854.646,466.6564;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;916;-1762.378,468.6516;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1080;-4890.486,2733.766;Inherit;False;Property;_OcclusionStrength5;Occlusion Strength 5;27;0;Create;True;0;0;0;False;0;False;0.1;1;-10;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1261;-2605.321,2698.072;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1035;-4262.285,1874.224;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1073;-5194.883,2733.874;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1061;-3683.087,2020.647;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;904;-3708.48,-1477.909;Inherit;True;Property;_TextureSample109;Texture Sample 109;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;932;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;409;-5829.31,-2639.971;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;397;-5826.812,-2895.732;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;596;-9364.243,320.2173;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;406;-5145.949,-3175.338;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1271;-6643.237,-3279.307;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;408;-5831.159,-2769.425;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1276;-7163.82,-2902.541;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;382;-9195.033,368.2576;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode;489;-5701.918,-2631.612;Inherit;False;Property;_AlbedoTiling5;Albedo Tiling 5;25;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1254;-9224.415,291.7631;Inherit;False;PlanarNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ConditionalIfNode;1275;-7520.866,-2718.113;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;390;-5986.229,-3294.481;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1273;-7520.794,-2897.864;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1274;-7346.277,-2903.62;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;488;-6092.019,-2626.412;Inherit;False;Property;_AlbedoTiling4;Albedo Tiling 4;19;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;410;-5440.383,-2780.669;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1279;-6808.396,-2899.423;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;490;-5381.583,-2623.109;Inherit;False;Property;_AlbedoTiling6;Albedo Tiling 6;31;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;411;-5442.233,-2647.515;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;424;-1141.67,-2201.954;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1311;-3599.789,878.8337;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;387;-874.4837,-3393.918;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1068;-4286.474,2487.75;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;130;-474.3727,-1670.91;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;432;-576.7386,-2678.763;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;389;-616.9007,-2926.751;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1278;-7163.891,-2722.79;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;402;-5987.767,-3193.026;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;412;-5127.844,-2773.271;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;137;-682.4127,-1662.699;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;386;-872.9066,-3171;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;485;-6316.915,-3082.714;Inherit;False;Property;_AlbedoTiling1;Albedo Tiling 1;1;0;Create;True;0;0;0;False;0;False;0.1;0.19;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1280;-6633.882,-2905.179;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1277;-6989.3,-2908.297;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1281;-6808.467,-2719.672;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;132;-833.5067,-1903.915;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;114;-9438.603,-428.952;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;413;-5116.746,-2653.063;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;407;-5149.646,-3068.075;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;597;-9677.24,435.217;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.WorldNormalVector;593;-10063.24,349.2173;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ConditionalIfNode;1270;-6817.751,-3273.551;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;379;-9213.733,652.2679;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;381;-9197.72,844.5002;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;606;-9421.317,648.3832;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-9421.32,858.1641;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SignOpNode;601;-9808.947,641.3202;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode;595;-9667.241,328.217;Inherit;False;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;372;-9742.183,857.4487;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.BreakToComponentsNode;602;-9659.544,638.9012;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.WorldPosInputsNode;343;-10028.56,856.1431;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;592;-10069.24,263.2173;Inherit;False;Property;_Falloff;Fall off;36;1;[Header];Create;True;1;Other Parameter;0;0;False;0;False;1.56;1.56;0;4;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;594;-9814.242,346.2175;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;609;-9573.034,782.3111;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;607;-9413.018,749.1266;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1264;-7528.043,-3273.71;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;599;-9527.243,547.2161;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1267;-7176.294,-3271.993;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;392;-5132.758,-2888.088;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1272;-6817.822,-3093.801;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;380;-9199.224,753.1307;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;600;-9679.24,558.2161;Inherit;False;Constant;_Float0;Float 0;30;0;Create;True;0;0;0;False;0;False;1E-05;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;400;-5442.559,-2885.034;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;405;-5578.095,-3062.131;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;393;-5587.911,-3283.794;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;399;-5148.766,-3298.589;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;403;-5987.766,-3091.311;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;404;-5587.343,-3176.791;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;598;-9529.243,428.217;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1268;-7001.772,-3277.749;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1269;-7176.365,-3092.242;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ConditionalIfNode;1265;-7353.527,-3279.467;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;486;-5838.517,-3065.814;Inherit;False;Property;_AlbedoTiling2;Albedo Tiling 2;7;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;487;-5403.021,-3063.214;Inherit;False;Property;_AlbedoTiling3;Albedo Tiling 3;13;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;113;-9426.863,-655.7982;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;419;-323.9315,-2920.31;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;437;-47.98127,-2665.954;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1292;-2313.127,-3090.492;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1291;-2138.615,-3096.248;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1290;-2313.198,-2910.742;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1285;-2497.148,-3094.69;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1288;-2848.903,-3096.408;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1257;-3129.321,2826.072;Inherit;False;Property;_FadeRange;Fade Range;38;0;Create;True;0;0;0;False;0;False;0.5;0.9;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1305;-2830.857,-3246.462;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.ConditionalIfNode;1298;-2484.676,-2725.238;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1289;-3023.42,-3090.651;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1303;-2997.302,-3254.808;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleAddOpNode;427;-586.7208,-2440.177;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;136;-836.4127,-1666.699;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1284;-2671.741,-2909.183;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;44;-4756.863,-2814.228;Inherit;True;Property;_Albedo3;Albedo 3;12;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 3;0;0;False;0;False;None;d4193c885fab53849a003d859b9fd170;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;423;-1404.002,-2204.619;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1293;-3016.243,-2535.054;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1294;-3016.171,-2714.805;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1295;-2841.653,-2720.561;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1287;-3023.492,-2910.901;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;900;-4055.691,-522.4741;Inherit;True;Property;_TextureSample108;Texture Sample 108;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;940;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1030;-4560.295,2127.24;Inherit;False;Property;_Shiny6;Shiny 6;34;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;921;-2076.113,-482.8853;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1060;-3831.087,2138.645;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1059;-3685.884,2137.981;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1074;-5046.884,2615.876;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1312;-3599.72,699.0828;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;415;-70.16633,-3145.055;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;418;-1397.676,-2446.203;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1313;-3425.207,693.3267;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1038;-5167.789,1883.134;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ConditionalIfNode;1297;-2659.266,-2539.731;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1299;-2129.26,-2722.12;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;134;-832.4127,-1788.698;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1301;-2303.843,-2536.613;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1296;-2659.195,-2719.482;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1047;-3525.689,2045.538;Inherit;False;Property;_Smooth3;Smooth 3;17;0;Create;True;0;0;0;False;0;False;0.1;0.76;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;941;-3746.057,-511.3158;Inherit;True;Property;_TextureSample120;Texture Sample 120;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;940;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;433;-835.7376,-2679.934;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ConditionalIfNode;1300;-2303.773,-2716.364;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;422;-317.6065,-3161.894;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;374;-1144.24,-3405.554;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;420;-60.18415,-3383.64;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;436;-49.39729,-2199.959;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;416;-1150.236,-2429.364;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;133;-681.4127,-1900.698;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;135;-688.4127,-1784.698;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;384;-625.4656,-3154.161;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;376;-1401.662,-3183.808;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;377;-1407.987,-2942.224;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;426;-1399.253,-2669.121;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;126;-474.8697,-1906.209;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;378;-1403.238,-3406.726;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;464;-9230.82,-523.5919;Float;False;Tangent;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;373;-1154.222,-3166.969;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;425;-1140.254,-2667.949;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;47;-4020.089,-2352.035;Inherit;True;Property;_Albedo6;Albedo 6;30;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 6;0;0;False;0;False;None;97d17f5fbbbb20f43b0b696444e5484b;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;385;-879.2327,-2929.416;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;388;-615.4847,-3392.746;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;42;-4755.289,-3305.805;Inherit;True;Property;_Albedo1;Albedo 1;0;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 1;0;0;False;0;False;None;ace22d21483e490428f552c9a83ec097;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;435;-311.7306,-2202.624;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;431;-840.4866,-2215.432;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;421;-319.1825,-3384.812;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;128;-465.5377,-1796.79;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;434;-834.1607,-2457.016;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;45;-4001.874,-2819.115;Inherit;True;Property;_Albedo4;Albedo 4;18;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 4;0;0;False;0;False;None;53fd6e83a5f2d1841959744abed92a6b;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ConditionalIfNode;1286;-2671.67,-3088.934;Inherit;False;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;417;-61.59919,-2917.645;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;46;-4750.576,-2345.262;Inherit;True;Property;_Albedo5;Albedo 5;24;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 5;0;0;False;0;False;None;c787bdaf6230f4b48a70eca7221420ad;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;438;-306.9815,-2667.127;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;43;-3970.749,-3316.846;Inherit;True;Property;_Albedo2;Albedo 2;6;3;[Header];[NoScaleOffset];[SingleLineTexture];Create;True;1;Textures 2;0;0;False;0;False;None;c0a45b109fd65b046936482efba94d21;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;428;-57.96418,-2427.369;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;127;-333.0355,-1916.042;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;932;-3741.879,-1699.43;Inherit;True;Property;_TextureSample117;Texture Sample 117;25;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WireNode;429;-578.1536,-2212.767;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;129;-333.0365,-1796.79;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;430;-305.4044,-2444.208;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;375;-1145.655,-2939.559;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;-999.5814,-3904.891;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;0;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;5;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Universal2D;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;8;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;True;4;d3d11;glcore;gles;gles3;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;6;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=DepthNormals;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;7;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;False;False;True;1;LightMode=UniversalGBuffer;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;9;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;True;4;d3d11;glcore;gles;gles3;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;4;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;3;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1;1482.389,3872.617;Half;False;True;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;uTerrains_Shader_LOD;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;19;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;6;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;False;False;True;1;LightMode=UniversalForward;False;False;0;Hidden/InternalErrorShader;0;0;Standard;40;Workflow;0;637838400787734890;Surface;0;637838607566779460;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;0;Fragment Normal Space,InvertActionOnDeselection;0;637838340752636060;Transmission;0;0;  Transmission Shadow;0.5,False,-1;0;Translucency;0;0;  Translucency Strength;1,False,-1;0;  Normal Distortion;0.5,False,-1;0;  Scattering;2,False,-1;0;  Direct;0.9,False,-1;0;  Ambient;0.1,False,-1;0;  Shadow;0.5,False,-1;0;Cast Shadows;1;0;  Use Shadow Threshold;1;637837049334647640;Receive Shadows;1;0;GPU Instancing;1;0;LOD CrossFade;1;637838598098262670;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;DOTS Instancing;0;0;Tessellation;0;637839936484844920;  Phong;1;637838398215314040;  Strength;1,True,-14;637838611146497990;  Type;1;637836364302939060;  Tess;5,True,-15;637838610927866090;  Min;25,True,-16;637838611006922130;  Max;25,True,-17;637838611072956620;  Edge Length;16,True,396;0;  Max Displacement;25,True,459;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;637838337124132950;Debug Display;0;0;Clear Coat;0;0;0;10;False;True;True;True;True;True;True;True;True;True;False;;True;0
WireConnection;1314;0;1327;0
WireConnection;1314;2;956;1
WireConnection;1054;0;1051;0
WireConnection;1054;1;1061;0
WireConnection;1315;0;1327;0
WireConnection;1315;2;929;1
WireConnection;1318;0;1326;3
WireConnection;1318;2;950;1
WireConnection;1317;0;1326;3
WireConnection;1317;2;905;1
WireConnection;1071;0;1076;0
WireConnection;1071;1;903;0
WireConnection;1034;0;1031;0
WireConnection;1034;1;1041;0
WireConnection;1031;0;1035;0
WireConnection;1031;1;1037;0
WireConnection;1308;0;1326;0
WireConnection;1308;2;946;1
WireConnection;1319;0;1326;3
WireConnection;1319;2;923;1
WireConnection;1321;0;1326;2
WireConnection;1321;2;954;1
WireConnection;1323;0;1326;0
WireConnection;1323;2;934;1
WireConnection;1253;0;919;0
WireConnection;1040;0;1029;0
WireConnection;1040;1;947;0
WireConnection;1325;0;1326;1
WireConnection;1325;2;904;1
WireConnection;1327;0;114;0
WireConnection;939;0;936;0
WireConnection;939;1;937;0
WireConnection;927;0;897;0
WireConnection;927;1;925;0
WireConnection;1065;0;1066;0
WireConnection;1065;1;1072;0
WireConnection;1033;0;1034;0
WireConnection;1033;1;1040;0
WireConnection;1036;0;1026;0
WireConnection;1036;1;942;0
WireConnection;1316;0;1327;0
WireConnection;1316;2;906;1
WireConnection;1051;0;1055;0
WireConnection;1051;1;1057;0
WireConnection;910;0;1322;0
WireConnection;910;1;382;2
WireConnection;931;0;959;0
WireConnection;931;1;917;0
WireConnection;1320;0;1326;2
WireConnection;1320;2;945;1
WireConnection;1069;0;1077;0
WireConnection;1069;1;942;0
WireConnection;1326;0;113;0
WireConnection;947;0;114;1
WireConnection;947;1;1252;0
WireConnection;1032;0;1033;0
WireConnection;1032;1;1039;0
WireConnection;1258;0;1255;0
WireConnection;1258;1;1257;0
WireConnection;962;0;910;0
WireConnection;917;0;963;0
WireConnection;961;0;928;0
WireConnection;1248;0;960;0
WireConnection;1057;0;1047;0
WireConnection;1057;1;944;0
WireConnection;925;0;1324;0
WireConnection;925;1;382;1
WireConnection;1072;0;1081;0
WireConnection;1072;1;943;0
WireConnection;1052;0;1053;0
WireConnection;1052;1;1059;0
WireConnection;1041;0;1028;0
WireConnection;1041;1;924;0
WireConnection;964;0;909;0
WireConnection;964;1;895;0
WireConnection;948;0;1309;0
WireConnection;948;1;382;1
WireConnection;1252;0;931;0
WireConnection;895;0;1313;0
WireConnection;895;1;382;1
WireConnection;942;0;113;2
WireConnection;942;1;1249;0
WireConnection;1053;0;1054;0
WireConnection;1053;1;1060;0
WireConnection;903;0;113;1
WireConnection;903;1;1248;0
WireConnection;1056;0;1046;0
WireConnection;1056;1;942;0
WireConnection;1324;0;1326;1
WireConnection;1324;2;930;1
WireConnection;924;0;113;4
WireConnection;924;1;1251;0
WireConnection;1322;0;1326;2
WireConnection;1322;2;911;1
WireConnection;1309;0;1326;0
WireConnection;1309;2;922;1
WireConnection;943;0;114;2
WireConnection;943;1;1253;0
WireConnection;915;0;939;0
WireConnection;915;1;957;0
WireConnection;1251;0;915;0
WireConnection;1250;0;902;0
WireConnection;1255;0;1260;4
WireConnection;1255;1;1259;0
WireConnection;1310;0;1326;1
WireConnection;1310;2;932;1
WireConnection;1055;0;1058;0
WireConnection;1055;1;1056;0
WireConnection;1066;0;1067;0
WireConnection;1066;1;1073;0
WireConnection;907;0;1320;0
WireConnection;907;1;382;0
WireConnection;952;0;1316;0
WireConnection;952;1;382;0
WireConnection;1249;0;921;0
WireConnection;1070;0;1078;0
WireConnection;1070;1;944;0
WireConnection;1266;0;113;1
WireConnection;1266;2;381;0
WireConnection;110;0;47;0
WireConnection;110;1;392;0
WireConnection;110;7;42;1
WireConnection;109;0;46;0
WireConnection;109;1;400;0
WireConnection;109;7;42;1
WireConnection;367;1;409;0
WireConnection;367;7;42;1
WireConnection;366;1;408;0
WireConnection;366;7;42;1
WireConnection;365;1;407;0
WireConnection;365;7;42;1
WireConnection;364;1;406;0
WireConnection;364;7;42;1
WireConnection;108;0;45;0
WireConnection;108;1;397;0
WireConnection;108;7;42;1
WireConnection;107;0;44;0
WireConnection;107;1;399;0
WireConnection;107;7;42;1
WireConnection;360;1;404;0
WireConnection;360;7;42;1
WireConnection;363;1;405;0
WireConnection;363;7;42;1
WireConnection;106;0;43;0
WireConnection;106;1;393;0
WireConnection;106;7;42;1
WireConnection;361;1;402;0
WireConnection;361;7;42;1
WireConnection;959;0;952;0
WireConnection;959;1;918;0
WireConnection;105;0;42;0
WireConnection;105;1;390;0
WireConnection;105;7;42;1
WireConnection;897;0;1310;0
WireConnection;897;1;382;0
WireConnection;368;1;410;0
WireConnection;368;7;42;1
WireConnection;369;1;411;0
WireConnection;369;7;42;1
WireConnection;362;1;403;0
WireConnection;362;7;42;1
WireConnection;371;1;413;0
WireConnection;371;7;42;1
WireConnection;930;1;404;0
WireConnection;930;7;965;1
WireConnection;908;0;933;0
WireConnection;908;1;948;0
WireConnection;940;0;896;0
WireConnection;940;1;392;0
WireConnection;940;7;965;1
WireConnection;929;1;411;0
WireConnection;929;7;965;1
WireConnection;956;1;410;0
WireConnection;956;7;965;1
WireConnection;906;0;901;0
WireConnection;906;1;400;0
WireConnection;906;7;965;1
WireConnection;954;1;406;0
WireConnection;954;7;965;1
WireConnection;950;0;920;0
WireConnection;950;1;397;0
WireConnection;950;7;965;1
WireConnection;905;1;408;0
WireConnection;905;7;965;1
WireConnection;911;1;407;0
WireConnection;911;7;965;1
WireConnection;945;0;913;0
WireConnection;945;1;399;0
WireConnection;945;7;965;1
WireConnection;370;1;412;0
WireConnection;370;7;42;1
WireConnection;934;1;403;0
WireConnection;934;7;965;1
WireConnection;922;1;402;0
WireConnection;922;7;965;1
WireConnection;946;0;965;0
WireConnection;946;1;390;0
WireConnection;946;7;965;1
WireConnection;923;1;409;0
WireConnection;923;7;965;1
WireConnection;902;0;898;0
WireConnection;902;1;962;0
WireConnection;960;0;908;0
WireConnection;960;1;938;0
WireConnection;1058;0;1045;0
WireConnection;1058;1;903;0
WireConnection;898;0;907;0
WireConnection;898;1;926;0
WireConnection;928;0;1325;0
WireConnection;928;1;382;2
WireConnection;918;0;1314;0
WireConnection;918;1;382;1
WireConnection;963;0;1315;0
WireConnection;963;1;382;2
WireConnection;944;0;113;3
WireConnection;944;1;1250;0
WireConnection;936;0;1318;0
WireConnection;936;1;382;0
WireConnection;919;0;964;0
WireConnection;919;1;912;0
WireConnection;937;0;1317;0
WireConnection;937;1;382;1
WireConnection;926;0;1321;0
WireConnection;926;1;382;1
WireConnection;1067;0;1064;0
WireConnection;1067;1;1074;0
WireConnection;957;0;953;0
WireConnection;1037;0;1027;0
WireConnection;1037;1;944;0
WireConnection;1262;0;1256;0
WireConnection;1262;1;130;0
WireConnection;1262;2;1261;0
WireConnection;912;0;916;0
WireConnection;938;0;914;0
WireConnection;933;0;1308;0
WireConnection;933;1;382;0
WireConnection;914;0;1323;0
WireConnection;914;1;382;2
WireConnection;1039;0;1030;0
WireConnection;1039;1;943;0
WireConnection;1064;0;1068;0
WireConnection;1064;1;1070;0
WireConnection;909;0;1312;0
WireConnection;909;1;382;0
WireConnection;953;0;1319;0
WireConnection;953;1;382;2
WireConnection;916;0;1311;0
WireConnection;916;1;382;2
WireConnection;1261;0;1258;0
WireConnection;1035;0;1038;0
WireConnection;1035;1;1036;0
WireConnection;1073;0;1080;0
WireConnection;1073;1;947;0
WireConnection;1061;0;1048;0
WireConnection;1061;1;924;0
WireConnection;904;1;405;0
WireConnection;904;7;965;1
WireConnection;409;0;1275;0
WireConnection;409;1;488;0
WireConnection;397;0;1273;0
WireConnection;397;1;488;0
WireConnection;596;0;595;0
WireConnection;596;1;599;0
WireConnection;406;0;1271;0
WireConnection;406;1;487;0
WireConnection;1271;0;113;3
WireConnection;1271;2;380;0
WireConnection;408;0;1274;0
WireConnection;408;1;488;0
WireConnection;1276;0;114;1
WireConnection;1276;2;379;0
WireConnection;382;0;1254;0
WireConnection;1254;0;596;0
WireConnection;1275;0;113;4
WireConnection;1275;2;381;0
WireConnection;390;0;1264;0
WireConnection;390;1;485;0
WireConnection;1273;0;113;4
WireConnection;1273;2;379;0
WireConnection;1274;0;113;4
WireConnection;1274;2;380;0
WireConnection;410;0;1277;0
WireConnection;410;1;489;0
WireConnection;1279;0;114;2
WireConnection;1279;2;379;0
WireConnection;411;0;1278;0
WireConnection;411;1;489;0
WireConnection;424;0;423;0
WireConnection;1311;0;1327;1
WireConnection;1311;2;941;1
WireConnection;387;0;1286;0
WireConnection;387;1;382;0
WireConnection;1068;0;1071;0
WireConnection;1068;1;1069;0
WireConnection;130;0;129;0
WireConnection;130;1;137;0
WireConnection;432;0;433;0
WireConnection;432;1;434;0
WireConnection;389;0;385;0
WireConnection;1278;0;114;1
WireConnection;1278;2;381;0
WireConnection;402;0;1265;0
WireConnection;402;1;485;0
WireConnection;412;0;1280;0
WireConnection;412;1;490;0
WireConnection;137;0;114;2
WireConnection;137;1;428;0
WireConnection;386;0;1285;0
WireConnection;386;1;382;1
WireConnection;1280;0;114;2
WireConnection;1280;2;380;0
WireConnection;1277;0;114;1
WireConnection;1277;2;380;0
WireConnection;1281;0;114;2
WireConnection;1281;2;381;0
WireConnection;132;0;113;1
WireConnection;132;1;373;0
WireConnection;413;0;1281;0
WireConnection;413;1;490;0
WireConnection;407;0;1272;0
WireConnection;407;1;487;0
WireConnection;597;0;595;0
WireConnection;1270;0;113;3
WireConnection;1270;2;379;0
WireConnection;379;0;372;1
WireConnection;379;1;606;0
WireConnection;381;0;610;0
WireConnection;381;1;372;1
WireConnection;606;0;602;0
WireConnection;606;1;372;2
WireConnection;610;0;609;0
WireConnection;610;1;372;0
WireConnection;601;0;593;0
WireConnection;595;0;594;0
WireConnection;595;1;592;0
WireConnection;372;0;343;0
WireConnection;602;0;601;0
WireConnection;594;0;593;0
WireConnection;609;0;602;2
WireConnection;607;0;602;1
WireConnection;607;1;372;0
WireConnection;1264;0;113;1
WireConnection;1264;2;379;0
WireConnection;599;0;598;0
WireConnection;599;1;600;0
WireConnection;1267;0;113;2
WireConnection;1267;2;379;0
WireConnection;392;0;1279;0
WireConnection;392;1;490;0
WireConnection;1272;0;113;3
WireConnection;1272;2;381;0
WireConnection;380;0;607;0
WireConnection;380;1;372;2
WireConnection;400;0;1276;0
WireConnection;400;1;489;0
WireConnection;405;0;1269;0
WireConnection;405;1;486;0
WireConnection;393;0;1267;0
WireConnection;393;1;486;0
WireConnection;399;0;1270;0
WireConnection;399;1;487;0
WireConnection;403;0;485;0
WireConnection;403;1;1266;0
WireConnection;404;0;1268;0
WireConnection;404;1;486;0
WireConnection;598;0;597;0
WireConnection;598;1;597;1
WireConnection;598;2;597;2
WireConnection;1268;0;113;2
WireConnection;1268;2;380;0
WireConnection;1269;0;113;2
WireConnection;1269;2;381;0
WireConnection;1265;0;113;1
WireConnection;1265;2;380;0
WireConnection;419;0;1290;0
WireConnection;419;1;382;2
WireConnection;437;0;438;0
WireConnection;437;1;430;0
WireConnection;1292;0;1303;2
WireConnection;1292;2;107;0
WireConnection;1291;0;1303;2
WireConnection;1291;2;364;0
WireConnection;1290;0;1303;2
WireConnection;1290;2;365;0
WireConnection;1285;0;1303;1
WireConnection;1285;2;360;0
WireConnection;1288;0;1303;0
WireConnection;1288;2;361;0
WireConnection;1305;0;114;0
WireConnection;1298;0;1305;0
WireConnection;1298;2;368;0
WireConnection;1289;0;1303;0
WireConnection;1289;2;105;0
WireConnection;1303;0;113;0
WireConnection;427;0;432;0
WireConnection;427;1;429;0
WireConnection;136;0;114;1
WireConnection;136;1;427;0
WireConnection;1284;0;1303;1
WireConnection;1284;2;363;0
WireConnection;423;0;1293;0
WireConnection;423;1;382;2
WireConnection;1293;0;1303;3
WireConnection;1293;2;367;0
WireConnection;1294;0;1303;3
WireConnection;1294;2;108;0
WireConnection;1295;0;1303;3
WireConnection;1295;2;366;0
WireConnection;1287;0;1303;0
WireConnection;1287;2;362;0
WireConnection;900;1;412;0
WireConnection;900;7;965;1
WireConnection;921;0;927;0
WireConnection;921;1;961;0
WireConnection;1060;0;1049;0
WireConnection;1060;1;947;0
WireConnection;1059;0;1050;0
WireConnection;1059;1;943;0
WireConnection;1074;0;1079;0
WireConnection;1074;1;924;0
WireConnection;1312;0;1327;1
WireConnection;1312;2;940;1
WireConnection;415;0;420;0
WireConnection;415;1;417;0
WireConnection;418;0;1295;0
WireConnection;418;1;382;1
WireConnection;1313;0;1327;1
WireConnection;1313;2;900;1
WireConnection;1038;0;1025;0
WireConnection;1038;1;903;0
WireConnection;1297;0;1305;0
WireConnection;1297;2;369;0
WireConnection;1299;0;1305;1
WireConnection;1299;2;370;0
WireConnection;134;0;113;3
WireConnection;134;1;415;0
WireConnection;1301;0;1305;1
WireConnection;1301;2;371;0
WireConnection;1296;0;1305;0
WireConnection;1296;2;109;0
WireConnection;941;1;413;0
WireConnection;941;7;965;1
WireConnection;433;0;1296;0
WireConnection;433;1;382;0
WireConnection;1300;0;1305;1
WireConnection;1300;2;110;0
WireConnection;422;0;1291;0
WireConnection;422;1;382;1
WireConnection;374;0;378;0
WireConnection;374;1;376;0
WireConnection;420;0;421;0
WireConnection;420;1;422;0
WireConnection;436;0;435;0
WireConnection;416;0;425;0
WireConnection;416;1;424;0
WireConnection;133;0;113;2
WireConnection;133;1;384;0
WireConnection;135;0;113;4
WireConnection;135;1;416;0
WireConnection;384;0;388;0
WireConnection;384;1;389;0
WireConnection;376;0;1288;0
WireConnection;376;1;382;1
WireConnection;377;0;1287;0
WireConnection;377;1;382;2
WireConnection;426;0;1294;0
WireConnection;426;1;382;0
WireConnection;126;0;132;0
WireConnection;126;1;133;0
WireConnection;378;0;1289;0
WireConnection;378;1;382;0
WireConnection;373;0;374;0
WireConnection;373;1;375;0
WireConnection;425;0;426;0
WireConnection;425;1;418;0
WireConnection;385;0;1284;0
WireConnection;385;1;382;2
WireConnection;388;0;387;0
WireConnection;388;1;386;0
WireConnection;435;0;1301;0
WireConnection;435;1;382;2
WireConnection;431;0;1297;0
WireConnection;431;1;382;2
WireConnection;421;0;1292;0
WireConnection;421;1;382;0
WireConnection;128;0;127;0
WireConnection;128;1;135;0
WireConnection;434;0;1298;0
WireConnection;434;1;382;1
WireConnection;1286;0;1303;1
WireConnection;1286;2;106;0
WireConnection;417;0;419;0
WireConnection;438;0;1300;0
WireConnection;438;1;382;0
WireConnection;428;0;437;0
WireConnection;428;1;436;0
WireConnection;127;0;126;0
WireConnection;127;1;134;0
WireConnection;932;0;958;0
WireConnection;932;1;393;0
WireConnection;932;7;965;1
WireConnection;429;0;431;0
WireConnection;129;0;128;0
WireConnection;129;1;136;0
WireConnection;430;0;1299;0
WireConnection;430;1;382;1
WireConnection;375;0;377;0
WireConnection;1;0;1262;0
WireConnection;1;9;1032;0
WireConnection;1;4;1052;0
WireConnection;1;5;1065;0
ASEEND*/
//CHKSM=9E44FFB018C6B3525882D86DB9A515E6DA991E48