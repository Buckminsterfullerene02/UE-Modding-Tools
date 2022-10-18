$RootPath = "D:\DEV\TresGame\Source\TresGame"
$Confirm = $False # Confirm each step?

# *.h

Get-ChildItem -Path $RootPath  -Filter *.h -Recurse | ForEach-Object {
    $PathToFile = $_.FullName
    $ClassName = $_.BaseName
    $FileContent = Get-Content -Path $PathToFile

    if ($FileContent -match "class .*A$ClassName : public"){
        # is actor

        #$PathToFile
        $ClassName

        if ($Confirm){
            Write-Host "Continue replace?"
            pause
        }
    
        $FileContent -replace [System.Text.RegularExpressions.Regex]::Escape("A$ClassName();"), "A$ClassName(const FObjectInitializer& ObjectInitializer);" | Set-Content -Path $PathToFile
        #Write-Host ""
    }
}

# *.cpp

Get-ChildItem -Path $RootPath  -Filter *.cpp -Recurse | ForEach-Object {
    $PathToFile = $_.FullName
    $ClassName = $_.BaseName
    $FileContent = Get-Content -Path $PathToFile

    if ($FileContent -match [System.Text.RegularExpressions.Regex]::Escape("A$ClassName::A$ClassName() {")){
        # is actor

        #$PathToFile
        $ClassName

        if ($Confirm){
            Write-Host "Continue replace?"
            pause
        }
    
        $FileContent -replace [System.Text.RegularExpressions.Regex]::Escape("A$ClassName::A$ClassName() {"), "A$ClassName::A$ClassName(const FObjectInitializer& ObjectInitializer) : Super(ObjectInitializer) {"  | Set-Content -Path $PathToFile
        #Write-Host ""
    }
}