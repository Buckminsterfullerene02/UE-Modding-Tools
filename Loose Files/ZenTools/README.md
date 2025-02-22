# ZenTools

ZenTools extracts cooked packages (.uasset/.uexp) from the IoStore container files (.ucas/.utoc + .pak).

Original repo (5.3 & 5.4 fix does not seem to ever be uploaded to it): https://github.com/LongerWarrior/ZenTools/

## Usage:

`ZenTools ExtractPackages <ContainerFolderPath> <ExtractionDir> [-Aes=<MainAesKey>] [-EncryptionKeys=<KeyFile>] [-ZenPackageVersion=<Initial/DataResourceTable/Latest>] [-SkipBulkData] [-PackageFilter=<Package/Path/Filter>] [-Filter=<FilterFile>]`

- `ContainerFolderPath` - Path to the folder containing the container files (.ucas/.utoc + .pak).
- `ExtractionDir` - Path to the folder where the extracted packages will be saved.
- `MainAesKey` - Main AES key for the game.
- `KeyFile` - Path to the file containing encryption keys.
- `ZenPackageVersion` - Version of the ZenPackage format to use. Default is `Latest`. `Initial` for UE5.1
- `SkipBulkData` - Skip extracting bulk data.
- `PackageFilter` - Filters packages to extract by path (use `!` at the start of the line to exclude packages)
Example: `/Game/Path/To/Package` or `!/Game/Path/To/Package` to exclude
- `Filter` - Path to the file containing package paths to extract. One path per line, use `!` at the start of the line to exclude packages.

If your game has encrypted paks, you must provide a keys.json, in the following format:

```json
{
  "KeyGUID1": "KeyHex1",
  "KeyGUID2": "KeyHex2"
}
```

Obviously if your game only has one encryption key, you only need to specify one entry.

**Example:**

`ZenTools.exe ExtractPackages "D:\SteamLibrary\steamapps\common\somegame\projectname\Content\Paks" "D:\somegame\Output" -EncryptionKeys="D:\somegame\keys.json"`

Since the game in the above example needs an AES key, this is the following `keys.json` file:

```json
{
  "00000000-0000-0000-0000-000000000000": "DEADBEEFCAFEDEADBEEFCAFEDEADBEEFCAFEDEADBEEFCAFEDEADBEEFCAFEDEAD"
}
```
or use `-AES=DEADBEEFCAFEDEADBEEFCAFEDEADBEEFCAFEDEADBEEFCAFEDEADBEEFCAFEDEAD` instead.
