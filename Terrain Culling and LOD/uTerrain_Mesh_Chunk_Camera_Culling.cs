using System.Collections.Generic;
using System.Threading.Tasks;
using UltimateTerrains;
using Unity.Burst;
using Unity.Collections;
using Unity.Jobs;
using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Rendering;

namespace StoneReverieGames.Terrain
{
    [BurstCompile]
    public class uTerrain_Mesh_Chunk_Camera_Culling : MonoBehaviour
    {
        public UltimateTerrain _terrain;
        public bool _autoFindCamera = true;
        public Camera _effectedCamera;
        //public bool _ignoreDemondRendering = false;
        public int _renderingLayerMask = 0;
        public Material _shadowOnlyMaterial;
        //public bool _useFadeMaterial = false;
        //[Range(0.25f, 10f)] public float _fadeRayRadius = 2f;

        protected Dictionary<int, CullData> _meshes = new Dictionary<int, CullData>();
        //protected Dictionary<Collider, CullData> _collider = new Dictionary<Collider, CullData>();
        protected List<CullData> _meshes_list = new List<CullData>();
        protected List<CullData> _meshes_list_runtime = new List<CullData>();
        protected bool init;

        [System.Serializable]
        public class CullData
        {
            public Matrix4x4 _transform;
            public MeshRenderer _renderer;
            public MeshFilter _filter;
            public int _id;
            public float3 _minBounds, _maxBounds;
            public ChunkComponent _chunk;
            public Collider _collider;

            //public float _fadeTimer;
        }

        protected bool _isRenderFrame;

        protected bool _needUpdateVisibleData;

        protected JobHandle _visibleHandle;
        protected VisibilityJob _visibleJob;
        protected MaterialPropertyBlock _propertyBlock;

        [System.Serializable]
        public struct LOD_data
        {
            public Material Original_Material, /* LOD_0_Fade_Material, */ LOD_1_Material, LOD_2_Material;
            [Range(3, 7)] public int _min_LOD_2_Material_LOD;
        }

        protected Dictionary<Material, LOD_data> _lod_materials_dic = new Dictionary<Material, LOD_data>();

        public List<LOD_data> LOD_Materials = new List<LOD_data>();


        protected void OnChunkEnabled(ChunkComponent sender, ChunkColliderComponent collider, GrassComponent grass, Mesh chunkMesh)
        {
            bool isKey = _meshes.ContainsKey(sender.Id);
            if (isKey)
            {
                CullData _data = _meshes[sender.Id];
                if (_data._renderer != null) _data._renderer.enabled = false;
            }
        }

        protected void OnChunkCreated(ChunkComponent sender, ChunkColliderComponent collider, GrassComponent grass, Mesh chunkMesh)
        {
            bool isKey = _meshes.ContainsKey(sender.Id);

            if (isKey == false)
            {
                CullData _data = new CullData();
                MeshRenderer mr = sender.GetComponent<MeshRenderer>();
                _data._renderer = mr;
                _data._filter = sender.Filter;
                _data._transform = sender.Filter.transform.localToWorldMatrix;
                _data._id = sender.Id;
                _data._minBounds = _data._renderer.bounds.min;
                _data._maxBounds = _data._renderer.bounds.max;

                _data._renderer.enabled = false;
                _data._chunk = sender;

                _meshes.Add(sender.Id, _data);
                _meshes_list.Add(_data);
                // if (_data._chunk.HasMeshCollider)
                // {
                //     _data._collider = _data._chunk.GetComponentInChildren<ChunkColliderComponent>().GetComponent<Collider>();
                //     // if (_data._collider != null)
                //     //     _collider.Add(_data._collider, _data);
                //     _collider.Add(_data._collider, _data);
                // }

                _needUpdateVisibleData = true;
            }
            else
            {
                CullData _data = _meshes[sender.Id];
                _data._id = sender.Id;
                _data._transform = sender.Filter.transform.localToWorldMatrix;
                _data._minBounds = _data._renderer.bounds.min;
                _data._maxBounds = _data._renderer.bounds.max;

                _data._renderer.enabled = false;

                _needUpdateVisibleData = true;
            }
        }

        protected void OnChunkDropped(ChunkComponent sender, ChunkColliderComponent collider, GrassComponent grass)
        {
            if (_meshes.ContainsKey(sender.Id))
            {
                if (_meshes[sender.Id]._renderer != null) _meshes[sender.Id]._renderer.enabled = true;

                //if (_meshes[sender.Id]._collider != null && _collider.ContainsKey(_meshes[sender.Id]._collider)) _collider.Remove(_meshes[sender.Id]._collider);

                _meshes_list.Remove(_meshes[sender.Id]);
                _meshes.Remove(sender.Id);

                _needUpdateVisibleData = true;
            }
        }

        protected void Update()
        {
            if (_terrain != null && _autoFindCamera && _effectedCamera == null)
            {
                _effectedCamera = Camera.main;
                if (_effectedCamera == null) _effectedCamera = FindObjectOfType<Camera>();
            }

            if (_terrain != null && !init)
                Register(true, false);


            if (init && _effectedCamera != null)
            {
                _isRenderFrame = OnDemandRendering.willCurrentFrameRender;// _ignoreDemondRendering == false ? OnDemandRendering.willCurrentFrameRender/*  Time.frameCount % OnDemandRendering.renderFrameInterval == 0 */ : true;

                if (_needUpdateVisibleData || _meshes_list_runtime.Count != _meshes_list.Count && _meshes_list_runtime.Count != 0)
                {
                    _needUpdateVisibleData = false;
                    UpdateVisibleJobData();
                }


                if (_meshes_list_runtime.Count > 0 && _isRenderFrame)
                {

                    if (_visibleJob._planeNormal.IsCreated)
                    {
                        Plane[] frustrumPlanes = GeometryUtility.CalculateFrustumPlanes(_effectedCamera);

                        _visibleJob._planeNormal[0] = frustrumPlanes[0].normal;
                        _visibleJob._planeNormal[1] = frustrumPlanes[1].normal;
                        _visibleJob._planeNormal[2] = frustrumPlanes[2].normal;
                        _visibleJob._planeNormal[3] = frustrumPlanes[3].normal;
                        _visibleJob._planeNormal[4] = frustrumPlanes[4].normal;
                        _visibleJob._planeNormal[5] = frustrumPlanes[5].normal;

                        _visibleJob._planeDistance[0] = frustrumPlanes[0].distance;
                        _visibleJob._planeDistance[1] = frustrumPlanes[1].distance;
                        _visibleJob._planeDistance[2] = frustrumPlanes[2].distance;
                        _visibleJob._planeDistance[3] = frustrumPlanes[3].distance;
                        _visibleJob._planeDistance[4] = frustrumPlanes[4].distance;
                        _visibleJob._planeDistance[5] = frustrumPlanes[5].distance;

                        _visibleHandle = _visibleJob.Schedule(_visibleJob._boundsMin.Length, 32);
                    }
                }
            }
        }

        protected void RenderPass2()
        {
            if (init && _effectedCamera != null)
            {
                if (_meshes_list_runtime.Count > 0/*  && _isRenderFrame */)
                {
                    bool isCreated = _visibleJob._isVisibleOutput.IsCreated;

                    if (isCreated)
                    {
                        _visibleHandle.Complete();

                        var camera = _effectedCamera;
#if UNITY_EDITOR
                        var sceneView = UnityEditor.SceneView.lastActiveSceneView;
#endif

                        for (int m = _meshes_list_runtime.Count - 1; m >= 0; m--)
                        {
                            var workItem = _meshes_list_runtime[m];

                            bool isVisible = _visibleJob._isVisibleOutput[m];
                            if (workItem._filter.sharedMesh != null && workItem._renderer != null)
                            {
                                for (int s = 0; s < workItem._filter.sharedMesh.subMeshCount; s++)
                                {
                                    if (isVisible)
                                    {
                                        Material mat = workItem._renderer.sharedMaterials[s];
                                        if (_lod_materials_dic.ContainsKey(mat))
                                        {
                                            var matItem = _lod_materials_dic[mat];
                                            if (workItem._chunk.Level != 1)
                                            {
                                                if (workItem._chunk.Level < matItem._min_LOD_2_Material_LOD && matItem.LOD_1_Material != null) mat = matItem.LOD_1_Material;
                                                else if (workItem._chunk.Level >= matItem._min_LOD_2_Material_LOD && matItem.LOD_2_Material != null) mat = matItem.LOD_2_Material;
                                            }
                                        }


                                        Graphics.DrawMesh(workItem._filter.sharedMesh, workItem._transform, mat, _renderingLayerMask, camera, s);
                                    }
                                    else if (!isVisible && _shadowOnlyMaterial != null && workItem._renderer.shadowCastingMode == ShadowCastingMode.On)
                                        Graphics.DrawMesh(workItem._filter.sharedMesh, workItem._transform, _shadowOnlyMaterial, _renderingLayerMask, camera, s, _propertyBlock, ShadowCastingMode.ShadowsOnly, false);
                                    else if (!isVisible && _shadowOnlyMaterial == null && workItem._renderer.shadowCastingMode == ShadowCastingMode.On)
                                    {
                                        Graphics.DrawMesh(workItem._filter.sharedMesh, workItem._transform, workItem._renderer.sharedMaterials[s], _renderingLayerMask, camera, s, _propertyBlock, ShadowCastingMode.ShadowsOnly, false);
                                    }

#if UNITY_EDITOR
                                    if (sceneView != null && sceneView.camera != null)
                                    {
                                        if (isVisible)
                                        {
                                            Material mat = workItem._renderer.sharedMaterials[s];
                                            if (_lod_materials_dic.ContainsKey(mat))
                                            {
                                                var matItem = _lod_materials_dic[mat];
                                                if (workItem._chunk.Level != 1)
                                                {
                                                    if (workItem._chunk.Level == 2 && matItem.LOD_1_Material != null) mat = matItem.LOD_1_Material;
                                                    else if (workItem._chunk.Level != 2 && matItem.LOD_2_Material != null) mat = matItem.LOD_2_Material;
                                                }
                                            }

                                            Graphics.DrawMesh(workItem._filter.sharedMesh, workItem._transform, mat, _renderingLayerMask, sceneView.camera, s);
                                        }
                                        else if (!isVisible && _shadowOnlyMaterial != null && workItem._renderer.shadowCastingMode == ShadowCastingMode.On)
                                            Graphics.DrawMesh(workItem._filter.sharedMesh, workItem._transform, _shadowOnlyMaterial, _renderingLayerMask, sceneView.camera, s, _propertyBlock, ShadowCastingMode.ShadowsOnly, false);
                                        else if (!isVisible && _shadowOnlyMaterial == null && workItem._renderer.shadowCastingMode == ShadowCastingMode.On)
                                        {
                                            Graphics.DrawMesh(workItem._filter.sharedMesh, workItem._transform, workItem._renderer.sharedMaterials[s], _renderingLayerMask, sceneView.camera, s, _propertyBlock, ShadowCastingMode.ShadowsOnly, false);
                                        }
                                    }
#endif
                                }
                            }

                            //if (workItem._fadeTimer >= 0f) workItem._fadeTimer -= Time.deltaTime;
                        }
                    }
                }
            }

        }

        // Collider[] _rayResults;

        // protected void FixedUpdate()
        // {
        //     if (init && _effectedCamera != null && _useFadeMaterial)
        //     {
        //         if (_rayResults == null) _rayResults = new Collider[8];
        //         //Debug.Log(_terrain.Params.ChunkLayer);
        //         int colls = Physics.OverlapSphereNonAlloc(_effectedCamera.transform.position, _fadeRayRadius, _rayResults, 1 << _terrain.Params.ChunkLayer, QueryTriggerInteraction.Ignore);
        //         for (int i = 0; i < colls; i++)
        //         {
        //             //Debug.Log(1);
        //             if (_collider.ContainsKey(_rayResults[i]))
        //             {
        //                 //Debug.Log(2);
        //                 _collider[_rayResults[i]]._fadeTimer = 0.3f;
        //             }
        //         }
        //     }
        // }

        protected void OnDestroy()
        {
            if (_terrain != null)
                Register(false, false);
        }

        protected void OnEnable()
        {
            if (_terrain != null && !init)
                Register(true, false);
        }

        protected void OnDisable()
        {
            if (_terrain != null)
                Register(false, false);
        }


        protected void Register(bool _isRegister, bool _isReset)
        {
            if (_isRegister && _terrain != null && !init)
            {
                _terrain.OnChunkCreated -= OnChunkCreated;
                _terrain.OnChunkCreated += OnChunkCreated;

                _terrain.OnChunkDropped -= OnChunkDropped;
                _terrain.OnChunkDropped += OnChunkDropped;

                _terrain.OnChunkEnabled -= OnChunkEnabled;
                _terrain.OnChunkEnabled += OnChunkEnabled;

                Dispose();
                ClearMeshes();

                _propertyBlock = new MaterialPropertyBlock();

                _lod_materials_dic.Clear();
                for (int m = 0; m < LOD_Materials.Count; m++)
                {
                    _lod_materials_dic.Add(LOD_Materials[m].Original_Material, LOD_Materials[m]);
                }

                RenderPipelineManager.beginContextRendering -= beginContextRendering;
                RenderPipelineManager.beginContextRendering += beginContextRendering;

                init = true;
            }
            else if (!_isRegister && _terrain != null && init)
            {
                if (!_isReset)
                {
                    _terrain.OnChunkCreated -= OnChunkCreated;
                    _terrain.OnChunkDropped -= OnChunkDropped;
                    _terrain.OnChunkEnabled -= OnChunkEnabled;

                    RenderPipelineManager.beginContextRendering -= beginContextRendering;
                }

                Dispose();
                ClearMeshes();

                _propertyBlock = null;

                if (!_isReset)
                    init = false;
            }
        }

        private void beginContextRendering(ScriptableRenderContext arg1, List<Camera> arg2)
        {
            RenderPass2();
        }

        protected void ClearMeshes()
        {
            for (int a = 0; a < _meshes_list.Count; a++)
            {
                if (_meshes_list[a]._renderer != null)
                {
                    _meshes_list[a]._renderer.enabled = true;
                    _meshes_list[a]._renderer.shadowCastingMode = ShadowCastingMode.On;
                }

            }

            _meshes.Clear();
            _meshes_list.Clear();
            //_lod_materials_dic.Clear();
        }

        protected void Dispose()
        {
            if (_visibleJob.Equals(default(VisibilityJob)) == false)
            {
                _visibleHandle.Complete();

                if (_visibleJob._boundsMax.IsCreated) _visibleJob._boundsMax.Dispose();
                if (_visibleJob._boundsMin.IsCreated) _visibleJob._boundsMin.Dispose();
                if (_visibleJob._isVisibleOutput.IsCreated) _visibleJob._isVisibleOutput.Dispose();

                if (_visibleJob._planeDistance.IsCreated) _visibleJob._planeDistance.Dispose();
                if (_visibleJob._planeNormal.IsCreated) _visibleJob._planeNormal.Dispose();
            }
        }

        protected void UpdateVisibleJobData()
        {
            _meshes_list_runtime.Clear();
            _meshes_list_runtime = new List<CullData>(_meshes_list);

            _visibleHandle.Complete();

            if (_visibleJob.Equals(default(VisibilityJob))) _visibleJob = new VisibilityJob();

            if (_visibleJob._boundsMax.IsCreated) _visibleJob._boundsMax.Dispose();
            if (_visibleJob._boundsMin.IsCreated) _visibleJob._boundsMin.Dispose();
            if (_visibleJob._isVisibleOutput.IsCreated) _visibleJob._isVisibleOutput.Dispose();

            _visibleJob._boundsMax = new NativeArray<float3>(_meshes_list_runtime.Count, Allocator.Persistent);
            _visibleJob._boundsMin = new NativeArray<float3>(_meshes_list_runtime.Count, Allocator.Persistent);
            _visibleJob._isVisibleOutput = new NativeArray<bool>(_meshes_list_runtime.Count, Allocator.Persistent);

            if (_visibleJob._planeDistance.IsCreated == false) _visibleJob._planeDistance = new NativeArray<float>(6, Allocator.Persistent);
            if (_visibleJob._planeNormal.IsCreated == false) _visibleJob._planeNormal = new NativeArray<float3>(6, Allocator.Persistent);

            Parallel.For(0, _meshes_list_runtime.Count, (int m) =>
            {
                _visibleJob._boundsMin[m] = _meshes_list_runtime[m]._minBounds;
                _visibleJob._boundsMax[m] = _meshes_list_runtime[m]._maxBounds;

                _visibleJob._isVisibleOutput[m] = true;
            });
        }


        [BurstCompile]
        public struct VisibilityJob : IJobParallelFor
        {
            [NativeDisableParallelForRestriction, ReadOnly] public NativeArray<float3> _planeNormal;
            [NativeDisableParallelForRestriction, ReadOnly] public NativeArray<float> _planeDistance;

            [ReadOnly] public NativeArray<float3> _boundsMin, _boundsMax;


            [WriteOnly] public NativeArray<bool> _isVisibleOutput;

            public void Execute(int _i)
            {
                _isVisibleOutput[_i] = IsVisibleForm_Fast(_planeNormal, _planeDistance, _boundsMin[_i], _boundsMax[_i], false);
            }

            public bool IsVisibleForm_Fast(NativeArray<float3> planesNormal, NativeArray<float> planesDistance, float3 boundsMin, float3 boundsMax, bool testIntersection = false)
            {
                float3 vmin, vmax;
                var testResult = true;

                for (int planeIndex = 0; planeIndex < planesNormal.Length; planeIndex++)
                {
                    var normal = planesNormal[planeIndex];
                    var planeDistance = planesDistance[planeIndex];

                    // X axis
                    if (normal.x < 0)
                    {
                        vmin.x = boundsMin.x;
                        vmax.x = boundsMax.x;
                    }
                    else
                    {
                        vmin.x = boundsMax.x;
                        vmax.x = boundsMin.x;
                    }

                    // Y axis
                    if (normal.y < 0)
                    {
                        vmin.y = boundsMin.y;
                        vmax.y = boundsMax.y;
                    }
                    else
                    {
                        vmin.y = boundsMax.y;
                        vmax.y = boundsMin.y;
                    }

                    // Z axis
                    if (normal.z < 0)
                    {
                        vmin.z = boundsMin.z;
                        vmax.z = boundsMax.z;
                    }
                    else
                    {
                        vmin.z = boundsMax.z;
                        vmax.z = boundsMin.z;
                    }

                    var dot1 = normal.x * vmin.x + normal.y * vmin.y + normal.z * vmin.z;
                    if (dot1 + planeDistance < 0)
                        return false;

                    if (testIntersection)
                    {
                        var dot2 = normal.x * vmax.x + normal.y * vmax.y + normal.z * vmax.z;
                        if (dot2 + planeDistance <= 0)
                            testResult = true;//TestPlanesResults.Intersect;
                    }
                }

                return testResult;
            }
        }
    }
}
