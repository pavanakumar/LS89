#/bin/bash

rm -rf initial
rm -rf step_1
rm -rf step_2
rm -rf step_3
rm -rf constant
./p3d2gmsh.py LS89.p3d
gmshToFoam LS89.msh
cp system/createPatchDict.1 system/createPatchDict
createPatch
mv constant initial
mv 0.005 constant
stitchMesh -perfect -overwrite b4-to-stitch-a b5-to-stitch-b
stitchMesh -perfect -overwrite b7-to-stitch-a b8-to-stitch-b
stitchMesh -perfect -overwrite b9-to-stitch-a b10-to-stitch-b
stitchMesh -perfect -overwrite b11-to-stitch-a b12-to-stitch-b
stitchMesh -perfect -overwrite b13-to-stitch-a b14-to-stitch-b
stitchMesh -perfect -overwrite b15-to-stitch-a b16-to-stitch-b
stitchMesh -perfect -overwrite b19-to-stitch-a b20-to-stitch-b
stitchMesh -perfect -overwrite b21-to-stitch-a b22-to-stitch-b
stitchMesh -perfect -overwrite b23-to-stitch-a b24-to-stitch-b
stitchMesh -perfect -overwrite b27-to-stitch-a b28-to-stitch-b
stitchMesh -perfect -overwrite b29-to-stitch-a b30-to-stitch-b
stitchMesh -perfect -overwrite b31-to-stitch-a b32-to-stitch-b
stitchMesh -perfect -overwrite b35-to-stitch-a b36-to-stitch-b
stitchMesh -perfect -overwrite b37-to-stitch-a b38-to-stitch-b
stitchMesh -perfect -overwrite b42-to-stitch-a b43-to-stitch-b
stitchMesh -perfect -overwrite b44-to-stitch-a b45-to-stitch-b
cp system/createPatchDict.2 system/createPatchDict
createPatch
mv constant step_1
mv 0.005 constant
#cp system/createPatchDict.3 system/createPatchDict
#createPatch
#mv constant step_2
#mv 0.005 constant

