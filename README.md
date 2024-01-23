# UE Modding Tools
A databank of every modding tool that has potential to be used across multiple UE games. Many tools were submitted by the lovely members of the [Unreal Engine Modding Discord](https://discord.gg/zVvsE9mEEa) - please join if you want discuss use of these tools!

If you are an UE game developer, and want to know how these tools can be used to mod your games, please see the developer guide [here](https://buckminsterfullerene02.github.io/dev-guide/).

Any category is not ordered by any means, and any tool that is not listed here, but should be, please submit a PR.

Some of these tools may be unmaintained and/or outdated, but are still useful for people writing their own tools and may want to see how others implemented their tools.

The tag **[CU]** before a tool means that it is **C**ommonly **U**sed by multiple UE modding communities, so is highly recommended for personal use.

The tag **[PW]** before a tool means that it is **P**ay**w**alled.

## Packers & Unpackers
Tools that deal with packing and unpacking the UE4 archive files.
* **[CU]** [UnrealPak](http://fluffyquack.com/tools/unrealpak.rar) - Put together by **FluffyQuack**
    - UnrealPak version from 2016 that is seemingly compatible with any UE4 game, that creates compressed pak files which results in smaller filesizes and theoretically faster loading
* **[CU]** [U4Pak](https://github.com/panzi/u4pak) - Written by **panzi**
    - U4Pak unpacks, packs, lists, checks and mounts UE4 .pak archives
* [ue4pak](https://github.com/Vilsol/ue4pak) - Written by **Vilsol**
    - Parses and extracts data from UE4 Pak files
* [U4Pak - Rust](https://github.com/panzi/rust-u4pak) - Written by **panzi**
    - Rust port of U4Pak
* [TocPatcher](https://github.com/kboykboy2/TocPatcher) - Written by **kboykboy**
    - Designed to modify .utoc files to allow mods to work for games using both `IoStore` and `Pak Signing`
* [unpak](https://github.com/bananaturtlesandwich/unpak) - Written by **Spuds**
    - A "no nonsense" unreal pak parser that doesn't force files to be extracted, only converts entries to bytes when requested and supports all pak versions
* [repak](https://github.com/trumank/repak) - Written by **truman**
    - A fork of the above unpak tool, with a few extra features
    - Supports reading all pak versions with compression/encryption and writing all pak versions
    - Multithreaded unpacking, roughly 2x faster than the built in UnrealPak tool
* [ZenTools](https://github.com/Archengius/ZenTools/) - Written by **Archengius**
    - Extracts cooked packages (`.uasset`/`.uexp`) from the `IoStore` container files (`.ucas`/`.utoc` + `.pak`)

## Asset Editors, Parsers & Explorers
Tools that deal with editing and parsing the UE4 asset files, with formats including `.uasset`, `.uexp`, `.ucas`, `.utoc`, `.umap` etc. 
* **[CU]** [UE Viewer (AKA UModel)](https://www.gildor.org/en/projects/umodel) - Written by **Gildor**
    - UE Viewer (formerly known as UModel) is the standard tool for viewing and extracting UE4 game content, particularly models and textures
* **[CU]** [Asset Editor](https://github.com/kaiheilos/Utilities) - Written by **kaiheilos**
    - UE Uasset Viewer/Editor can unpack and read/edit assets from engine versions 4.11 - 4.26
* **[CU]** [FModel](https://github.com/iAmAsval/FModel/)
    - Open-source software for exploring Unreal Engine games' files. From seeing the properties of an asset to listening to your favorite audio files, it has never been easier to navigate inside a game's assets
* **[CU]** [CUE4Parse](https://github.com/FabianFG/CUE4Parse) - Maintained by the FModel developers
    - C# Parser and API for UE packages & assets, used primarily by FModel
* **[CU]** [UAssetGUI](https://github.com/atenfyr/UAssetGUI) - Written by **atenfyr**
    - A GUI for UAssetAPI
* [UAssetAPI](https://github.com/atenfyr/UAssetAPI) - Written by **atenfyr**
    - A C# API for reading and writing UE4 .uasset files from 4.0 - 4.27+
    - The author is active on the [UE Modding Discord](https://discord.gg/zVvsE9mEEa) if you have any queries
* [KismetEditor view for UAssetGUI](https://github.com/trumank/UAssetGUI/tree/kismet-editor) - Written by **trumank**
    - A graph view similar to blueprints but on the kismet instruction level
    - Displays a limited set of instructions/parameters
* [Kismet Analyzer](https://github.com/trumank/kismet-analyzer) - Written by **trumank**
    - Tools for analyzing and manipulating kismet bytecode in cooked Unreal Engine assets
* [stove](https://github.com/bananaturtlesandwich/stove) - Written by **spuds**
    - A visual editor Unreal Engine cooked map files. Allows you to transplant actors from other maps, move actors, etc
* [JohnWickParse](https://github.com/SirWaddles/JohnWickParse) - Written by **SirWaddles, FabianFG, WorkingRobot & Amrsatrio**
    - A parser for uasset, uexp and pak files
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
* [UPK Explorer for UE3](https://www.nexusmods.com/site/mods/587/) - Written by **Wastelander121**
    - Allows you to install texture packs created with UPK Explorer for UE3
    - [TFC Installer](https://www.nexusmods.com/site/mods/588?)
    - There is a dedicated category for discussion of this tool with the author in the [UE Modding Discord](https://discord.gg/zVvsE9mEEa)

## Textures, Animations & Modelling
Tools that deal with editing the textures, animations and models from UE4 games. 
**Short PSA:** To get custom materials working in later UE4 versions, go to `ProjectSettings` then to `Packaging` and set `ShareMaterialShaderCode` to `False`, then cook them like you normally would.
* **[CU]** [Blender3D Import PSK/PSA FORK](https://github.com/matyalatte/blender3d_import_psk_psa) - Written by **matyalatte**
    - Fork of the below tool, but automatically handles scaling/fbx export so its a bit more user friendly for not messing things up
* [Blender3D Import PSK/PSA](https://github.com/Befzz/blender3d_import_psk_psa) - Written by **Befzz**
    - Blender3D Import .psk & .psa addon imports meshes, skeletons and animations from .psk and .psa files to Blender3D
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
* [Better Blender GLTF Importer](https://cdn.discordapp.com/attachments/1018594783800852540/1174440075032002714/io_scene_gltf2_ue4.zip?ex=65baa80d&is=65a8330d&hm=3086253f6562d84fb5ef9dad6d35b1398f7d0272df68f74c9dbd582b80d3a280&)
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
* **[PW]** [Cheatgear](https://cheatgear.com/)
    - Useful for dumping a lot of the uFunction names and writing script mods on top of it
* [Dumper-7](https://github.com/Encryqed/Dumper-7) - Written by **Fischsalat & Encryqed**
    - SDK Generator for all Unreal Engine games. Supported versions are all of UE4 and UE5
* [UE4 Project Generator GUI](https://cdn.discordapp.com/attachments/1005879578419531947/1075109443445985462/UE4ProjectGen-GUI.exe) - Written by **Spuds**
    - Organises the CMD arguments for you in a GUI and generates reuseable batch files
* [UE Plugin Manifest Generator](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/upluginTool.7z) - Written by **HeartlessSeph**
    - A simple script to make the plugin manifest for the project gen commandlet because <=4.17 games don't include them
    - Usage is pretty simple, after fulling dumping your UE4 game just drag and drop the root extracted folder onto the program
    - It'll spit out a file named "new.upluginmanifest" which can be renamed to whatever you want
* [Add Object Initialiser To Actors in Project Files](https://gist.github.com/Buckminsterfullerene02/90d1d02a6639f656e284bd799801241c) - Written by **dedede123**
    - Adds object initializer to the constructor/static class of all Actor classes in your uproject files
    - Modify to set the correct folder, and could be modified to apply to other types of classes as well if needed
* [Unreal Mappings Dumper](https://github.com/OutTheShade/UnrealMappingsDumper) - Written by **OutTheShade**
    - A dumper that generates mappings (.usmap) files for datamining Unreal Engine 5 games
* [Unreal Dumper](https://github.com/guttir14/UnrealDumper-4.25) - Written by **guttir14**
    - Generates the C++ headers for your game
* [UE SDK Generator](https://github.com/polivilas/UnrealEngineSDKGenerator) - Written by **polivilas**
    - Supports the generation of SDKs for any game on UE version 1-4
* [UWP Dumper](https://github.com/Wunkolo/UWPDumper) - Written by **Wunkolo, tunip3 & LukeFZ**
    - A DLL and Injector for dumping UWP applications at run-time to bypass encrypted file system protection
* [Unreal Finder Tool](https://github.com/CorrM/Unreal-Finder-Tool) - Written by **CorrM**
    - The outdated - but open-source - version of Cheatgear

## Editor Asset Generators
Tools that generate assets for the Unreal Engine Editor. Allows you to reconstruct the game's assets in the editor, in your own project. Saves a heap of time with manually dummying assets for blueprint modding. Example modkit projects can be found in the [Game Specific Modkits](https://github.com/Buckminsterfullerene02/UE-Modding-Tools#game-specific-modkits) section. 
* [JsonAsAsset](https://github.com/Tectors/JsonAsAsset) - Written by **Tectors & GMatrixGames**
    - Takes FModel's exportable JSON data from a cooked asset and converts it into an Unreal Engine asset inside of the editor
    - Only supports Unreal Engine 5
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

## .locres Editors
Tools that deal with editing the UE4 .locres files, which are used for localisation.
* **[CU]** [UnrealLocres](https://github.com/akintos/UnrealLocres) - Written by **akintos**
    - UnrealLocres can read/write every locres version up to 3 (latest)
* [Locres Editor](https://cdn.discordapp.com/attachments/775093920915914794/836699867920859207/unreal_locres_texttool.exe) - (Unknown author)
    - A tool to change the game's `.locres` files that are used for localization
* [UE4LocalizationsTool](https://github.com/amrshaheen61/UE4LocalizationsTool) - Written by **amr shaheen**
    - Simple tool to edit unreal engine 4 text files

## Loaders
Tools that can load mods into the game.
* **[CU]** [UE4SS Mod Loader](https://github.com/UE4SS-RE/RE-UE4SS)
    - Spawn blueprint mods automatically without editing/replacing game files
    - Support for mods created previously with UML
* [Unreal Engine Mod Loader](https://github.com/RussellJerome/UnrealModLoader) - Written by **RussellJerome**
    - A tool used to load Blueprint and basic SDK based C++ Mods for Unreal Engine 4 games
    - Mostly depreciated now with the release of UE4SS' Mod Loader
* [Reality](https://github.com/itskaitlyn03/Reality) - Written by **itskaitlyn03**
    - A highly abstract and modular Unreal Engine mod loader for the 21st century, written in C#
* [DLL Plugin Loader](https://github.com/c0dycode/DLLPluginLoader) - Written by **c0dycode**
    - Loads various other DLLs if an application/game tried to load a certain DLL which is not actually being used/required

## Unlockers
Unlocks features that are usually disabled in shipping UE games.
* **[CU]** [Universal UE Unlocker (UUU) v3.0](https://framedsc.github.io/GeneralGuides/universal_ue4_consoleunlocker.htm) - Written by **Frans 'Otis_Inf' Bouma**
    - Re-enables the command line within a game if usually disabled
    - [Full list](https://digilander.libero.it/ZioYuri78/) of available commands
* **[PW]** [UUU v4.0](https://www.patreon.com/Otis_Inf) - Written by **Frans 'Otis_Inf' Bouma**
    - Provides custom photo-mode mods and a bunch of other amazing cinematography tools for UE4 games
* [UUU Dump Formatter](https://github.com/Mert-Y/UniversalUE4UnlockerDumpFormatter) - Written by **Mert-Y**
    - Formats the dump from the UUU into a readable format
* [Unreal Mod Unlocker](https://github.com/IllusorySoftware/UnrealModUnlocker-Public) - Written by **IllusorySoftware**
    - Unlocks loading of 3rd party UE4 loose files for (a claimed) 75-90% of UE4 games

## Audio
Tools that deal with audio modding. You don't need any tools to mod the default UE audio system, if the game uses that. Sadly, many games use proprietary audio systems like FMOD and WWise, which require their own tools.
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
* **[CU]** [UE4SS 2.0](https://github.com/UE4SS-RE/RE-UE4SS) - Written by **Narknon**
    - Map dumper/generator within Blender OR the UE editor (if you have static meshes recreated in the project)
* **[PW]** [Hammeur](https://nte.itch.io/hammuer) - Written by **NT Entertainment**
    - A Source/idTech 2-4 map importer plugin for Unreal Engine 4 (and eventually 5)
* [UE4 Quake Map Importer](https://github.com/GoomiiV2/UE4-Quake-Map-Importer) - Written by **GoomiiV2**
* [Yet another Quake Map Importer](https://github.com/Perpixel/UE4_QuakeImport) - Written by **Perpixel**
* [Unreal Polygonal Map Generator](https://github.com/Jay2645/Unreal-Polygonal-Map-Gen) - Written by **Hay2645**
* [Call of Duty to UE4](https://github.com/AgenteDog/CoDtoUE4) - Written by **AgenteDog**
* [SuperGrid Starter Pack](https://www.unrealengine.com/marketplace/en-US/product/supergrid-starter-pack) - Written by **ZeOrb**
    - Level blockout tools, useful for some map modding
* [BlenderUMap2](https://github.com/MinshuG/BlenderUmap2) - Written by **Amrsatrio & MinshuG**
    - Imports `.umaps` into Blender from UE4/5 games
    - Can also read `.replay` files from Fortnite and export actors from them

## Automation
Tools that can help to automate the modding pipeline (that haven't been covered already).
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

## Reversing
Reversing tools that aren't necessarily to do with UE, but are commonly used to help with reversing games.
* [pattensleuth](https://github.com/trumank/patternsleuth) - Written by **trumank**
    - A tool for finding AoBs/patterns against a collection of Unreal Engine games
    - Can show a summary of all patterns against all games or disassemble each step of a pattern resolution chain to debug failed patterns
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

## Other
Other tools that aren't necessarily to do with UE, but are commonly used to help with modding games.
* **[CU]** [Unreal Engine 4/5 Scripting System (UE4SS)](https://github.com/UE4SS-RE/RE-UE4SS/releases) - Written by multiple contributors
    - Exposes UE4 reflection to Lua and allows you to write Lua to create mods for UE4 games
    - Full instructions on how to use it can be found [here](https://docs.ue4ss.com/installation-guide.html)
    - UE4SS includes a live view debugger, meaning that you can watch/log values of every loaded asset in the game, in real-time making it very useful for blueprint modding
    - The authors are active on the [UE4SS Discord](https://discord.gg/MFvUysppTS) if you have any queries
* **[CU]** [Unreal Engine Virtual Reality](https://github.com/praydog/UEVR) - Written by **praydog**
    - Universal VR Mod for Unreal Engine 4/5
* **[CU]** [uesave](https://github.com/trumank/uesave-rs) - Written by **truman**
    - A save file editor/library for reading and writing Unreal Engine save files (commonly referred to as GVAS)
* [UE4 Engine Version Grabber](https://github.com/RussellJerome/Unreal-Engine-4-Engine-Version-Grabber) - Written by **RussellJerome**
    - A simple tool that will grab the engine version of a UE4 game
* [USharp](https://github.com/pixeltris/USharp) - Written by **pixeltris**
    - A plugin for UE4.23 which allows for programming in C#
* [Universal-ImGui-D3D11-Hook-WithResize](https://github.com/GHFear/Universal-ImGui-D3D11-Hook-WithResize) - Written by **GHFear**
    - A Universal DirectX11 hook that supports resizing of the game window by hooking the ResizeBuffers
* [Asset Registry Helper](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/tree/main/Loose%20Files/Asset%20Registry%20Helper) - Written by **Archengius**
    - Allows merging contents of multiple asset registry files together and listing their contents
    - Useful when game uses asset registry to lookup content and you want to add some new content of that type
* [Visual Studio 2017 Community Installer](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/vs_Community.exe) - Posted by **Narknon**
    - VS-2017 Community installer because microsoft apparently removed it from available downloads lol
* [Orbital Market](https://orbital-market.com/search)
    - A way to browse Epic marketplace and sort by popularity/reviews and use filters properly

# Guides
Guides that are useful for modding UE games.

## General
* [Setting up UE as git merge tool for BPs](https://gist.github.com/Panakotta00/c90d1017b89b4853e8b97d13501b2e62) - Written by **Panakotta00**
* [UE4 Networking for BP](https://cedric-neukirchen.net/Downloads/Compendium/UE4_Network_Compendium_by_Cedric_eXi_Neukirchen.pdf) - Written by **Cedric Neukirchen**
    - Some very thorough documentation on UE4 Networking for both BP and C++
* [Blueprints vs C++](https://www.youtube.com/watch?v=VMZftEVDuCE)
    - If you do BP modding and haven't watched this video for whatever reason, I highly recommend watching it
    - Complimentary article: [Blueprints vs C++](http://awforsythe.com/unreal/blueprints_vs_cpp/)
* [Amazing YT Channel for BP Tutorials](https://www.youtube.com/channel/UCOVfF7PfLbRdVEm0hONTrNQ)

## Game-specific BUT Transferrable
* [How to Package .ucas files](https://github.com/narknon/CCFF7RUproj#to-pak-files-as-ucasutoc)
    - While this guide is for Final Fantasy 7 Remake, it is still useful for modding a UE game that also uses .ucas files
* [Modding Windows Store Games](https://docs.google.com/document/d/1MWazakhAcey7mQlwZEJA-8dDQ-a2KXd-AXa8c0J0Tlo/edit)
    - This guide to get started with modding Windows Store (Xbox Game Pass and similar) UE games versions was created for Deep Rock Galactic but is potentially useful for any other game within this category
* [Satisfactory Blueprint Modding Documentation](https://docs.ficsit.app/satisfactory-modding/latest/index.html)
    - The Satisfactory Modding Documentation is much more useful than official UE4 documentation in some places, like in the C++ and Blueprint section
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
    - You will have to tailor the blueprint loading method to whatever your game uses, or UML, or whatever, since DRG has a native system implemented by the developers
    - It also features some nice tips for general UE4 use
* [How to Audio Mod](https://mod.io/g/drg/r/drg-mods-a-comprehensive-guide-to-audio-modding) - Written by **Buckminsterfullerene**
    - Although this is made for Deep Rock Galactic, it is definitely still relevant for making audio mods for any other game that uses the default UE audio system
    - It also features some nice tips for general UE4 use

# UE Modding Discord Servers
A bunch of links to various UE Modding Discord servers. If you know of any that aren't listed here, please make a PR. Although I have tried my best to get permanent invite links, I am not responsible for any being invalid. Feel free to nick this list of Discord servers for your own Discord.

## General
* [UE Modding](https://discord.gg/zVvsE9mEEa) - A Discord server for modders from any game to pool knowledge & tools that they think could be useful for other UE games. It is a great place to ask questions and get help with modding.
* [Unreal Slackers](https://discord.gg/unreal-slackers) - The official Unreal Engine forum server.
* [Flatscreen to VR Game Modding](https://discord.gg/ZFSCSDe) - The server that is dedicated to modding games from flatscreen to VR.

## Game Specific
* [Astroneer Modding](https://discord.gg/bBqdVYxu4k)
* [Bloodstained Mods](https://discord.gg/b9XBH4f)
* [Days Gone Modding](https://discord.gg/udwqmH3zmw)
* [Deep Rock Galactic Modding](https://discord.gg/3EVUQjz8N5)
* [Dungeoneer's Hideout](https://discord.gg/HHPZb9pRNG)
* [Grounded Modding](https://discord.gg/Rtfn5FE)
* [Hydroneer](https://discord.gg/Jvwnn49YjU)
* [Illusory](https://discord.gg/JVgD2w3Npj)
* [Jedi: Fallen Order Modding](https://discord.gg/vdW326Z67h)
* [Mod by Daylight](https://discord.gg/zHADmtvYEZ)
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
* [Project Wingman](https://discord.gg/projectwingman)
* [UE Anime Games' Modding](https://discord.gg/tgFrebr)
* [Combined speedrunning and modding for Ghostrunner](https://discord.gg/eZRz3Q5)
* [Official Blue Fire server with modding channels](https://discord.gg/q4ydWSG)
* [Code Vein & Scarlet Nexus Modding](https://discord.gg/VvfvWn9)
* [Orcs Must Die Modding Community](https://discord.gg/YrCaHw7Hza) (covers Unchained (UE3) Singleplayer client and OMD3 (UE4.26))
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
* [Ghostwire Tokyo Modding](https://discord.gg/XpyRqe6p)
* [Hogwarts Legacy Modding](https://discord.gg/j8EHr266)
* [Ready Or Not Modding](https://discord.gg/hYkQ5hpmvr)
* [Remnant II Modding](https://discord.gg/jX5qd2RefK)
* [Chivalry 2 Modding](https://discord.gg/chiv2unchained)
* [Amid Evil Modding](https://discord.gg/aK4eS65n9c)
* [Lies of P Modding](https://discord.gg/hvcZZf2Ph7)
* [FNAF Security Breach Modding](https://discord.gg/6B8REQVU9v)
* [Moolah Modding](https://discord.gg/ATDJBehwEc) (Payday 3)
* [Side 7 Modding](https://discord.gg/MdBKbmPxq3) (Dedicated servers for Gundam Evolution)
* [Escape the Backrooms Modding](https://discord.gg/kpkdpCdY7Y)
* [Palworld Modding](https://discord.gg/qHTZNcvYsv)

# Game Specific Template Projects
These are "mirrored" C++ UE projects for various games. They are meant to be used as a base for blueprint modding, and are usually updated to the latest version of the game. They completely eliminate the need to manually dummy any C++ headers.

They are all generated using [UE4SS](https://github.com/UE4SS-RE/RE-UE4SS) and some fork of the [Game Project Generator](https://github.com/Archengius/UE4GameProjectGenerator).

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

# Game Specific Modkits
These modkits are fully reconstructed/decooked game assets that are placed into the editor on top of the game's template project. These modkits completely eliminate the need to manually dummy any game assets for blueprint mods.

They are all generated using [UEAssetToolkitGenerator](https://github.com/LongerWarrior/UEAssetToolkitGenerator) and [UEAssetToolkit](https://github.com/Buckminsterfullerene02/UEAssetToolkit-Fixes) as well as a few automation scripts such as the CUE4Parse anim export script & zain's Blender mass psk/psa -> fbx exporter. 

* [Deep Rock Galactic](https://github.com/DRG-Modding/Community-Modkit)
* [Astro Colony](https://drive.google.com/file/d/1AazbzwbIWUcXGCp8T2k8M9dkCSKmNA3H/view)
* [cyubeVR](https://drive.google.com/file/d/17hX0e-hQ8MFm3IoW3ljH00EYh2earCoX/view?usp=share_link)
