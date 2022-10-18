:: e.g. "F:\DRG Modding\DRGTools\UModel\umodel.exe"
set umodel_path="path to UModel.exe"
:: e.g. "F:\DRG Modding\DRGPacker\_unpacked\FSD\Content"
set content_path="path to unpacked content files"
:: e.g. 4.27
set ue_version=4.27 
:: e.g. "F:\DRG Modding\DRGPacker\JSON\Blender\SMs"
set output_path="path to output folder"

:: Animations:
%umodel_path% -path=%content_path% -game=ue4.27 -out=%output_path% -nooverwrite -nostat -novert -notex -nomorph -nolightmap -export *.uasset 

:: Static Meshes:
%umodel_path% -path=%content_path% -game=ue4.27 -out=%output_path% -gltf -nomesh -noanim -nooverwrite -novert -notex -nomorph -nolightmap -export *.uasset 