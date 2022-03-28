# Usage uTerrain Displacement Shader:
- Texture 1: VertexColour.r
- Texture 2: VertexColour.g
- Texture 3: VertexColour.b
- Texture 4: VertexColour.a
- Texture 5: VertexUV2.x
- Texture 6: VertexUV2.y

**If you use uTerrain with the Shader, make sure to disable "Duplicate Vertices" in the Terrain Inspector, and it works out of the box.**

[Demo Video of the Shader in URP](https://twitter.com/fratzl_GD/status/1508143816800362498?s=20&t=AqxVhyAfW8qc6vJEXI0OFw)

**Pictures:**
![Screenshot-20220328072149-862x527](https://user-images.githubusercontent.com/32310300/160331642-6cd0b939-7290-437b-a863-5f261d78ffa0.png)
![Screenshot-20220328072229-1019x589](https://user-images.githubusercontent.com/32310300/160331647-77388d12-5170-40de-b964-a62c06f3f262.png)

Requirements: URP 12+
Shadermodel 4.6 for the Tessellation Shader and 3.0 for the Default Shader

# Usage uTerrain Culling and LOD System:
Drag and drop the script on your uTerrain game object and assign the terrain in the inspector, optional can you assign a shadow only material and set up a LOD for textures which is perfect for my shader setup in this repo. 
