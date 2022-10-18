# Asset Registry Helper

Allows merging contents of multiple asset registry files together and listing their contents.
Useful when game uses asset registry to lookup content and you want to add some new content of that type

## Usage:
```
AssetRegistryHelper <AssetRegistryFilename> -Merge <AssetRegistryFilename2> <AssetRegistryOut> [-Filter=...]
```

(use `-List` subcommand for listing contents, `-Filter=` works here too)

Example Command Line: 
```
AssetRegistryHelper "C:\Program Files (x86)\Steam\steamapps\common\Dead by Daylight\DeadByDaylight\AssetRegistry-Original.bin" -Merge "C:\Data\Projects\DeadByDaylight\Saved\Cooked\WindowsNoEditor\DeadByDaylight\AssetRegistry.bin" "C:\Program Files (x86)\Steam\steamapps\common\Dead by Daylight\DeadByDaylight\AssetRegistry.bin" -Filter="/Game/Blueprints/Tiles/"
```