@echo off

:Save_Backup_Utility
set ue_game_save_name=GAMEPROJECTNAMEHERE
for /f "tokens=1-3 delims=1234567890 " %%a in ("%time%") Do set "delims=%%a%%b%%c"
for /f "tokens=1-4 delims=%delims%" %%G in ("%time%") Do (
    set _hh=%%G
    set _min=%%H
    set _ss=%%I
    set _ms=%%J
  )
set _hh=%_hh: =%
if 1%_hh% LSS 20 Set _hh=0%_hh%
set save_storage_dir=Storage\Save_Backups\%ue_game_save_name%
if not exist %save_storage_dir% mkdir %save_storage_dir%
set temp_save_dir="%save_storage_dir%\Date_%date:/=%\Time_%_hh%_%_min%_%_ss%\Saved\SaveGames"
set temp_config_dir="%save_storage_dir%\Date_%date:/=%\Time_%_hh%_%_min%_%_ss%\Saved\Config\WindowsNoEditor"
mkdir %temp_save_dir%
mkdir %temp_config_dir%
copy "%localappdata%\%ue_game_save_name%\Saved\SaveGames\*.sav" %temp_save_dir%
copy "%localappdata%\%ue_game_save_name%\Saved\Config\WindowsNoEditor\*.ini" %temp_config_dir%

exit /b