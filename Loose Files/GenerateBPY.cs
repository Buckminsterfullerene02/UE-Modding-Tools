using System;
using System.IO;

namespace GenerateBPY {
    class Program {
        static void Main(string[] args) 
        {
            var inputPath = @"F:\DRG Modding\DRGPacker\JSON\Blender\SMs\"; // Where your static meshes are
            var outputPath = @"F:\DRG Modding\DRGPacker\JSON\Assets\Game\"; // Where you want your FBX files to go
            var commandsPath = @"F:\DRG Modding\DRGPacker\JSON\Blender\BlenderCommands\commands.py"; // Where you want your commands file to go
            var allfiles = Directory.GetFiles(inputPath, "*.gltf", SearchOption.AllDirectories);

            var command = "import bpy\n\n";
            for (var i = 0; i < allfiles.Length; i++)
            {
                // model already converted?
                if (File.Exists((outputPath + allfiles[i].Remove(0, inputPath.Length)).Replace(".gltf", ".fbx"))) continue;
                var InputFile = allfiles[i];
                var OutputFile = (outputPath + allfiles[i].Remove(0, inputPath.Length)).Replace(".gltf", ".fbx");
                var folder = Path.GetDirectoryName(outputPath + allfiles[i].Remove(0, inputPath.Length));
                // create output directory
                Directory.CreateDirectory(folder);

                command += "bpy.ops.import_scene.gltf(filepath = \"" + InputFile.Replace("\\", "\\\\") +
                            "\", files =[{ \"name\":\"" + Path.GetFileName(InputFile) + "\", \"name\":\"" +
                            Path.GetFileName(InputFile) + "\"}], loglevel = 50)\n";
                command += "bpy.ops.export_scene.fbx(filepath=\"" + OutputFile.Replace("\\", "\\\\") + "\")\n";
                command += "bpy.ops.object.select_all(action='SELECT')\n";
                command += "bpy.ops.object.delete(use_global=False, confirm=False)\n\n";
            }

            File.WriteAllText(commandsPath, command); // CHANGE
        }
    }
}