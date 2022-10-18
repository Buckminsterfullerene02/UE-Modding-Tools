# UE-Modding-Tools
A databank of every modding tool that has potential to be used across multiple UE games.

Any category is not ordered by any means, and any tool that is not listed here, but should be, please submit a PR.

Some of these tools may be unmaintained and/or outdated, but are still useful for those writing their own tools and may want to see how others implemented their tools.

The tag **[CU]** before a tool means that it is **C**ommonly **U**sed by multiple UE modding communities, so is highly recommended for personal use.

The tag **[PW]** before a tool means that it is **P**aywalled.

## Packers & Unpackers
Tools that deal with packing and unpacking the UE4 archive files.
* [ue4pak](https://github.com/Vilsol/ue4pak) - Written by **Vilsol**
    - Parses and extracts data from UE4 Pak files
* **[CU]** [UnrealPak](http://fluffyquack.com/tools/unrealpak.rar) - Put together by **FluffyQuack**
    - UnrealPak version from 2016 that is seemingly compatible with any UE4 game, that creates compressed pak files which results in smaller filesizes and theoretically faster loading
* **[CU]** [U4Pak](https://github.com/panzi/u4pak) - Written by **panzi**
    - U4Pak unpacks, packs, lists, checks and mounts UE4 .pak archives
* [U4Pak - Rust](https://github.com/panzi/rust-u4pak) - Written by **panzi**
    - Rust port of U4Pak

## Asset Editors, Parsers & Explorers
Tools that deal with editing and parsing the UE4 asset files, with formats including .uasset, .uexp, .ucas, .utoc, .umap etc. 
* [CUE4Parse](https://github.com/FabianFG/CUE4Parse) - Maintained by the FModel developers
    - C# Parser and API for UE packages & assets
* [JohnWickParse](https://github.com/SirWaddles/JohnWickParse) - Written by **SirWaddles, FabianFG, WorkingRobot & Amrsatrio**
    - A parser for uasset, uexp and pak files
* [UAssetAPI](https://github.com/atenfyr/UAssetAPI) - Written by **atenfyr**
    - A C# API for reading and writing UE4 .uasset files from 4.0 - 4.27+
    - The author is active on the [UE Modding Discord](https://discord.gg/zVvsE9mEEa) with any queries
* **[CU]** [UAssetGUI](https://github.com/atenfyr/UAssetGUI) - Written by **atenfyr**
    - A GUI for UAssetAPI
* **[CU]** [Asset Editor](https://github.com/kaiheilos/Utilities) - Written by **kaiheilos**
    - UE Uasset Viewer/Editor can unpack and read/edit assets from engine versions 4.11 - 4.26
* [UAsset JSON Serializer](https://github.com/ithinkandicode/bloodstained-tools/tree/master/Serializer) - Written by **Kein**
    - Converts .uasset fies to JSON, allows you to edit the JSON, then converts edits back into the original uasset
* [DUAM](https://github.com/DarthPointer/DAUM) - Written by **DarthPointer**
    - CLI program with a lot of flexibility for editing uasset files
* [UAssetConverter](https://github.com/approved/UnrealUAssetConverter) - Written by **approved**
    - An API to read, create, and modify .uasset and .uexp files
* [UEcastoc](https://github.com/gitMenv/UEcastoc) - Written by **gitMenv**
    - UEcastoc is a WIP tool to unpack and edit IO store format files that are typically used in UE5 games
* [UnrealPakViewer](https://github.com/jashking/UnrealPakViewer) - Written by **jashking, translated to English by Spuds**
    - UnrealPakViewer allows you too see a detailed summary of a pak file and export it to CSV or JSON, all within UE4
* **[CU]** [UE Viewer (AKA UModel)](https://www.gildor.org/en/projects/umodel) - Written by **Gildor**
    - UE Viewer (formerly known as UModel) is the standard tool for viewing and extracting UE4 game content, particularly models and textures
* **[CU]** [FModel](https://github.com/iAmAsval/FModel/)
    - Open-source software for exploring Unreal Engine games' files. From seeing the properties of an asset to listening to your favorite audio files, it has never been easier to navigate inside a game's assets

## Textures, Animations & Modelling
Tools that deal with editing the textures, animations and models from UE4 games. 
**Short PSA:** To get custom materials working in later UE4 versions, go to `ProjectSettings` then to `Packaging` and set `ShareMaterialShaderCode` to `False`, then cook them like you normally would.
* [Blender3D Import PSK/PSA](https://github.com/Befzz/blender3d_import_psk_psa) - Written by **Befzz**
    - Blender3D Import .psk & .psa addon imports meshes, skeletons and animations from .psk and .psa files to Blender3D
* **[CU]** [Blender3D Import PSK/PSA FORK](https://github.com/matyalatte/blender3d_import_psk_psa) - Written by **matyalatte**
    - Automatically handles scaling/fbx export so its a bit more user friendly for not messing things up
* [UE4 DDS Tools](https://github.com/matyalatte/UE4-DDS-Tool) - Written by **matyalatte**
    - Allows you to inject texture files directly into their original uassets without cooking for a large number of UE versions, and can do bulk operations via CLI
* [Rokoko Studio](https://github.com/Rokoko/rokoko-studio-live-blender) - Written by **Rokoko**
    - Rokoko Studio is a powerful and intuitive software for recording, visualizing and exporting motion capture
    - This plugin lets you stream your animation data from Rokoko Studio directly into Blender
    - More useful for modding however It also allows you to easily record and retarget animations, for easy animation swaps
* **[PW]** [Better Blender FBX Importer/Exporter](https://blendermarket.com/products/better-fbx-importer--exporter)
    - Better FBX Importer & Exporter is for people who need to import FBX files into Blender and export FBX files to game engines
* [Blender UEXP](https://github.com/AlexP0/Blender_UEXP) - Written by **AlexP0**
    - Blender_UEXP creates a mesh in blender from a uexp to allow for edits, then writes modifications back into the uexp
* [Dummy Materials Blender Plugin](https://bleedn.gumroad.com/l/dummymaterials) - Written by **bleedn**
    - Secondary DL link [here](https://www.artstation.com/marketplace/p/Jr02g/blender-dummy-materials-add-on)
    - REQUIRES BLENDER 3.2
    - A plugin to automate making dummy materials
    - Just click a face, set up the variables it asks for in the 3D View, and click the button 
* [NVIDIA Texture Tools Exporter](https://developer.nvidia.com/nvidia-texture-tools-exporter) - Written by **NVIDIA**
    - The NVIDIA Texture Tools Exporter allows users to create highly compressed texture files directly from image sources
* [3DSMax Bulk Export PSK/PSA to FBX](Loose Files\ActorXAnimConverter.ms) - Written by **Gildor**, adapted by **Aproydtix**
    - Version of ActorX 3DSMax script that can bulk convert PSK/PSA to FBX 
    - [Original Script](https://www.gildor.org/projects/unactorx) by Gildor, and modifications by Aproydtix from OpenKH
    - Also will do deformation fixes to put an animation on a modified skeleton


## .locres Editors
Tools that deal with editing the UE4 .locres files, which are used for localisation.
* **[CU]** [UnrealLocres](https://github.com/akintos/UnrealLocres) - Written by **akintos**
    - UnrealLocres can read/write every locres version up to 3 (latest)
* [Locres Editor](https://cdn.discordapp.com/attachments/775093920915914794/836699867920859207/unreal_locres_texttool.exe) - (Unknown author)
    - A tool to change the game's .locres files that are used for localization
* [UE4LocalizationsTool](https://github.com/amrshaheen61/UE4LocalizationsTool) - Written by **amr shaheen**
    - Simple tool to edit unreal engine 4 text files

