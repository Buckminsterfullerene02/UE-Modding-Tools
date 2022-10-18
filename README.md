# UE-Modding-Tools
A databank of every modding tool that has potential to be used across multiple UE games. Many tools were submitted by the lovely members of the [Unreal Engine Modding Discord](https://discord.gg/zVvsE9mEEa) - please join if you want discuss use of these tools!

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
Tools that deal with editing and parsing the UE4 asset files, with formats including `.uasset`, `.uexp`, `.ucas`, `.utoc`, `.umap` etc. 
* [CUE4Parse](https://github.com/FabianFG/CUE4Parse) - Maintained by the FModel developers
    - C# Parser and API for UE packages & assets
* [JohnWickParse](https://github.com/SirWaddles/JohnWickParse) - Written by **SirWaddles, FabianFG, WorkingRobot & Amrsatrio**
    - A parser for uasset, uexp and pak files
* [UAssetAPI](https://github.com/atenfyr/UAssetAPI) - Written by **atenfyr**
    - A C# API for reading and writing UE4 .uasset files from 4.0 - 4.27+
    - The author is active on the [UE Modding Discord](https://discord.gg/zVvsE9mEEa) if you have any queries
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
* [3DSMax Bulk Export PSK/PSA to FBX](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/ActorXAnimConverter.ms) - Written by **Gildor**, adapted by **Aproydtix**
    - Version of ActorX 3DSMax script that can bulk convert PSK/PSA to FBX 
    - [Original Script](https://www.gildor.org/projects/unactorx) by Gildor, and modifications by Aproydtix from OpenKH
    - Also will do deformation fixes to put an animation on a modified skeleton

## SDK Generators & Dumpers
Tools that generate SDKs and dump the game's code.
* **[CU]** [Unreal Engine 4 Scripting System (UE4SS)](https://github.com/UE4SS/UE4SS/releases) - Written by **CheatingMuppet**
    - A UHT compatible header generator made by **Archengius** and an object dumper by **CheatingMuppet**
    - It can also dump all C++ headers from a game, including Blueprint actors
    - Full instructions on how to use it can be found [here](https://github.com/UE4SS/UE4SS/blob/master/Guides/FullInstallationGuide.md)
    - The authors are active on the [UE Modding Discord](https://discord.gg/zVvsE9mEEa) if you have any queries
* **[CU]** [UE4 Game Project Generator](https://github.com/Archengius/UE4GameProjectGenerator) - Written by **Archengius**
    - Allows the creation of a game mod project using the UHT header dumps from UE4SS
    - Full instructions on how to use it can be found [here](https://github.com/UE4SS/UE4SS/wiki/Generating-UHT-compatible-headers)
* [UE4 Project Generator GUI](https://github.com/bananaturtlesandwich/unreal-mod-tools/releases/tag/UE4ProjectGen-GUI) - Written by **Spuds**
    - Organises the CMD arguments for you in a GUI and generates reuseable batch files
* [UE Plugin Manifest Generator](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/upluginTool.7z) - Written by **HeartlessSeph**
    - A simple script to make the plugin manifest for the project gen commandlet because <=4.17 games don't include them
    - Usage is pretty simple, after fulling dumping your UE4 game just drag and drop the root extracted folder onto the program
    - It'll spit out a file named "new.upluginmanifest" which can be renamed to whatever you want
* [Add Object Initialiser To Actors in Project Files](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/ObjectInitializerActorConstructorScript.ps1) - Written by **dedede123**
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
* **[PW]** [Cheatgear](https://cheatgear.com/)
    - Useful for dumping a lot of the uFunction names and writing script mods on top of it
* [Unreal Finder Tool](https://github.com/CorrM/Unreal-Finder-Tool) - Written by **CorrM**
    - The outdated - but open-source - version of Cheatgear

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
* **[CU]** [Unreal Engine Mod Loader](https://github.com/RussellJerome/UnrealModLoader) - Written by **RussellJerome**
    - A tool used to load Blueprint and basic SDK based C++ Mods for Unreal Engine 4 games
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

## Automation
Tools that can help to automate the modding pipeline (that haven't been covered already).
* [Backup UE Saves](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/SaveBackupUtility.bat) - Written by **Mythical**
    - Just edit the Game project name to your particular game and it will backup the `.sav` and `.ini` files for that game or just toss it in one of your existing bat files
* [Auto-Disable uasset Files](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/DisableUassets.bat) - Written by **Spuds**
    - Deletes `.uexp` and `.ubulk` files and replaces `.uassets` with blank files of the same name recursively when a folder containing exported assets is dragged onto it
* [Create Empty Content Folder Hierarchy](https://github.com/Buckminsterfullerene02/UE4-Modding-Tools/blob/main/Loose%20Files/EmptyContentHierarchyGenerator.bat) - Written by **Buckminsterfullerene**
    - Deletes every file inside of a specified directory but leaves all of the folders intact
    - Useful for creating a blank content folder hierarchy for a game

# Reversing
Reversing tools that aren't necessarily to do with UE, but are commonly used to help with reversing games.
* [Cheat Engine](https://www.cheatengine.org/) - Written by **Dark Byte**
    - A tool for modifying single player games
    - It allows you to scan for values and then change them
* [x64dbg](https://x64dbg.com/) - Written by **mrexodia**
    - A free and open-source x64/x32 debugger for windows
    - For certain types of reversing like finding basic AOBs it is great because it is much faster than IDA (it doesn't do the same level of decompiling)
* [x64dbg Swiss Army Knife](https://github.com/Nukem9/SwissArmyKnife) - Written by **Nukem9**
    - Plugin for x64dbg that can generate AOBs for you, and will automatically wildcard call pointers and such
* [AOB Generator](https://github.com/FransBouma/InjectableGenericCameraSystem/tree/master/Tools/AOBGen) - Written by **Frans 'Otis_Inf' Bouma**
    - A small tool for easy AOB creating from copied x64 disassembly (Cheat Engine or x64dbg format)
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

# Other
Other tools that aren't necessarily to do with UE, but are commonly used to help with modding games.
* [UE4 Engine Version Grabber](https://github.com/RussellJerome/Unreal-Engine-4-Engine-Version-Grabber) - Written by **RussellJerome**
    - A simple tool that will grab the engine version of a UE4 game
* [USharp](https://github.com/pixeltris/USharp) - Written by **pixeltris**
    - A plugin for UE4.23 which allows for programming in C#
* [Universal-ImGui-D3D11-Hook-WithResize](https://github.com/GHFear/Universal-ImGui-D3D11-Hook-WithResize) - Written by **GHFear**
    - A Universal DirectX11 hook that supports resizing of the game window by hooking the ResizeBuffers
* **[CU]** [Unreal Engine 4 Scripting System (UE4SS)](https://github.com/UE4SS/UE4SS/releases) - Written by **CheatingMuppet**
    - Exposes UE4 reflection to Lua and allows you to write Lua to create mods for UE4 games
    - Full instructions on how to use it can be found [here](https://github.com/UE4SS/UE4SS/blob/master/Guides/FullInstallationGuide.md)
* [Asset Registry Helper]() - Written by **Archengius**
    - Allows merging contents of multiple asset registry files together and listing their contents
    - Useful when game uses asset registry to lookup content and you want to add some new content of that type
* [Visual Studio 2017 Community Installer]() - Posted by **Narknon**
    - VS-2017 Community installer because microsoft apparently removed it from available downloads??