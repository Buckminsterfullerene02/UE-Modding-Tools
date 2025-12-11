# UE Modding Tools
A databank of every modding tool that has potential to be used across multiple UE games. Many tools were submitted by the lovely members of the [Unreal Engine Modding Discord](https://discord.gg/unreal-engine-modding-876613187204685934) - please join if you want discuss use of these tools or just general UE modding!

> [!NOTE]
> The tag **[CU]** before a tool means that it is **C**ommonly **U**sed by multiple UE modding communities, so is recommended for personal use. <br>
> The tag **[PW]** before a tool means that it is **P**ay**w**alled.

If you are an UE game developer, and want to know how some of these tools are used to mod your games, please refer to the [developer guide](https://buckminsterfullerene02.github.io/dev-guide/).

Categories are not ordered by any means, except for CU tools at the top. 

Any tool that is not listed here, but should be, please submit a pull request.

> [!WARNING]
> Some of these tools may be unmaintained and/or outdated, but are still useful for people writing their own tools and may want to see how others implemented their tools.

## Packers & Unpackers
Tools that deal with packing and unpacking the UE4 archive files.
* **[CU]** [repak](https://github.com/trumank/repak) - Written by **truman**
    - Supports reading all pak versions with compression/encryption and writing all pak versions
    - Multithreaded unpacking, roughly 2x faster than the built in UnrealPak tool
    - Does not work for `IoStore` container files (`.ucas`/`.utoc`)
* **[CU]** [retoc](https://github.com/trumank/retoc) - Written by **truman & Archengius**
    - A CLI tool for packing/unpacking `IoStore` container files (`.ucas`/`.utoc` + `.pak`)
    - Supports converting between Zen assets (such as those extracted by `FModel`) and legacy assets (`.uasset`/`.uexp`)
    - Assets unpacked by it can be modified using `UAssetGUI` and then repacked by it
    - Supports all `IoStore` UE versions (but with some limitations for UE4 versions)
* **[CU]** [UnrealPak](http://fluffyquack.com/tools/unrealpak.rar) - Put together by **FluffyQuack**
    - UnrealPak version from 2016 that is seemingly compatible with any UE4 game
* **[CU]** [QuickBMS](https://aluigi.altervista.org/quickbms.htm) - Written by **Luigi Auriemma**
    - Allows for fast unpaking of many types of files including `.pak` files
    - Does not work for `IoStore` container files (`.ucas`/`.utoc`)
    - [Download link](https://aluigi.altervista.org/bms/unreal_tournament_4.bms) for the UE `.bms` script
* **[CU]** [UnrealReZen](https://github.com/rm-NoobInCoding/UnrealReZen) - Written by **NoobInCoding**
    - UnrealReZen is for packing `IoStore` container files (`.utoc` and `.ucas`)
    - Only works with Zen assets format, which is not the same as legacy cooked assets (e.g. ZenTools or UnrealPak output)
* [ZenTools](https://github.com/Buckminsterfullerene02/UE-Modding-Tools/blob/main/Loose%20Files/ZenTools/ZenTools.zip) - Written by **Archengius** & maintained by **LongerWarrior**
    - Extracts cooked packages (`.uasset`/`.uexp`) from the `IoStore` container files (`.ucas`/`.utoc` + `.pak`)
    - The extracted files can then be opened with any asset editor and repacked back into the `IoStore` container using UnrealPak
    - Only supports UE5.1-5.4
    - [Original repository](https://github.com/LongerWarrior/ZenTools/) (5.3 & 5.4 fix will not be uploaded to it)
    - Use `retoc` to repack the cooked assets back into the `IoStore` container files 
* [ZenTools UE4](https://github.com/WistfulHopes/ZenTools-UE4) - Written by **WistfulHopes**
    - A fork of the above ZenTools but only supports 4.25 - 4.27 (all UE4 IoStore versions)
    - A method to repack assets into `IoStore` container files using UnrealPak can be found [here](https://gist.github.com/Buckminsterfullerene02/0f7233d5dda97c82039ba932c2bc8fb7). Alternatively `retoc` can be used with varying results for these versions
* [PakMaster](https://github.com/AriesLR/PakMaster) - Written by **AriesLR**
    - A GUI Wrapper for Repak, ZenTools, and UnrealPak 
* [repak wrappers](https://github.com/Mythical-Github/repak_wrappers) - Put together by **Mythical**
    - Windows wrapper scripts for repak
    - Easier for newer modders to use than repak's CLI requirement
* [IOStorePackager](https://github.com/Buckminsterfullerene02/UE-Modding-Tools/blob/main/Loose%20Files/IOStorePackagev2.zip) - Written by **Narknon**
    - A simple GUI for packaging/repackaging cooked assets as `IOStore`
    - Made with [tuw](https://github.com/matyalatte/tuw)
* [UEcastoc](https://github.com/gitMenv/UEcastoc) - Written by **gitMenv**
    - UEcastoc is a WIP tool to unpack and pack `IoStore` container files (`.ucas`/`.utoc` + `.pak`)
* [TocPatcher](https://github.com/kboykboy2/TocPatcher) - Written by **kboykboy**
    - Designed to modify `.utoc` files to allow mods to work for games using both `IoStore` and `Pak Signing`
* [unpak](https://github.com/bananaturtlesandwich/unpak) - Written by **Spuds**
    - A "no nonsense" unreal pak parser that doesn't force files to be extracted, only converts entries to bytes when requested and supports all pak versions
    - Deprecated in favour of repak
* [U4Pak](https://github.com/panzi/u4pak) - Written by **panzi**
    - U4Pak unpacks, packs, lists, checks and mounts UE4 .pak archives
* [ue4pak](https://github.com/Vilsol/ue4pak) - Written by **Vilsol**
    - Parses and extracts data from UE4 Pak files
* [U4Pak - Rust](https://github.com/panzi/rust-u4pak) - Written by **panzi**
    - Rust port of U4Pak
* [IOStorePak](https://github.com/amMattGIT/UE_IOStorePak) - Written by **amMattGIT**
    - Packager for `IoStore` format 

## Asset Editors, Parsers & Explorers
Tools that deal with editing and parsing the UE4 asset files, with formats including `.uasset`, `.uexp`, `.ucas`, `.utoc`, `.umap` etc. 
* **[CU]** [UE Viewer (AKA UModel)](https://www.gildor.org/en/projects/umodel) - Written by **Gildor**
    - UE Viewer (formerly known as UModel) is the standard tool for viewing and extracting UE4 game content, particularly models and textures
* **[CU]** [FModel](https://github.com/iAmAsval/FModel/)
    - Open-source software for exploring Unreal Engine games' files. From seeing the properties of an asset to listening to your favorite audio files, it has never been easier to navigate inside a game's assets
* **[CU]** [CUE4Parse](https://github.com/FabianFG/CUE4Parse) - Maintained by the FModel developers
    - C# Parser and API for UE packages & assets, used primarily by FModel
* **[CU]** [UAssetGUI](https://github.com/atenfyr/UAssetGUI) - Written by **atenfyr**
    - A GUI for UAssetAPI
* **[CU]** [UAssetAPI](https://github.com/atenfyr/UAssetAPI) - Written by **atenfyr**
    - A C# API for reading and writing UE4 .uasset files from 4.0 - 4.27+
* [UAsset Diff Tool](https://github.com/theqoqqi/uasset-diff-tool/) - Written by **Qoqqi**
    - A command-line tool for comparing `.uasset` files to identify differences between two versions of a game's assets
    - Aimed at UE4.25-4.27, it supports handy filters and web viewer for easy viewing of data
* [usmap2json](https://hypermodule.github.io/usmap2json/) - Written by **hypermodule**
    - A web-based tool that converts `.usmap` files to JSON format for easier inspection and analysis
    - Source is available [here](https://github.com/hypermodule/usmap2json)
* [Asset Editor](https://github.com/kaiheilos/Utilities) - Written by **kaiheilos**
    - UE Uasset Viewer/Editor can unpack and read/edit assets from engine versions 4.11 - 4.26
* [UAssetEditor](https://github.com/oshock/UAssetEditor) - Written by **oshock**
    - A C# Unreal `IoStore` UAsset Editor
* [KismetEditor view for UAssetGUI](https://github.com/trumank/UAssetGUI/tree/kismet-editor) - Written by **trumank**
    - A graph view similar to blueprints but on the kismet instruction level
    - Displays a limited set of instructions/parameters
* [BlueprintToCpp](https://github.com/Krowe-moh/BlueprintToCpp) - Written by **Krowe-moh**
    - A tool that converts Unreal Engine Blueprints to C++ to help visualise the blueprint logic
* [KismetKompiler](https://github.com/tge-was-taken/KismetKompiler) - Written by **tge-was-taken**
    - Compiler & decompiler for Unreal Engine 4 blueprints
    - Provides support for decompiling most blueprints into a C#-like syntax 
    - Offers the ability to compile the decompiled code using a custom script format called `KisMetScript` (`.kms`)
* [Kismet Analyzer](https://github.com/trumank/kismet-analyzer) - Written by **trumank**
    - Tools for analyzing and manipulating kismet bytecode in cooked Unreal Engine assets
* [Kismet Decompiler](https://github.com/Yangff/kismet-analyzer) - Written by **Yangff**
    - Proof of concept fork of the above that converts kismet bytecode to typescript to help visualise the blueprint logic
* [stove](https://github.com/bananaturtlesandwich/stove) - Written by **spuds**
    - A visual editor Unreal Engine cooked map files
    - Allows you to transplant actors from other maps, move actors, etc
* [spaghetti](https://github.com/bananaturtlesandwich/spaghetti) - Written by **spuds**
    - A function hooker for cooked Unreal Engine blueprints
* [unreal_asset](https://github.com/AstroTechies/unrealmodding/tree/main/unreal_asset) - Written by **localcc, kronsti219 & spuds**
    - A rust port of UAssetAPI 
* [UnrealPakViewer](https://github.com/jashking/UnrealPakViewer) - Written by **jashking, translated to English by Spuds**
    - UnrealPakViewer allows you too see a detailed summary of a pak file and export it to CSV or JSON, all within UE4
* [Kismet Editor](https://github.com/SolicenTEAM/KismetEditor/) - Written by **SolicenTEAM**
    - Kismet strings extractor and replacer
    - Uses the UAssetAPI library as a base
* [JohnWickParse](https://github.com/SirWaddles/JohnWickParse) - Written by **SirWaddles, FabianFG, WorkingRobot & Amrsatrio**
    - A parser for uasset, uexp and pak files
* [UAsset JSON Serializer](https://github.com/ithinkandicode/bloodstained-tools/tree/master/Serializer) - Written by **Kein**
    - Converts .uasset fies to JSON, allows you to edit the JSON, then converts edits back into the original uasset
* [DUAM](https://github.com/DarthPointer/DAUM) - Written by **DarthPointer**
    - CLI program with a lot of flexibility for editing uasset files
* [UAssetConverter](https://github.com/approved/UnrealUAssetConverter) - Written by **approved**
    - An API to read, create, and modify .uasset and .uexp files
* [UE.Toolkit](https://github.com/RyoTune/UE.Toolkit) - Written by **RyoTune**
    - General Reloaded toolkit mod for UE games by editing of primitive data in memory using XML files
    - No Unreal Editor, file unpacking/repacking/cooking, or hex editing, and edits are inherently merged down to the property
* [pyUE4Parse](https://github.com/MinshuG/pyUE4Parse) - Written by **MinshuG**
    - A Python library for parsing UE4/5 assets and supports reading `IoStore` containers
    - Convert textures to PIL images and assets to JSON
* [uasset-rs](https://github.com/jorgenpt/uasset-rs) - Written by **jorgenpt**
    - Parsing of Unreal Engine asset files in Rust 
* [Uasset Reader JS](https://github.com/blueprintue/uasset-reader-js) - Written by **rancoud**
    - Read and extract information of `.uasset` files from Unreal Engine in javascript
    - [Website](https://blueprintue.com/tools-uasset-reader/)

## Textures, Animations & Modelling
Tools that deal with editing the textures, animations and models from UE4 games. 
**Short PSA:** To get custom materials working in later UE4 versions, go to `ProjectSettings` then to `Packaging` and set `ShareMaterialShaderCode` to `False`, then cook them like you normally would.
* **[CU]** [Blender3D Import PSK/PSA FORK](https://github.com/matyalatte/blender3d_import_psk_psa) - Written by **matyalatte**
    - Fork of the below tool, but automatically handles scaling/fbx export so its a bit more user friendly for not messing things up
* [Blender3D Import PSK/PSA](https://github.com/Befzz/blender3d_import_psk_psa) - Written by **Befzz**
    - Blender3D Import `.psk` & `.psa` addon imports meshes, skeletons and animations from `.psk` and `.psa` files to Blender3D
* [Blender 4.0 Import/Export PSK/PSA Plugin](https://github.com/DarklightGames/io_scene_psk_psa) - Written by **Colin Basnett**
    - Actively maintained Blender 4.0 plugin (with support for older versions too) for importing and exporting `.psk` and `.psa` files
    - Not to be confused with the above tools that are much older but do roughly the same things
* [UE4 DDS Tools](https://github.com/matyalatte/UE4-DDS-Tools) - Written by **matyalatte**
    - Allows you to inject texture files directly into their original uassets without cooking for a large number of UE versions, and can do bulk operations via CLI
* [Rokoko Studio](https://github.com/Rokoko/rokoko-studio-live-blender) - Written by **Rokoko**
    - Rokoko Studio is a powerful and intuitive software for recording, visualizing and exporting motion capture
    - This plugin lets you stream your animation data from Rokoko Studio directly into Blender
    - More useful for modding as it also allows you to easily record and retarget animations, for easy animation swaps
* [Blender UEXP](https://github.com/AlexP0/Blender_UEXP) - Written by **AlexP0**
    - Blender_UEXP creates a mesh in blender from a uexp to allow for edits, then writes modifications back into the uexp
* [Dummy Materials Blender Plugin](https://bleedn.gumroad.com/l/dummymaterials) - Written by **bleedn**
    - Secondary DL link [here](https://www.artstation.com/marketplace/p/Jr02g/blender-dummy-materials-add-on)
    - REQUIRES BLENDER 3.2
    - A plugin to automate making dummy materials
    - Just click a face, set up the variables it asks for in the 3D View, and click the button 
* [NVIDIA Texture Tools Exporter](https://developer.nvidia.com/nvidia-texture-tools-exporter) - Written by **NVIDIA**
    - The NVIDIA Texture Tools Exporter allows users to create highly compressed texture files directly from image sources
* [Blender Bulk Export PSK/PSA to FBX](https://github.com/KaiserM21/HelperScripts/blob/main/psk_psa_batch_export.py) - Written by **Zain#1873**
    - Uses UModel exported psk/psa
    - Requires [this plugin](https://github.com/Befzz/blender3d_import_psk_psa) to run
* [CUE4Parse Animation Assets Maxx Export Utility](https://github.com/Buckminsterfullerene02/CUE4Parse/tree/mass-export) - Written by **Buckminsterfullerene**
    - A C# program that uses CUE4Parse to mass export animation assets from any UE game
    - Detailed instructions on how to use it can be found in [this wiki](https://github.com/LongerWarrior/UEAssetToolkitGenerator/wiki/Generating-FBX#run-the-cue4parse-mass-actorx-exporter)
* [3DSMax Bulk Export PSK/PSA to FBX](https://gist.github.com/Buckminsterfullerene02/12947999641c6a290f2cbbaf4e0ee313) - Written by **Gildor**, adapted by **Aproydtix**, further modified by **Buckminsterfullerene**
    - Version of ActorX 3DSMax script that can bulk convert PSK/PSA to FBX 
    - [Original Script](https://www.gildor.org/projects/unactorx) by Gildor, and modifications by Aproydtix from OpenKH & Buckminsterfullerene
    - Also will do deformation fixes to put an animation on a modified skeleton
    - Extra modifications include: automatically clearing the scene when new model imported, adds ability to mass export animations in sub folders for specific directory layouts to make mass export process much faster
* [Unreal Shader Map Extractor](https://github.com/WistfulHopes/UEShaderMapExtractor) - Written by **Aeryn**
    - Extracts and helps identify shaders from Unreal material shadermaps
    - Custom [FModel build](https://github.com/WistfulHopes/FModel) used in conjunction with command line utilities
    - Requires an FName dump of your game to identify shaders
    - Supports DX11/DX12 and all forms of compression, doesn't support IO Store games of version 5.0+
* [Better Blender GLTF Importer](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/io_scene_gltf2_ue4.zip)
    - A version of the GLTF importer for Blender that preserves bone orientation
    - This is important for skeletal mesh modding, and allows bypassing PSK altogether
* **[PW]** [Better Blender FBX Importer/Exporter](https://blendermarket.com/products/better-fbx-importer--exporter)
    - Better FBX Importer & Exporter is for people who need to import FBX files into Blender and export FBX files to game engines

## SDK Generators & Dumpers
Tools that generate SDKs and dump the game's code.
* **[CU]** [Unreal Engine 4/5 Scripting System (UE4SS)](https://github.com/UE4SS-RE/RE-UE4SS) - Written by multiple contributors
    - A UHT compatible header generator made by **Archengius** and an object dumper
    - It can also dump all C++ headers from a game, including Blueprint actors
    - Full instructions on how to use it can be found [here](https://github.com/UE4SS-RE/RE-UE4SS/wiki/FullInstallationGuide)
    - The authors are active on the [UE4SS Discord](https://discord.gg/MFvUysppTS) if you have any queries
* **[CU]** [UE4 Game Project Generator](https://github.com/Archengius/UE4GameProjectGenerator) - Written by **Archengius**
    - Allows the creation of a game mod project using the UHT header dumps from UE4SS
    - Full instructions on how to use it can be found [here](https://docs.ue4ss.com/guides/generating-uht-compatible-headers.html)
* **[CU]** [Dumper-7](https://github.com/Encryqed/Dumper-7) - Written by **Fischsalat & Encryqed**
    - SDK Generator for all Unreal Engine games. Supported versions are all of UE4 and UE5
* [jmap dumper](https://github.com/trumank/jmap) - Written by **trumank**
    - A dumper that can generate `.usmap` files using just a minidump or a running process of a game
    - Can also generate `.jmap` files that can be used with [Suzie](https://github.com/trumank/Suzie)
* [UE4 Project Generator GUI](https://github.com/Buckminsterfullerene02/UE-Modding-Tools/blob/main/Loose%20Files/UE4%20Project%20Generator%20GUI.exe) - Written by **spuds**
    - Provides a GUI for the UE4 Game Project Generator tool above
    - Organises the CMD arguments for you in a GUI and generates reuseable batch files
* [Unreal Engine Dumper](https://github.com/Spuckwaffel/UEDumper) - Written by **Spuckwaffel & Hex0ffset**
    - UEDumper is a all in one dumper that supports UE 4.19 - UE 5.3
    - Includes a live editor, where you can view the generated SDK at runtime and modify the games' memory
* [UE Plugin Manifest Generator](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/upluginTool.7z) - Written by **HeartlessSeph**
    - A simple script to make the plugin manifest for the project gen commandlet because <=4.17 games don't include them
    - Usage is pretty simple, after fulling dumping your UE4 game just drag and drop the root extracted folder onto the program
    - It'll spit out a file named "new.upluginmanifest" which can be renamed to whatever you want
* [Add Object Initialiser To Actors in Project Files](https://gist.github.com/Buckminsterfullerene02/90d1d02a6639f656e284bd799801241c) - Written by **dedede123**
    - Adds object initializer to the constructor/static class of all Actor classes in your uproject files
    - Modify to set the correct folder, and could be modified to apply to other types of classes as well if needed
* [Unreal Mappings Dumper](https://github.com/OutTheShade/UnrealMappingsDumper) - Written by **OutTheShade**
    - A dumper that generates mappings (.usmap) files for datamining Unreal Engine 5 games
* [Unreal Mappings Archive](https://github.com/TheNaeem/Unreal-Mappings-Archive)
    - A collection of mappings files for various Unreal Engine games
* [Unreal Dumper](https://github.com/guttir14/UnrealDumper-4.25) - Written by **guttir14**
    - Generates the C++ headers for your game
* [UE SDK Generator](https://github.com/polivilas/UnrealEngineSDKGenerator) - Written by **polivilas**
    - Supports the generation of SDKs for any game on UE version 1-4
* [UWP Dumper](https://github.com/Wunkolo/UWPDumper) - Written by **Wunkolo, tunip3 & LukeFZ**
    - A DLL and Injector for dumping UWP applications at run-time to bypass encrypted file system protection
* [PDBHeaderGenerator](https://github.com/Archengius/PDBHeaderGenerator) - Written by **Archengius**
    - A tool to generate C++ headers from PDB files
* [Unreal Finder Tool](https://github.com/CorrM/Unreal-Finder-Tool) - Written by **CorrM**
    - The outdated - but open-source - version of Cheatgear
* **[PW]** [Cheatgear](https://cheatgear.com/)
    - Useful for dumping a lot of the uFunction names and writing script mods on top of it

## Editor Asset Generators
Tools that generate assets for the Unreal Engine Editor. Allows you to reconstruct the game's assets in the editor, in your own project. Saves a heap of time with manually dummying assets for blueprint modding. Example modkit projects can be found in the [Game Specific Modkits](https://github.com/Buckminsterfullerene02/UE-Modding-Tools#game-specific-modkits) section. 
* [JsonAsAsset](https://github.com/JsonAsAsset/JsonAsAsset) - Written by **[Tectors](https://github.com/Tectors) & in collaboration with [GMatrixGames](https://github.com/GMatrixGames)**
    - Powerful Unreal Engine Plugin that imports assets from FModel
    - Supports 4.26 to 4.27.2 and all of UE5
* [UnrealPskPSA](https://github.com/djhaled/UnrealPSKPSA) - Written by **halfuwu & bK**
    - Directly imports the ActorX formatted files (`.psk`/`.pskx`/`.psa`) into Unreal Engine inside of the editor
    - Only supports Unreal Engine 5
* [UEAssetToolkit](https://github.com/Buckminsterfullerene02/UEAssetToolkit-Fixes) - Written by **Archengius**
    - Bulk converts JSON data from cooked assets into Unreal Engine assets inside of the editor
    - AssetDumper can only be used as a plugin mod for games built modularly
    - Confirmed to support UE4.25-4.27
* [UEAssetToolkitGenerator](https://github.com/LongerWarrior/UEAssetToolkitGenerator) - Written by **LongerWarrior**
    - Bulk converts cooked assets into UEAssetToolkit-compatible JSON
    - Confirmed to support UE4.25-4.27
    - Also known as Cooked Asset Serializer (CAS)
* [Suzie](https://github.com/trumank/Suzie) - Written by **trumank & Archengius**
    - An Unreal Engine Editor plugin that generates UHT and content from [jmap](https://github.com/trumank/jmap) file at runtime

## .locres Editors
Tools that deal with editing the UE4 .locres files, which are used for localisation.
* **[CU]** [UnrealLocres](https://github.com/akintos/UnrealLocres) - Written by **akintos**
    - UnrealLocres can read/write every locres version
* [UnrealLocres Editor](https://github.com/Snoozeds/UnrealLocresEditor) - Written by **Snoozeds**
    - A GUI for the UnrealLocres tool above
    - Allows you to edit the `.locres` files in a more user-friendly way
* [Locres Editor](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/unreal_locres_texttool.exe) - (Unknown author)
    - A tool to change the game's `.locres` files that are used for localization
* [UE4LocalizationsTool](https://github.com/amrshaheen61/UE4LocalizationsTool) - Written by **amr shaheen**
    - Simple tool to edit unreal engine 4 text files
* [UEExtractor](https://github.com/SolicenTEAM/UEExtractor) - Written by **SolicenTEAM**
    - Extracts `.locres` from Unreal Engine unpacked: `.pak` or (`.utoc`|`.ucas`) to localize the game
* [UE4TextExtractor](https://github.com/VD42/UE4TextExtractor) - Written by **VD42**
    - Extract localizable text from `.uasset`, `.uexp` and `.umap` files 
* [LocRes Builder](https://github.com/matyalatte/LocRes-Builder) - Written by **matyalatte**
    - Building tool for localization resources of UE4 games without requiring the original game files

## Loaders
Tools that can load mods into the game.
* **[CU]** [UE4SS Mod Loader](https://github.com/UE4SS-RE/RE-UE4SS)
    - Spawn blueprint mods automatically without editing/replacing game files
    - Support for mods created previously with UML
* [Unreal Engine Mod Loader](https://github.com/RussellJerome/UnrealModLoader) - Written by **RussellJerome**
    - A tool used to load Blueprint and basic SDK based C++ Mods for Unreal Engine 4 games
    - Mostly deprecated now with the release of UE4SS' Mod Loader
* [Reality](https://github.com/itskaitlyn03/Reality) - Written by **itskaitlyn03**
    - A highly abstract and modular Unreal Engine mod loader for the 21st century, written in C#
* [DLL Plugin Loader](https://github.com/c0dycode/DLLPluginLoader) - Written by **c0dycode**
    - Loads various other DLLs if an application/game tried to load a certain DLL which is not actually being used/required
* [UE4-Librarian](https://github.com/Aeyth8/UE4-Librarian) - Written by **Aeyth8**
    - DLL injector for any provided DLL 
* [Unreal Pak Mod Manager](https://github.com/joe-p/unreal-pak-mod-manager) - Written by **joe-p**
    - A mod manager for Stalker 2 and other Unreal Engine games that use the `.pak` format 
    - This tool is used to create a single `.pak` file from a collection of mods for an Unreal Engine game

## Unlockers
Unlocks features that are usually disabled in shipping UE games.
* **[CU]** [Universal UE Unlocker (UUU) v3.0](https://framedsc.github.io/GeneralGuides/universal_ue4_consoleunlocker.htm) - Written by **Frans 'Otis_Inf' Bouma**
    - Re-enables the command line within a game if usually disabled
    - [Full list](https://digilander.libero.it/ZioYuri78/) of available commands
* **[PW]** [UUU v5.x](https://www.patreon.com/Otis_Inf) - Written by **Frans 'Otis_Inf' Bouma**
    - Provides custom photo-mode mods and a bunch of other amazing cinematography tools for UE games
* [UUU Dump Formatter](https://github.com/Mert-Y/UniversalUE4UnlockerDumpFormatter) - Written by **Mert-Y**
    - Formats the dump from the UUU into a readable format
* [Unreal Mod Unlocker](https://github.com/IllusorySoftware/UnrealModUnlocker-Public) - Written by **IllusorySoftware**
    - Unlocks loading of 3rd party UE4 loose files for (a claimed) 75-90% of UE4 games

## Audio
Tools that deal with audio modding. You don't need any tools to mod the default UE audio system, if the game uses that. Sadly, many games use proprietary audio systems like FMOD and WWise, which require their own tools.
* **[CU]** [FModel](https://fmodel.app/)
    - FModel supports playing & extracting Wwise, fmod and Criware audio
    - Also supports playing & extracting binka and rada audio codecs using the below libraries
* [BinkadecWithWavHeader](https://github.com/Keisawaakira/BinkadecWithWavHeader) - Written by **Keisawaakira**
    - A library to allow [FModel](https://github.com/4sval/FModel/discussions/422) to play & extract `binka` files
* [RadA-Decoder](https://github.com/GhostScissors/RadA-Decoder) - Written by **GhostScissors**
    - A library to allow [FModel](https://github.com/4sval/FModel/discussions/422) to play & extract `rada` files
* [BNK Editor](https://github.com/marieismywaifu/BNKEditor) - Written by **marieismywaifu**
    - Allows direct replacing and saving of wems from the .bnk files of games that use Wwise for audio (located in the WwiseBanks folder)
* [BNK Extractor](https://github.com/eXpl0it3r/bnkextr) - Written by **eXpl0it3r**
    - Wwise *.BNK File Extractor extracts WEM files from the ever more popular Wwise BNK format
* [Wwiser](https://github.com/bnnm/wwiser) - Written by **bnnm**
    - Wwise .bnk parser to assist in ripping audio from games using the Wwise engine
* [ww2ogg](https://github.com/hcs64/ww2ogg) - Written by **hcs64**
    - Converts Wwise `RIFF`/`RIFX` Vorbit to standard `Ogg` Vorbis
* [Audacity](https://www.audacityteam.org/) - Written by **Audacity Team**
    - A very nice tool for opening, recording and editing audio files of many types
    - It supports macros which allows for some automation too
* [Foobar2000](https://www.foobar2000.org/) - Written by **Peter Pawlowski**
    - An advanced freeware audio player for Windows
* [Export Utility Wwise](https://github.com/djhaled/ExportUtilityWwise) - Written by **bK**
    - A C# console application for exporting audio from UE games that use Wwise, and converting them into `.wav` format

## Mapping
Map dumping/generating/editing (that aren't already covered by asset editors).
* **[PW]** [Hammeur](https://nte.itch.io/hammuer) - Written by **NT Entertainment**
    - A Source/idTech 2-4 map importer plugin for Unreal Engine 4 (and eventually 5)
* [UE4SS map dumper](https://github.com/UE4SS-RE/RE-UE4SS) - Written by **Narknon**
    - Map dumper/generator within Blender OR the UE editor (if you have static meshes recreated in the project)
* [UE4 Quake Map Importer](https://github.com/GoomiiV2/UE4-Quake-Map-Importer) - Written by **GoomiiV2**
* [Yet another Quake Map Importer](https://github.com/Perpixel/UE4_QuakeImport) - Written by **Perpixel**
* [Unreal Polygonal Map Generator](https://github.com/Jay2645/Unreal-Polygonal-Map-Gen) - Written by **Hay2645**
* [Call of Duty to UE4](https://github.com/AgenteDog/CoDtoUE4) - Written by **AgenteDog**
* [SuperGrid Starter Pack](https://www.unrealengine.com/marketplace/en-US/product/supergrid-starter-pack) - Written by **ZeOrb**
    - Level blockout tools, useful for some map modding
* [BlenderUMap2](https://github.com/MinshuG/BlenderUmap2) - Written by **Amrsatrio & MinshuG**
    - Imports `.umaps` into Blender from UE4/5 games
    - Can also read `.replay` files from Fortnite and export actors from them
* [LandscapeExporter](https://github.com/Knutschbert/CUE4Parse) - Written by **Knutschbert**
    - Exports heightmap and weightmap tiles as png from all `.umaps` containing Landscape data
    - Tested with UE 4.25 and 4.27 games. Does not support IoStore

## Automation
Tools that can help to automate the modding pipeline (that haven't been covered already).
* [UnrealAutoMod](https://github.com/Mythical-Github/UnrealAutoMod) - Written by **Mythical**
    - Automatic mod creator and tester tool for `.pak`, `.utoc`, `.ucas`, or loose file mods
    - Supports UE4.0+
* [UnrealAutoModInEditor](https://github.com/Mythical-Github/UnrealAutoModInEditor) - Written by **Mythical**
    - In-editor version of the above UnrealAutoMod tool
    - Supports UE4.22+
* [EasyCookEditor](https://github.com/magnv/EasyCookEditor) - Written by **magnv**
    - Unreal Editor plugin designed to make asset cooking for Unreal Engine 4 easier, primarily for modding purposes, with a focus on cooked asset projects
* [Backup UE Saves](https://gist.github.com/Buckminsterfullerene02/479a281cf3d8a854e91cf804bd7fb8cb) - Written by **Mythical**
    - Just edit the Game project name to your particular game and it will backup the `.sav` and `.ini` files for that game or just toss it in one of your existing bat files
* [Auto-Disable uasset Files](https://gist.github.com/Buckminsterfullerene02/aebbbc6cde0456a852197260656314c0) - Written by **Spuds**
    - Deletes `.uexp` and `.ubulk` files and replaces `.uassets` with blank files of the same name recursively when a folder containing exported assets is dragged onto it
* [Create Empty Content Folder Hierarchy](https://gist.github.com/Buckminsterfullerene02/43ac2fe1c760b101de4b452dd711ce3f) - Written by **Buckminsterfullerene**
    - Deletes every file inside of a specified directory but leaves all of the folders intact
    - Useful for creating a blank content folder hierarchy for a game
* [Extract All Anim Assets](https://gist.github.com/Buckminsterfullerene02/789fb38a2f1ccd2ef55262a90be578d9) - Written by **Buckminsterfullerene**
    - A batch script of a couple nice UModel commands to extract all of the animation assets from a game
    - Running the second command directly after the first is beneficial since all game packages are loaded into memory which saves a lot of time not having to do it twice
    - To use, just change the variable paths
* [Generate Blender Script To Convert GLTF to FBX](https://gist.github.com/Buckminsterfullerene02/6b49374b8a8da0d992e73a22c9e0d7dc) - Written by **DmgVol**
    - C# program to generate a Blender script that can be used to mass convert GLTF files extracted from UModel to FBX files
    - To use, just change the paths in the C# script
* [Mass Convert Assets from Cooked to Uncooked](https://dev.epicgames.com/community/snippets/QE0/unreal-engine-cooked-asset-uncooked-asset-editor-script) - Written by **Buckminsterfullerene**
    - Blueprint editor utility script to easily "convert" cooked assets to uncooked if that "feature" is supported by the engine (e.g. data asset, behaviour tree, animation sequence)
    - Need to have the [these](https://gist.github.com/Buckminsterfullerene02/1588574607c8b551dd101e09ccc925ed) config settings in your project's `DefaultEngine.ini` file 
* [Make Debug World](https://dev.epicgames.com/community/snippets/APr/unreal-engine-make-showcase-world-grid) - Written by **Buckminsterfullerene**
    - Once you have all static meshes/actors uncooked in-editor, you can use this editor utility script to load them all into a level in a neat way
* [Batch Import FBX into UEE](https://github.com/KaiserM21/HelperScripts/blob/main/import_fbx.py) - Written by **Zain#1873**
    - Allows you to batch import folders of FBX into the editor since the "import all" function with folder import is broken in many engine versions 
* [Asset Generator Bitesize](https://github.com/Knutschbert/UnrealStuff/tree/main/Modding/SDK%20Generation/AssetGeneratorBiteSize) - Written by **Knutschbert**
    - A small gui + symlink script for filtering to use with the AssetGenerator commandlet

## Reversing
Reversing tools that aren't necessarily to do with UE, but are commonly used to help with reversing games.
* [patternsleuth](https://github.com/trumank/patternsleuth) - Written by **trumank**
    - A tool for finding AoBs/patterns against a collection of Unreal Engine games
    - Can show a summary of all patterns against all games or disassemble each step of a pattern resolution chain to debug failed patterns
* [binfold](https://github.com/trumank/binfold) - Written by **trumank**
    - A utility for quickly and accurately porting huge numbers of symbols between similar binaries
    - Can generate PDBs from a binary using an existing database of Unreal Engine symbols (generated by games that ship with PDBs)
    - Can create a database from executables with PDBs
* [AOB Generator](https://github.com/FransBouma/InjectableGenericCameraSystem/tree/master/Tools/AOBGen) - Written by **Frans 'Otis_Inf' Bouma**
    - A small tool for easy AOB creating from copied x64 disassembly (Cheat Engine or x64dbg format)
* [Cheat Engine](https://www.cheatengine.org/) - Written by **Dark Byte**
    - A tool for modifying single player games
    - It allows you to scan for values and then change them
* [x64dbg](https://x64dbg.com/) - Written by **mrexodia**
    - A free and open-source x64/x32 debugger for windows
    - For certain types of reversing like finding basic AOBs it is great because it is much faster than IDA (it doesn't do the same level of decompiling)
* [x64dbg Swiss Army Knife](https://github.com/Nukem9/SwissArmyKnife) - Written by **Nukem9**
    - Plugin for x64dbg that can generate AOBs for you, and will automatically wildcard call pointers and such
* [IDA Free](https://www.hex-rays.com/products/ida/support/download_freeware.shtml) - Written by **Hex-Rays**
    - A free version of IDA Pro
    - It is a bit limited, but it is still a great tool for reverse engineering programs
* [Ghidra](https://ghidra-sre.org/) - Written by **National Security Agency**
    - A software reverse engineering (SRE) framework
    - It is a free and open-source tool that can be used to analyze compiled code on a variety of platforms including Windows, Linux, and macOS
* [HxD](https://mh-nexus.de/en/hxd/) - Written by **mh-nexus**
    - A freeware hex editor
    - It can be used to view, edit, analyze, and process files of arbitrary size, including `.uexp` files
* [Process Hacker](https://processhacker.sourceforge.io/) - Written by **Wj32**
    - A free and open-source tool that helps you monitor system resources, debug software & looking at memory string for processes currently running
* [Resource Hacker](http://www.angusj.com/resourcehacker/) - Written by **Angus Johnson**
    - A freeware utility to view, modify, rename, add, delete and extract resources in 32bit Windows executables and resource files (.res)
* [010 Editor](https://www.sweetscape.com/010editor/) - Written by **Sweetscape Software**
    - A powerful hex tool for parsing files in 160+ formats and potentially unknown file types
* [Cutter](https://cutter.re/) - Written by **Rizin**
    - Free and open source RE platform
    - Decompiler, graph view, debugger, linear disassmbler, emulator, python scripting engine, plugins, binary patching, etc.
* [ImHex](https://github.com/WerWolv/ImHex) - Written by **WerWolv**
    - A Hex Editor for Reverse Engineers, Programmers and people who value their retinas when working at 3 AM.
* [Binary Ninja](https://binary.ninja/) - Written by **Vector 35**
    - A reverse engineering platform that enables you to analyze and reverse engineer binary code
* [ue_binja](https://github.com/trumank/jmap) - Written by **trumank**
    - A Binary Ninja plugin that reconstruct classes and structs from UE reflection data (requires Binary Ninja licence)

## Other
Other tools that aren't necessarily to do with UE, but are commonly used to help with modding games.
* **[CU]** [Unreal Engine Virtual Reality](https://github.com/praydog/UEVR) - Written by **praydog**
    - Universal VR Mod for Unreal Engine 4/5
* **[CU]** [uesave](https://github.com/trumank/uesave-rs) - Written by **truman**
    - A save file editor/library for reading and writing Unreal Engine save files (commonly referred to as GVAS)
* [UETools-GUI](https://github.com/Cranch-fur/UETools-GUI) - Written by **Cranch**
    - Solution for in-game debugging of Unreal Engine games
* [gvas](https://github.com/localcc/gvas) - Written by **scottanderson & localcc**
    - Rust library that allows parsing of gvas save files
* [UeSaveGame](https://github.com/CrystalFerrai/UeSaveGame) - Written by **CrystalFerrai**
    - A .NET library for reading and writing Unreal Engine 4 save files
* [bitfix](https://github.com/trumank/bitfix) - Written by **truman**
    - Simple Lua-scriptable runtime binary patcher 
    - Games with AES encryption and sigs can be patched with this tool and [this file](https://gist.github.com/Buckminsterfullerene02/90077ce81c0fd908144498869f4ea288)
* [Unreal Engine Signature Bypasser](https://github.com/rm-NoobInCoding/UniversalSigBypasser) - Written by **NoobInCoding**
    - A universal signature bypasser for Unreal Engine games
* [UE4 Engine Version Grabber](https://github.com/RussellJerome/Unreal-Engine-4-Engine-Version-Grabber) - Written by **RussellJerome**
    - A simple tool that will grab the engine version of a UE4 game
* [USharp](https://github.com/pixeltris/USharp) - Written by **pixeltris**
    - A plugin for UE4.23 which allows for programming in C#
* [Usmap.NET](https://github.com/NotOfficer/Usmap.NET) - Written by **NotOfficer**
    - A `.NET` parser for `.usmap` files 
* [Oodle.NET](https://github.com/NotOfficer/Oodle.NET) - Written by **NotOfficer**
    - A `.NET` wrapper for the Oodle compression library
* [Universal-ImGui-D3D11-Hook-WithResize](https://github.com/GHFear/Universal-ImGui-D3D11-Hook-WithResize) - Written by **GHFear**
    - A Universal DirectX11 hook that supports resizing of the game window by hooking the ResizeBuffers
* [Asset Registry Helper](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/tree/main/Loose%20Files/Asset%20Registry%20Helper) - Written by **Archengius**
    - Allows merging contents of multiple asset registry files together and listing their contents
    - Useful when game uses asset registry to lookup content and you want to add some new content of that type
* [Visual Studio 2017 Community Installer](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/vs_Community.exe) - Posted by **Narknon**
    - VS-2017 Community installer because microsoft apparently removed it from available downloads lol
* [Orbital Market](https://orbital-market.com/search)
    - A way to browse Epic marketplace and sort by popularity/reviews and use filters properly
* [UE Engine Branch Cloner](https://gist.github.com/Buckminsterfullerene02/864d0add56c6a1691549898334f80fe2) - Written by **Mythical**
    - A small bat file to clone only one branch of unreal engine
* [BP to UE Version Info](https://gist.github.com/Buckminsterfullerene02/43681e3ee468b3ffa6a433d9332172c9) - Written by **Mythical**
    - Some useful info on when certain BP features were added to UE
* [tuw](https://github.com/matyalatte/tuw) - Written by **matyalatte**
    - Tiny GUI wrapper for command-line tools
* [3dmigoto](https://github.com/bo3b/3Dmigoto) - Written by **Chiri**, continued by **DarkStarSword** and **bo3b**
    - Semi-Universal D3D11 (no D3D12/vulkan) wrapper designed for modifying, fixing, or replacing shaders and shader resources, originally used for 3D Stereovision support
    - Now used by several communities in UE and Unity for runtime mesh replacement in the renderer, avoiding the need to replace actual game assets or bypass signature checks
    - Not UE specific but many UE games are well suited. Mesh replacement requires GPU skinning which is enabled by default in UE for character animation
    - Note that effective usage of this extremely powerful tool may require extensive analysis of your game and sufficient skill as a modeler
    - [Additional notes on 3dmigoto supported games and usage](https://gist.github.com/elbadcode/b09f03fd50a451debc5811782b23bd24) - Written by **lobotomyx**
* [3D Fixes toolset](https://github.com/DarkStarSword/3d-fixes) - Maintained by **DarkStarSword**
    - Essential sister repository to 3dmigoto containing scripts for analyzing, extracting, and import shaders and shader resources
    - Contains Blender import/export script that forms the basis of 3dmigoto mesh modding. Typically requires some analysis work and understanding of D3D11 API
    - Universal fixes for some built in shaders specific to UE4, as well as some guides on usage to fix rendering issues by swapping shaders
* **[PW]** [NinjaRipper](https://www.ninjaripper.com/) - Written by **blackninja**
    - Closed source, paid tool for dumping graphics resources (one time patreon sub for permanent license without updates) 
    - Uses similar techniques as 3Dmigoto but trades the ability to replace resources for greater API support, with coverage for vulkan and D3D12
    - As of version 2.6 now dumps decompiled shaders and API call analysis log making it a viable alternative to graphics debuggers like renderdoc in some cases
    - Supports importing large scenes, riggable characters, and vertex based animation to Blender, 3DS Max, and Noesis

## Unreal Engine 1, 2 & 3
Earlier UE versions did not have freely available source and mostly used `.upk`, `.u` and `.udk` files for assets. 
* [Unreal Library](https://github.com/EliotVU/Unreal-Library) - Written by **EliotVU**
    - A library for reading Unreal Engine 1, 2 & 3 files
    - Also contains a large table of games and their exact engine/package versions
* [UE Explorer](https://github.com/UE-Explorer/UE-Explorer) - Written by **EliotVU**
    - UE Explorer is an easy-to-use browser and decompiler for Unreal Engine 1, 2 & 3 packages
* [Unreal Script Language Service](https://github.com/EliotVU/UnrealScript-Language-Service) - Written by **EliotVU**
    - A VS Code language service for UnrealScript, the scripting language used in Unreal Engine 2 & 3
    - Provides syntax highlighting, code completion, and other features for UnrealScript development
* [UPK Explorer for UE3](https://www.nexusmods.com/site/mods/587/) - Written by **Wastelander121 & FCH823**
    - Allows you to install texture packs created with UPK Explorer for UE3
    - [TFC Installer](https://www.nexusmods.com/site/mods/588?)
    - There is a dedicated category for discussion of this tool with the author in the [UE Modding Discord](https://discord.gg/unreal-engine-modding-876613187204685934)
* [UPKUtils](https://github.com/wghost/UPKUtils) - Written by **wghost**
    - A set of utilities to work with UE3 cooked packages

# Guides
Guides that are useful for modding UE games. 

> [!TIP]
> There is also a guides forum channel in the [Unreal Engine Modding Discord](https://discord.gg/unreal-engine-modding-876613187204685934) where you can find more guides/modding tips or share your own.

## General
- **[CU]** [UE Modding Guides](https://github.com/Dmgvol/UE_Modding) - Written by **Dmgvol**
    - A well-written, simple to follow collection of guides for modding UE games
    - Includes guides on modding textures, models, animations, blueprints, tools, and more
* **[CU]** [Modding UE5 Games](https://www.abbiedoobie.com/2023/10/13/modding-robocop-rogue-city-and-other-ue-5-games/) - Written by **Abbie Doobie**
    - A guide on how to mod UE5 games
    - Primarily working with IO Store and chunks
    - Lots of pictures, so it should be easy to follow along
    - [Backup Link (with PDF version)](https://www.nexusmods.com/robocoproguecity/mods/3)
* [Unreal Modding Guides](https://tempo-organization.github.io/Unreal-Modding-Guides/) - Written by **Mythical**
    - This site is a collection of useful guides for Unreal Engine modding
    - Examples for working with Blueprints, engine functions, materials, and more
* [UE4 Modding Guide](https://bananaturtlesandwich.github.io/UE4-Modding-Guide/) - Written by **Spuds**
    - A general guide for Unreal Engine 4 game modding
* [Setting up UE as git merge tool for BPs](https://gist.github.com/Panakotta00/c90d1017b89b4853e8b97d13501b2e62) - Written by **Panakotta00**
* [UE4 Networking for BP](https://cedric-neukirchen.net/Downloads/Compendium/UE4_Network_Compendium_by_Cedric_eXi_Neukirchen.pdf) - Written by **Cedric Neukirchen**
    - Some very thorough documentation on UE4 Networking for both BP and C++
* [Blueprints vs C++](https://www.youtube.com/watch?v=VMZftEVDuCE)
    - If you do BP modding and haven't watched this video for whatever reason, I highly recommend watching it
    - Complimentary article: [Blueprints vs C++](http://awforsythe.com/unreal/blueprints_vs_cpp/)
* [Amazing YT Channel for BP Tutorials](https://www.youtube.com/channel/UCOVfF7PfLbRdVEm0hONTrNQ)

## Game Specific Modding Documentation Websites
Many popular modding communities for various games have their own websites for documenting and centralising modding information. In many cases, information can be shared between other games, due to maybe using the same tools, engine version or the game uses similar systems. Usually, games will keep their modding resources exclusively within their own Discord communities, however this lacks the benefit of having their docs indexed and searchable by search engines. 

* [Moolah Modding](https://moolah.dev/docs) (Payday 3)
* [Palworld](https://pwmodding.wiki/)
* [Hogwarts Legacy](https://modding.wiki/en/hogwartslegacy)
    - Contains many useful mod examples using the UE4SS Lua API
* [Satisfactory](https://docs.ficsit.app/satisfactory-modding/latest/index.html)
    - The Satisfactory Modding Documentation is much more useful than official UE documentation in some places, like in the C++ and Blueprint section
* [Spyro Reignited](https://franklygd.github.io/Spyro-Reignited-Trilogy-Asset-Replacement/)
* [Snowbreak Containment Zone](https://rentry.org/SnowbreakModdingTutorial)
  
## Game Specific BUT Transferrable
These are loose files/sites.

* [How to Package .ucas files](https://github.com/narknon/CCFF7RUproj#to-pak-files-as-ucasutoc)
    - While this guide is for Final Fantasy 7 Remake, it is still useful for modding a UE game that also uses .ucas files
* [Modding Windows Store Games](https://docs.google.com/document/d/1MWazakhAcey7mQlwZEJA-8dDQ-a2KXd-AXa8c0J0Tlo/edit)
    - This guide to get started with modding Windows Store (Xbox Game Pass and similar) UE games versions was created for Deep Rock Galactic but is potentially useful for any other game within this category
* [Astroneer Modding Guide](https://docs.google.com/document/d/193p6thlTOWffF-JIeTGrLUHg9Um5i6gwMJaK4kzy9Ik/edit)
    - The Astroneer Modder's Guide has some nice in-depth explanation of using the UnrealPak and UAssetGUI tools. If you ignore the Astroneer-specific parts, this is definitely relevant to most other UE4 games
* [Hex Editing Materials with HxD](https://docs.google.com/document/d/1JFGoev79Pqvh1JYYua2Ngo3rLRIWu8BeTtrwPWdn6lM/edit#heading=h.ga0funqkacr2)
    - Although this guide was created for Guilty Gear Strive, it features some absolutely brilliant explanations of using FModel and hex editing materials with HxD
* [Ghostrunner Guides](https://github.com/Dmgvol/GR_Guides) - Written by **Dmgvol**
    - A collection of modding guides for Ghostrunner but the same principles apply for all UE4 games
    - Guides like texture and model swapping, hex, UAssetGUI/API, CustomModLoader examples and more
* [Running UE Tools in Linux](https://mod.io/g/drg/r/drg-modding-tools-linux) - Written by **Keplyx**
    - How to run various modding tools in Linux, e.g. UAssetGUI, UModel, UE4 (without building from source)
    - This guide was made for DRG, however most of it is completely UE4 game-generic
* [How to Blueprint Mod](https://mod.io/g/drg/r/how-to-blueprint-mod) - Written by **Buckminsterfullerene**
    - Although this is made for Deep Rock Galactic, it is definitely still relevant for making BP mods for any other game
    - You will have to tailor the blueprint loading method to whatever your game uses or UE4SS, since DRG has a native system implemented by the developers
    - It also features some nice tips for general UE4 use
* [How to Audio Mod](https://mod.io/g/drg/r/drg-mods-a-comprehensive-guide-to-audio-modding) - Written by **Buckminsterfullerene**
    - Although this is made for Deep Rock Galactic, it is definitely still relevant for making audio mods for any other game that uses the default UE audio system
    - It also features some nice tips for general UE4 use

# UE Modding Discord Servers
A bunch of links to various UE Modding Discord servers. If you know of any that aren't listed here, please make a PR. Feel free to nick this list of Discord servers for your own Discord.

> [!WARNING]
> Although I have tried my best to get permanent invite links, I am not responsible for any being invalid. 

## General
* [UE Modding](https://discord.gg/unreal-engine-modding-876613187204685934) - A Discord server for modders from any game to pool knowledge & tools that they think could be useful for other UE games. It is a great place to ask questions and get help with modding.
* [Unreal Source](https://discord.gg/unrealsource) - The official Unreal Engine forum server.
* [Flatscreen to VR Game Modding](https://discord.gg/ZFSCSDe) - The server that is dedicated to modding games from flatscreen to VR.
* [UDK Veterans](https://discord.com/invite/HApcffArSa) - The refuge server for preserving Unreal Engine 3 history.

## Game Specific
* [Astroneer Modding](https://discord.gg/bBqdVYxu4k)
* [Bloodstained Mods](https://discord.gg/b9XBH4f)
* [Days Gone Modding](https://discord.gg/days-gone-modding-844382493427499048)
* [Deep Rock Galactic RND](https://discord.gg/g2sgB8PYSC)
* [Deep Rock Galactic Modder's Guild](https://discord.gg/nkPhp2sZfd)
* [Dungeoneer's Hideout](https://discord.gg/HHPZb9pRNG)
* [Grounded Modding](https://discord.gg/Rtfn5FE)
* [Hydroneer](https://discord.gg/hydroneer)
* [Illusory](https://discord.com/invite/7nDfDjvZzc)
* [Jedi: Fallen Order Modding](https://discord.com/invite/star-wars-jedi-modding-565192606145970177)
* [Mod by Daylight](https://discord.com/invite/mod-by-daylight-797070950507872256)
* [Ark Modding Discord](https://discord.arkmodding.net/) (note that you have to own the game on Steam to join it)
* [Borderlands 3 Modding](https://discord.gg/shadowevil)
* [Conan Exiles Modding](https://discord.com/invite/AWBmXFZ)
* [Mechwarrior 5 Modding](https://discord.com/invite/zRptMZD)
* [The official Mech 5 Discord with modding channels](https://discord.gg/hcnbX5r)
* [Mod the Dragon](https://discord.gg/z3BbjANWCz)
* [Modder Base](https://discord.gg/aRCRzEEtTT)
* [Satisfactory Modding](https://discord.gg/5mmF2uWR2u)
* [State of Decay 2 Modding](https://discord.gg/ngamAnJ)
* [Verg's Table Stable](https://discord.gg/HnyuAqvXEB)
* [Dragon Quest Modding](https://discord.gg/KuHG8bnEUf)
* [Project Wingman](https://discord.gg/3D76e6WqXr)
* [UE Anime Games' Modding](https://discord.gg/tgFrebr)
* [Combined speedrunning and modding for Ghostrunner](https://discord.gg/eZRz3Q5)
* [Official Blue Fire server with modding channels](https://discord.gg/q4ydWSG)
* [Code Vein & Scarlet Nexus Modding](https://discord.gg/VvfvWn9)
* [Orcs Must Die Modding Community](https://discord.gg/YrCaHw7Hza) (covers Unchained (UE3) (Project Rechained), OMD3 (UE4.26) and OMD Deathtrap (UE5.3.2))
* [Tales of Arise Mods](https://discord.gg/Se2XTnA)
* [BravelyPath Modular](https://discord.gg/t43Kbrp)
* [Trials of Mana Modding](https://discord.gg/MgDh4QW)
* [Zedfest Modding](https://discord.gg/dGZnqjENZB)
* [GFD Mods](https://discord.gg/XHVKA5xpu3)
* [Crash Bandicoot 4 Workshop](https://discord.gg/k7xZHWFFQp)
* [Spongebob BFBB Rehydrated Workshop](https://discord.gg/qWCtKfu)
* [CyubeVR](https://discord.gg/cyubeVR)
* [Evil Dead Modding](https://discord.gg/sjUez8dZF7)
* [Stray Modding](https://discord.gg/v2e7SbsJTW)
* [Warhammer UE Games Modding](https://discord.gg/pcUFFpD4QW)
* [Foxhole Modding](https://discord.com/invite/QD4KjK5RTv)
* [Ace Combat 7](https://discord.gg/get-home-be-home-stay-home-280590586321567745)
* [Ghostwire Tokyo Modding](https://discord.gg/BKpx2bw7C4)
* [Hogwarts Legacy Modding](https://discord.gg/xguMKc2xMe)
* [Ready Or Not Modding](https://discord.gg/hYkQ5hpmvr)
* [Remnant Games Modding](https://discord.gg/jX5qd2RefK)
* [Chivalry 2 Modding](https://discord.gg/chiv2unchained)
* [Amid Evil Modding](https://discord.gg/Nxp8m4bgBA)
* [Lies of P Modding](https://discord.gg/hvcZZf2Ph7)
* [FNAF Security Breach Modding](https://discord.gg/6B8REQVU9v)
* [Moolah Modding](https://discord.gg/ATDJBehwEc) (Payday 3)
* [Side 7 Modding](https://discord.gg/MdBKbmPxq3) (Dedicated servers for Gundam Evolution)
* [Escape the Backrooms Modding](https://discord.gg/kpkdpCdY7Y)
* [Palworld Modding](https://discord.gg/qHTZNcvYsv)
* [Bioshock Modding](https://discord.gg/8xDc6DRag8)
* [Into the Radius](https://discord.gg/NWgNFhQq)
* [Pseudoregalia](https://discord.gg/DqrHMrxWwf)
* [Life is Strange Modding](https://discord.gg/RBzmXmuy)
* [Absolver Academy](https://discord.gg/jUe34UTh)
* [Abiotic Factor Modding](https://discord.gg/Tz2YHA79rX)
* [Epic Mickey: Rebrushed Modding](https://discord.gg/j85J4BmZbn)
* [OpenFF7R](https://discord.gg/VYGQDmzhXr)
* [Frostpunk Modding Hub](https://discord.gg/ZWBhCYAyQN)
* [Lies of P Modding](https://discord.gg/PndjUd3xJa)
* [Batman Arkham Workshop](https://discord.gg/arkhamworkshop)
* [RuneScape: Dragonwilds Modding](https://discord.gg/ByfGPnGUkq)
* [Bellwright Modding](https://discord.gg/DyxeFVvT3D)
* [Killing Floor Series Modding](https://discord.gg/WtAeXRbF3K) (kf1, kf2, kf3, kfmod, kfi, kfc)
* [Borderlands Series Modding](https://discord.gg/bXeqV8Ef9R)
* [Tokyo Xtreme Racer Modding](https://discord.gg/7mMmpb43km)
* [Hello Neighbour Modding](https://discord.gg/krSZXxm6eR)
* [VEIN Unofficial Modding](https://discord.gg/nsaPf7wAkP)
* [Whiskerwood Modding](https://discord.gg/DnwmcvSQZz)

# Game Specific Template Projects
These are "mirrored" C++ UE projects for various games. They are meant to be used as a base for blueprint modding, and are usually updated to the latest version of the game. They completely eliminate the need to manually dummy any C++ headers.

Most are generated using [UE4SS](https://github.com/UE4SS-RE/RE-UE4SS) and the [Game Project Generator](https://github.com/Buckminsterfullerene02/UE4GameProjectGenerator).

More recently, some projects are using [Suzie](https://github.com/trumank/Suzie).

* [Deep Rock Galactic](https://github.com/DRG-Modding/FSD-Template)
* [Hogwarts Legacy](https://github.com/narknon/PhoenixUProj)
* [cyubeVR](https://github.com/cyubeVR-Modding/cyubeVR-Template)
* [Astro Colony](https://github.com/AstroColony-Modding/AC-Template)
* [Stray](https://github.com/Stray-Modding)
* [Hydroneer](https://github.com/Buckminsterfullerene02/Hydroneer-Template)
* [Crisis Core FF7 Reunion](https://github.com/narknon/CCFF7RUproj)
* [One Piece Odyssey](https://github.com/narknon/OnePieceOdysseyModding)
* [Nimbus](https://github.com/GreenTrafficLight/Nimbus-Template)
* [End Game](https://github.com/narknon/EndGameProj)
* [High On Life](https://github.com/narknon/HighProj)
* [Entropy Centre](https://github.com/narknon/ProjKilo)
* [Brewmaster](https://github.com/BrewmasterModding/BrewmasterMod)
* [Harvestella](https://github.com/narknon/HarvestellaProject)
* [Remnant](https://github.com/narknon/Remnant-Project)
* [Scorn](https://github.com/narknon/ScornProject)
* [Grounded](https://github.com/narknon/Grounded-uProject)
* [The King of Fighters XV](https://github.com/narknon/KOFXV-Project)
* [Ashen](https://github.com/narknon/Ashen-Proj)
* [Oak](https://github.com/narknon/OakGameProj)
* [Octo 2](https://github.com/narknon/Octo2-uProj)
* [Remnant II](https://github.com/narknon/Rem2Proj)
* [SW Game](https://github.com/narknon/SwGameProj)
* [Palworld](https://github.com/localcc/PalworldModdingKit)
* [Black Myth: Wukong](https://github.com/narknon/WukongB1)
* [Romancing Saga 2](https://github.com/nathtest/UProjRosa2)
* [Stalker 2](https://github.com/narknon/Stalker2UProj)
* [FF7R2](https://github.com/narknon/FF7R2UProj)
* [The Walking Dead: Saints & Sinners](https://github.com/substatica/TWD-CH1-SDK)
* [The Walking Dead: Saints & Sinners 2](https://github.com/substatica/TWD-CH2-SDK)
* [Oblivion Remastered](https://github.com/Kein/Altar)
* [RuneScape: Dragon Wilds](https://github.com/Kein/RSDragonwilds)
* [Whiskerwood](https://github.com/Whiskerwood-Modding/Whiskerwood-Project)
