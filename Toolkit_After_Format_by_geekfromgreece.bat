@echo off
color 0A
setlocal EnableDelayedExpansion

:: Optional title for the main toolkit
title Toolkit After Format (by geekfromgreece)

:: ==================================================
::                    MAIN MENU
:: ==================================================
:MAIN_MENU
cls
echo ==========================
echo    Toolkit After Format
echo     by geekfromgreece
echo ==========================
echo ------ Main Menu ---------
echo 1. Admin Rights
echo 2. Windows Activation Script
echo 3. ExportInstall Drivers
echo 4. Personalization
echo 5. Internet Toolkit
echo 6. System Cleaner
echo 7. Power Control
echo 8. Others
echo E. Exit
echo ====================================
set /p MAIN_CHOICE="Choose an option: "
echo ====================================

if /I "%MAIN_CHOICE%"=="1" goto ADMIN_RIGHTS
if /I "%MAIN_CHOICE%"=="2" goto M2_ENTRY
if /I "%MAIN_CHOICE%"=="3" goto M3_ENTRY
if /I "%MAIN_CHOICE%"=="4" goto M4_MENU
if /I "%MAIN_CHOICE%"=="5" goto M5_MENU
if /I "%MAIN_CHOICE%"=="6" goto SC_MENU
if /I "%MAIN_CHOICE%"=="7" goto POWER_CONTROL
if /I "%MAIN_CHOICE%"=="8" goto OTHERS_MENU
if /I "%MAIN_CHOICE%"=="E" goto END
goto MAIN_MENU


:: ==================================================
:: 1. ADMIN RIGHTS
:: ==================================================
:ADMIN_RIGHTS
cls
echo ==========================
echo         Admin Rights
echo ==========================
echo.
echo Checking administrator status...
echo.

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%'=='0' (
    echo --------------------------------------------------------------
    echo Command cannot procced user have already admin rights!
    echo --------------------------------------------------------------
    echo.
    goto ADMIN_RETURN
)

echo Requesting administrative privileges...
goto UACPrompt

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params=%*:"=%
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"

    echo.
    echo Privilege escalation process completed.
    goto ADMIN_RETURN

:ADMIN_RETURN
echo.
echo ===================================
echo Press "R" to return to "Main Menu"
echo ===================================
set /p RKEY=""

if /I "%RKEY%"=="R" goto MAIN_MENU
goto ADMIN_RETURN



:: ==================================================
:: 2. WINDOWS ACTIVATION SCRIPT
:: ==================================================
:M2_ENTRY
cls
echo ==========================
echo   2. Windows Activation Script
echo ==========================
echo.
echo Checking administrator status...
echo.

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ===============================================================
    echo   ERROR: Please run this script with administrator privileges!
    echo ===============================================================
    echo.
    echo Press R to return to Main Menu
    set /p RKEY=""
    if /I "%RKEY%"=="R" goto MAIN_MENU
    goto M2_ENTRY
)

goto M2_MAIN


:M2_MAIN
cls
echo =============================
echo 2. Windows Activation Script
echo =============================
echo --------------- Menu -------------------
echo 1. Windows 11/10 License (Semi-Annual Channel versions)
echo 2. Windows 10 (LTSC/LTSB versions)
echo 3. Windows 8.1
echo 4. Windows 8
echo 5. Windows 7
echo 6. Windows Vista
echo 7. License Details
echo 8. Activate License From Original Product Key
echo R. Return to Main Menu
echo ==============================
set /p M2_CH="Choose an option: "
echo ==============================

if /I "%M2_CH%"=="R" goto MAIN_MENU
if "%M2_CH%"=="1" goto Win110
if "%M2_CH%"=="2" goto Win10
if "%M2_CH%"=="3" goto Win81
if "%M2_CH%"=="4" goto Win8
if "%M2_CH%"=="5" goto Win7
if "%M2_CH%"=="6" goto WinV
if "%M2_CH%"=="7" goto Tool
if "%M2_CH%"=="8" goto OPK
goto M2_MAIN


:: PRODUCT KEY
:OPK
cls
echo ==========================
echo     Original Product Key
echo ==========================
wmic path SoftwareLicensingService get OA3xOriginalProductKey
echo.
pause
goto M2_MAIN


:: WINDOWS 11/10
:Win110
cls
echo ==========================
echo   Windows 11/10 Versions
echo ==========================
echo a. Windows 11/10 Pro
echo b. Windows 11/10 Pro N
echo c. Windows 11/10 Pro for Workstations
echo d. Windows 11/10 Pro for Workstations N
echo e. Windows 11/10 Pro Education
echo f. Windows 11/10 Pro Education N
echo g. Windows 11/10 Education
echo h. Windows 11/10 Education N
echo i. Windows 11/10 Enterprise
echo j. Windows 11/10 Enterprise N
echo k. Windows 11/10 Enterprise G
echo l. Windows 11/10 Enterprise G N
echo R. Return to Menu
echo ============================================
choice /c abcdefghijklr /m "Select an option: "
echo ============================================

if %errorlevel%==1  call :Activate W269N-WFGWX-YVC9B-4J6C9-T83GX null
if %errorlevel%==2  call :Activate MH37W-N47XK-V7XM9-C7227-GCQG9 null
if %errorlevel%==3  call :Activate NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J null
if %errorlevel%==4  call :Activate 9FNHH-K3HBT-3W4TD-6383H-6XYWF null
if %errorlevel%==5  call :Activate 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y null
if %errorlevel%==6  call :Activate YVWGF-BXNMC-HTQYQ-CPQ99-66QFC null
if %errorlevel%==7  call :Activate NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 null
if %errorlevel%==8  call :Activate 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ null
if %errorlevel%==9  call :Activate NPPR9-FWDCX-D2C8J-H872K-2YT43 null
if %errorlevel%==10 call :Activate DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 null
if %errorlevel%==11 call :Activate YYVX9-NTFWV-6MDM3-9PT4T-4M68B null
if %errorlevel%==12 call :Activate 44RPN-FTY23-9VTTB-MP9BX-T84FV null
if %errorlevel%==13 goto M2_MAIN

goto Win110


:Win10
cls
echo ==========================
echo Windows 10 LTSC/LTSB Versions
echo ==========================
echo (submenu here)
pause
goto M2_MAIN

:Win81
cls
echo ==========================
echo Windows 8.1 Versions
echo ==========================
echo (submenu here)
pause
goto M2_MAIN

:Win8
cls
echo ==========================
echo Windows 8 Versions
echo ==========================
echo (submenu here)
pause
goto M2_MAIN

:Win7
cls
echo ==========================
echo Windows 7 Versions
echo ==========================
echo (submenu here)
pause
goto M2_MAIN

:WinV
cls
echo ==========================
echo Windows Vista Versions
echo ==========================
echo (submenu here)
pause
goto M2_MAIN


:Activate
cls
set "key=%1"
set "server=%2"

echo ==========================
echo     Activating Windows...
echo ==========================
timeout /t 2 >nul

slmgr.vbs /ipk %key%
if "%server%"=="null" (
    slmgr.vbs /skms kms9.msguides.com
) else (
    slmgr.vbs /skms %server%
)
slmgr.vbs /ato

echo.
echo Activation complete!
pause
goto M2_MAIN


:Tool
cls
echo ==========================
echo         License Tools
echo ==========================
echo 1. View Original Product Key
echo 2. Display license info
echo 3. Detailed license info
echo 4. License expiration date
echo R. Return
echo ==========================
choice /c 1234R /m "Select an option: "

if %errorlevel%==1 wmic path SoftwareLicensingService get OA3xOriginalProductKey
if %errorlevel%==2 slmgr.vbs /dli
if %errorlevel%==3 slmgr.vbs /dlv
if %errorlevel%==4 slmgr.vbs /xpr
if %errorlevel%==5 goto M2_MAIN

pause
goto Tool



:: ==================================================
:: 3. EXPORT / INSTALL DRIVERS
:: ==================================================
:M3_ENTRY
chcp 1252 >nul

:M3_MENU
cls
echo ======================
echo  Export / Install Drivers Toolkit
echo ======================
echo --------------- Menu --------------
echo 1. Export Drivers
echo 2. Install Drivers
echo R. Return to Main Menu
echo ======================
set /p M3_CH="Choose an option: "
echo ======================

if /I "%M3_CH%"=="R" goto MAIN_MENU
if "%M3_CH%"=="1" goto M3_EXPORT
if "%M3_CH%"=="2" goto M3_INSTALL
goto M3_MENU


:M3_EXPORT
set "PCNAME=%COMPUTERNAME%"
set "EXPORTFOLDER=%~dp0%PCNAME%_Drivers"

cls
echo.
echo [*] Exporting drivers for %PCNAME% to "%EXPORTFOLDER%"...

if not exist "%EXPORTFOLDER%" (
    mkdir "%EXPORTFOLDER%"
    pnputil /export-driver * "%EXPORTFOLDER%"
    echo [✓] Export completed!
) else (
    echo [!] Folder already exists. Skipping export.
)

pause
goto M3_MENU


:M3_INSTALL
cls
echo.
echo [*] Available driver folders:
set /a count=0

for /d %%D in ("%~dp0*_Drivers") do (
    set /a count+=1
    set "folder[!count!]=%%~nxD"
    echo !count!. %%~nxD
)

if %count%==0 (
    echo [!] No driver folders found for installation.
    pause
    goto M3_MENU
)

echo.
set /p selection=Select folder number to preview and install drivers from: 

if not defined folder[%selection%] (
    echo [!] Invalid selection.
    pause
    goto M3_MENU
)

set "selected=!folder[%selection%]!"
set "installpath=%~dp0%selected%"

echo.
echo [*] Previewing .inf files in "%installpath%":
dir /b "%installpath%\*.inf"
echo ------------------------------
set /p confirm=Do you want to install these drivers? (Y/N): 

if /i "%confirm%"=="Y" (
    echo [*] Installing drivers from "%installpath%"...
    pnputil /add-driver "%installpath%\*.inf" /subdirs /install
    echo [✓] Installation completed!
) else (
    echo [~] Installation cancelled.
)

pause
goto M3_MENU



:: ==================================================
:: 4. PERSONALIZATION
:: ==================================================
:M4_MENU
cls
echo ==========================
echo        Personalization
echo ==========================
echo ------------- Menu -------------
echo 1. Set System Product Name
echo 2. Toggle Light/Dark Theme
echo 3. Enable / Disable Desktop Icons
echo 4. File Explorer Privacy Toggle
echo 5. Pin Recycle Bin to Quick Access
echo 6. Toggle Start Menu Web Search
echo 7. Bloatware Apps
echo 8. Power Management Center
echo R. Return to Main Menu
echo ==========================
set /p M4_CH="Choose an option: "
echo ==========================

if /I "%M4_CH%"=="R" goto MAIN_MENU
if "%M4_CH%"=="1" goto SYSTEM_NAME
if "%M4_CH%"=="2" goto LIGHT_DARK
if "%M4_CH%"=="3" goto DESKTOP_ICONS
if "%M4_CH%"=="4" goto PRIVACY
if "%M4_CH%"=="5" goto RECYCLE
if "%M4_CH%"=="6" goto STARTWEB
if "%M4_CH%"=="7" goto BLOATWARE
if "%M4_CH%"=="8" goto POWER
goto M4_MENU


:: 4.1 SET SYSTEM PRODUCT NAME
:SYSTEM_NAME
cls
echo ==========================
echo     System Product Name
echo ==========================
echo.
set /p newname="How would you like to call it? : "
echo.
echo ==========================
echo   Set System's Product Name: %newname%
echo ==========================
echo.
powershell -Command "Rename-Computer -NewName '%newname%' -Force"
echo.
echo  The system name has been successfully changed to: %newname%
echo  A restart is required for the change to take effect.
echo ==========================
echo.
pause
goto M4_MENU


:: 4.2 TOGGLE LIGHT/DARK THEME
:LIGHT_DARK
cls
echo ==========================
echo   Toggle Light/Dark Theme
echo ==========================
echo ------------- Menu -------------
echo 1. Light
echo 2. Dark
echo R. Return to Menu
echo ==========================
set /p theme="Select an option: "
echo ==========================

if /I "%theme%"=="R" goto M4_MENU
if "%theme%"=="1" (
    cls
    echo Applying Light Theme...
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 1 /f >nul
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme   /t REG_DWORD /d 1 /f >nul
    echo ✓ SystemUsesLightTheme set to Light
    echo ✓ AppsUseLightTheme set to Light
    echo.
    echo Progress completed successfully!
    pause
    goto M4_MENU
)
if "%theme%"=="2" (
    cls
    echo Applying Dark Theme...
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f >nul
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme   /t REG_DWORD /d 0 /f >nul
    echo ✓ SystemUsesLightTheme set to Dark
    echo ✓ AppsUseLightTheme set to Dark
    echo.
    echo Progress completed successfully!
    pause
    goto M4_MENU
)
goto LIGHT_DARK


:: 4.3 ENABLE / DISABLE DESKTOP ICONS
:DESKTOP_ICONS
cls
echo ==========================
echo  Enable / Disable Desktop Icons
echo ==========================
echo ------------- Menu -------------
echo 1. Enable All Desktop Icons
echo 2. Disable All Desktop Icons
echo R. Return to Menu
echo ==========================
set /p iconsel="Choose an option: "
echo ==========================

if /I "%iconsel%"=="R" goto M4_MENU
if "%iconsel%"=="1" call :apply_icons 0 & goto M4_MENU
if "%iconsel%"=="2" call :apply_icons 1 & goto M4_MENU
goto DESKTOP_ICONS

:apply_icons
REM %1 = 0 (enable) or 1 (disable)
set "reg_val=%~1"

set icons[1]={20D04FE0-3AEA-1069-A2D8-08002B30309D}
set icons[2]={59031a47-3f72-44a7-89c5-5595fe6b30ee}
set icons[3]={645FF040-5081-101B-9F08-00AA002F954E}
set icons[4]={871C5380-42A0-1069-A2EA-08002B30309D}
set icons[5]={F02C1A0D-BE21-4350-88B0-7367FC96EF3C}

for /L %%i in (1,1,5) do (
    for %%r in (NewStartPanel ClassicStartMenu) do (
        reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\%%r" /v "!icons[%%i]!" /t REG_DWORD /d %reg_val% /f >nul
    )
)

ie4uinit.exe -show >nul 2>&1
taskkill /im explorer.exe /f >nul 2>&1
start explorer.exe >nul 2>&1

if "%reg_val%"=="0" (
    echo.
    echo  All desktop icons have been ENABLED.
) else (
    echo.
    echo  All desktop icons have been DISABLED.
)
echo ==========================
pause
exit /b


:: 4.4 FILE EXPLORER PRIVACY TOGGLE
:PRIVACY
cls
echo ==========================
echo  File Explorer Privacy
echo ==========================
setlocal EnableDelayedExpansion

set "regpath=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer"

for /f "tokens=3" %%A in ('reg query "%regpath%" /v ShowRecent 2^>nul') do set "recent=%%A"
for /f "tokens=3" %%A in ('reg query "%regpath%" /v ShowFrequent 2^>nul') do set "frequent=%%A"

if "!recent!"=="0x1" (
    set mode=disable
) else (
    set mode=enable
)

cls
echo ==========================
echo  File Explorer Privacy
echo ==========================
echo Mode: !mode!
echo.

if "!mode!"=="disable" (
    reg add "%regpath%" /v ShowRecent /t REG_DWORD /d 0 /f >nul
) else (
    reg add "%regpath%" /v ShowRecent /t REG_DWORD /d 1 /f >nul
)
echo ✓ Show recently used files

if "!mode!"=="disable" (
    reg add "%regpath%" /v ShowFrequent /t REG_DWORD /d 0 /f >nul
) else (
    reg add "%regpath%" /v ShowFrequent /t REG_DWORD /d 1 /f >nul
)
echo ✓ Show frequently used folders

if "!mode!"=="disable" (
    del /q "%APPDATA%\Microsoft\Windows\Recent\*" >nul 2>&1
    echo ✓ Cleared recent file history
)

echo.
echo Restarting Explorer to apply changes...
taskkill /f /im explorer.exe >nul 2>&1
timeout /t 1 >nul
start explorer.exe >nul 2>&1
echo.
echo Done.
echo ==========================
pause
endlocal
goto M4_MENU


:: 4.5 PIN RECYCLE BIN TO QUICK ACCESS
:RECYCLE
cls
echo ==========================
echo  Pin Recycle Bin to Quick Access
echo ==========================
echo.
echo  Adding Recycle Bin shortcut to Quick Access...
powershell -NoProfile -Command ^
"$shell = New-Object -ComObject shell.application; $folder = $shell.Namespace(10); $item = $folder.Self; $item.InvokeVerb('pintohome')"
echo.
echo  Recycle Bin has been pinned to Quick Access!
echo ==========================
pause
goto M4_MENU


:: 4.6 TOGGLE START MENU WEB SEARCH
:STARTWEB
cls
echo ==========================
echo  Toggle Start Menu Web Search
echo ==========================
net session >nul 2>&1
if errorlevel 1 (
  echo.
  echo ERROR: Please run this script as Administrator.
  echo No action executed.
  echo.
  pause
  goto M4_MENU
)
echo ------------- Menu -------------
echo 1. Enable
echo 2. Disable
echo R. Return to Menu
echo ==========================
set /p web="Select an option: "
echo ==========================

if /I "%web%"=="R" goto M4_MENU
if "%web%"=="1" (
    cls
    echo Enabling Start Menu Web Search...
    echo.
    reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /f >nul 2>&1
    echo ✓ Removed policy: DisableSearchBoxSuggestions
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 1 /f >nul
    echo ✓ BingSearchEnabled = 1 (Web search ON)
    echo.
    echo Restarting Explorer to apply changes...
    taskkill /f /im explorer.exe >nul 2>&1
    timeout /t 1 >nul
    start explorer.exe
    echo ✓ Explorer restarted
    echo.
    echo Progress completed successfully!
    pause
    goto M4_MENU
)
if "%web%"=="2" (
    cls
    echo Disabling Start Menu Web Search...
    echo.
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f >nul
    echo ✓ DisableSearchBoxSuggestions = 1 (Web suggestions OFF)
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f >nul
    echo ✓ BingSearchEnabled = 0 (Web search OFF, local search stays ON)
    echo.
    echo Restarting Explorer to apply changes...
    taskkill /f /im explorer.exe >nul 2>&1
    timeout /t 1 >nul
    start explorer.exe
    echo ✓ Explorer restarted
    echo.
    echo Progress completed successfully!
    pause
    goto M4_MENU
)
goto STARTWEB


:: 4.7 BLOATWARE APPS
:BLOATWARE
:BLOAT_MENU
cls
echo ==========================
echo        Bloatware Apps
echo ==========================
echo ------------- Menu -------------
echo 1. Remove Bloatware Apps
echo 2. Restore Bloatware Apps
echo R. Return to Menu
echo ==========================
set /p choice="Choose an option: "

if /I "%choice%"=="R" goto M4_MENU
if "%choice%"=="1" goto BLOAT_REMOVE
if "%choice%"=="2" goto BLOAT_RESTORE
goto BLOAT_MENU


:BLOAT_REMOVE
cls
echo [*] Starting Bloatware Removal...
echo.

setlocal EnableExtensions EnableDelayedExpansion

net session >nul 2>&1
if %errorlevel% neq 0 (
  echo [!] Please run this script as Administrator.
  pause
  endlocal
  goto BLOAT_MENU
)

set "OUTDIR=%~dp0bloat_cleanup"
if not exist "%OUTDIR%" mkdir "%OUTDIR%"
set "LOG=%OUTDIR%\remove_bloat_log_%DATE:~-4%%DATE:~4,2%%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%.txt"
set "LOG=%LOG: =0%"

echo ==== BLOAT REMOVAL START %DATE% %TIME% ====>>"%LOG%"

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
 "Try { Checkpoint-Computer -Description 'Pre-RemoveBloat' -RestorePointType 'MODIFY_SETTINGS' } Catch { }" >>"%LOG%" 2>&1

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$ErrorActionPreference='Stop'; " ^
  "$outDir = '%OUTDIR%'; $log='%LOG%'; " ^
  "Get-AppxPackage -AllUsers | Select Name,PackageFullName | Sort Name | Tee-Object -FilePath (Join-Path $outDir 'installed_appx_backup.csv') | Out-Null; " ^
  "$patterns = @(" ^
  "  'Microsoft.3DBuilder*','Microsoft.3DViewer*','Microsoft.Microsoft3DViewer*'," ^
  "  'Microsoft.MixedReality.Portal*'," ^
  "  'Microsoft.MicrosoftOfficeHub*','Microsoft.GetHelp*','Microsoft.Getstarted*'," ^
  "  'Microsoft.Messaging*','Microsoft.SkypeApp*','Microsoft.MicrosoftSolitaireCollection*'," ^
  "  'Microsoft.OneConnect*','Microsoft.MSPaint*' " ^
  "); " ^
  "$patterns += @(" ^
  "  'Microsoft.BingNews*','Microsoft.BingWeather*','Microsoft.News*','Microsoft.MicrosoftStickyNotes*'," ^
  "  'Microsoft.ZuneMusic*','Microsoft.ZuneVideo*','Microsoft.Microsoft3DViewer*'," ^
  "  'Microsoft.XboxApp*','Microsoft.Xbox.TCUI*','Microsoft.XboxGameOverlay*','Microsoft.XboxGamingOverlay*'," ^
  "  'Microsoft.XboxIdentityProvider*','Microsoft.XboxSpeechToTextOverlay*','Microsoft.XboxGameCallableUI*'," ^
  "  'Microsoft.GamingApp*','Microsoft.Xbox*'" ^
  "); " ^
  "$patterns += @('*WildTangent*','*CandyCrush*','*SpotifyAB*','*Dolby*','*McAfee*','*Norton*'); " ^
  "$protect = @(" ^
  "  'Microsoft.WindowsStore','Microsoft.WindowsPhotos','Microsoft.WindowsCalculator'," ^
  "  'Microsoft.WindowsCamera','Microsoft.WindowsNotepad','Microsoft.Paint','Microsoft.ScreenSketch'," ^
  "  'Microsoft.DesktopAppInstaller','Microsoft.VCLibs*','Microsoft.UI.Xaml*','MicrosoftEdge*','*StorePurchaseApp*'" ^
  "); " ^
  "$installed = Get-AppxPackage -AllUsers; " ^
  "$targets = foreach ($p in $patterns) { $installed | Where-Object { $_.Name -like $p } } " ^
  "          | Sort-Object Name -Unique " ^
  "          | Where-Object { $n=$_.Name; -not ($protect | Where-Object { $n -like $_ }) }; " ^
  "if (-not $targets) { Write-Host '[i] No matching apps to remove.'; exit 0 } " ^
  "Write-Host '--- Proposed removals (dry-run) ---'; " ^
  "$targets | Select Name, PackageFullName | Format-Table -AutoSize; " ^
  "($targets | Select -Expand Name | Sort-Object -Unique) | Set-Content (Join-Path $outDir 'to_remove_names.txt'); " ^
  "$targets | Select Name,PackageFullName | Export-Csv -NoTypeInformation -Path (Join-Path $outDir 'to_remove_detailed.csv'); " ^
  "$ans = Read-Host 'Proceed with removal for ALL USERS and for NEW users? (Y/N)'; " ^
  "if ($ans -notin @('Y','y')) { Write-Host 'Aborted by user.'; exit 0 } " ^
  "Write-Host 'Removing per-user packages…'; " ^
  "foreach ($t in $targets) { Try { Get-AppxPackage -AllUsers -Name $t.Name | Remove-AppxPackage -AllUsers -ErrorAction Stop; Add-Content -Path $log -Value ('Removed per-user: ' + $t.PackageFullName) } Catch { Add-Content -Path $log -Value ('[ERR] ' + $t.PackageFullName + ': ' + $_) }} " ^
  "Write-Host 'Removing provisioned…'; " ^
  "$prov = Get-AppxProvisionedPackage -Online; " ^
  "foreach ($t in $targets) { $pp = $prov | Where-Object { $_.DisplayName -eq $t.Name }; if ($pp) { Try { $pp | Remove-AppxProvisionedPackage -Online -ErrorAction Stop | Out-Null; Add-Content $log ('Removed provisioned: ' + $t.Name) } Catch { Add-Content $log ('[ERR]' + $t.Name + ': ' + $_) } } } " ^
  "Write-Host 'Done. Log:' (Resolve-Path $log).Path; Write-Host 'Reboot recommended.' " ^
  "" >>"%LOG%" 2>&1

echo [*] Finished. See log: "%LOG%"
echo ==== BLOAT REMOVAL END %DATE% %TIME% ====>>"%LOG%"
pause
endlocal
goto BLOAT_MENU


:BLOAT_RESTORE
cls
echo [*] Restoring Bloatware Apps...
echo.

setlocal EnableExtensions EnableDelayedExpansion

net session >nul 2>&1
if %errorlevel% neq 0 (
  echo [!] Please run this script as Administrator.
  pause
  endlocal
  goto BLOAT_MENU
)

set "LOG=%~dp0bloat_cleanup\restore_bloat_log_%DATE:~-4%%DATE:~4,2%%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%.txt"
set "LOG=%LOG: =0%"
if not exist "%~dp0bloat_cleanup" mkdir "%~dp0bloat_cleanup"

echo ==== BLOAT RESTORE START %DATE% %TIME% ====>>"%LOG%"

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
 "Try { " ^
 "  Get-AppxPackage -AllUsers | ForEach-Object { Try { Add-AppxPackage -DisableDevelopmentMode -Register ($_.InstallLocation + '\AppXManifest.xml') } Catch {} }" ^
 "  Write-Host 'Re-registered built-in apps.' " ^
 "} Catch { }" >>"%LOG%" 2>&1

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
 "$need = @('Microsoft.WindowsStore','Microsoft.DesktopAppInstaller'); foreach ($n in $need) { $pkg = Get-AppxPackage -AllUsers -Name $n; if (-not $pkg) { Write-Host ('[i] Attempt winget reinstall: ' + $n) } else { Write-Host ($n + ' present') }} " >>"%LOG%" 2>&1

where winget >nul 2>&1
if %errorlevel%==0 (
  echo [*] winget found — reinstalling core apps...
  winget install --silent --accept-source-agreements --accept-package-agreements Microsoft.WindowsStore >nul 2>&1
  winget install --silent --accept-source-agreements --accept-package-agreements Microsoft.DesktopAppInstaller >nul 2>&1
  winget install --silent --accept-source-agreements --accept-package-agreements Microsoft.WindowsPhotos >nul 2>&1
  winget install --silent --accept-source-agreements --accept-package-agreements Microsoft.WindowsCalculator >nul 2>&1
  winget install --silent --accept-source-agreements --accept-package-agreements Microsoft.Notepad >nul 2>&1
  winget install --silent --accept-source-agreements --accept-package-agreements Microsoft.Paint >nul 2>&1
) else (
  echo [!] winget not found. Skipping winget reinstalls. >>"%LOG%"
)

echo [*] Restore complete. Reboot recommended.
echo ==== BLOAT RESTORE END %DATE% %TIME% ====>>"%LOG%"
pause
endlocal
goto BLOAT_MENU


:: 4.8 POWER MANAGEMENT CENTER
:POWER
:POWER_MENU
cls
echo ==========================
echo    Power Management Center
echo ==========================
echo ------------- Menu -------------
echo 1. Activate Balanced (Recommended)
echo 2. Activate High performance
echo 3. Activate Power saver
echo 4. Create ^& Activate TurboMode
echo 5. Create ^& Activate DevMode
echo 6. Restore Default Modes (Cleanup)
echo R. Return to Menu
echo ==========================
set /p choice="Choose an option: "

if /I "%choice%"=="R" goto M4_MENU
if "%choice%"=="1" call :ActivateBalanced & goto POWER_MENU
if "%choice%"=="2" call :ActivateHighPerf & goto POWER_MENU
if "%choice%"=="3" call :ActivatePowerSaver & goto POWER_MENU
if "%choice%"=="4" call :TurboMode & goto POWER_MENU
if "%choice%"=="5" call :DevMode & goto POWER_MENU
if "%choice%"=="6" call :RestoreDefaultsMode & goto POWER_MENU
goto POWER_MENU


:ActivateBalanced
call :GetPlanGuid "Balanced" BALGUID
if not defined BALGUID (
    echo.
    echo [X] Could not detect "Balanced".
    pause
    exit /b
)
echo.
echo [*] Activating Balanced...
powercfg -setactive %BALGUID%
echo [√] Balanced is now active.
pause
exit /b

:ActivateHighPerf
call :GetPlanGuid "High performance" HPGUID
if not defined HPGUID (
    echo.
    echo [X] High performance not found.
    pause
    exit /b
)
echo.
echo [*] Activating High performance...
powercfg -setactive %HPGUID%
echo [√] High performance active.
pause
exit /b

:ActivatePowerSaver
call :GetPlanGuid "Power saver" PSGUID
if not defined PSGUID (
    echo.
    echo [X] Power saver not found.
    pause
    exit /b
)
echo.
echo [*] Activating Power saver...
powercfg -setactive %PSGUID%
echo [√] Power saver active.
pause
exit /b

:GetPlanGuid
setlocal
set "NAME=%~1"
set "GUID="
for /f "tokens=2 delims=:" %%G in ('powercfg /list ^| findstr /i "%NAME%"') do (
    for /f "tokens=1 delims= " %%H in ("%%G") do set "GUID=%%H"
)
endlocal & set "%~2=%GUID%"
exit /b

:FindExistingPlan
setlocal
set "SEARCH=%~1"
set "FOUND="
for /f "tokens=2 delims=:" %%G in ('powercfg /list ^| findstr /i "%SEARCH%"') do (
    for /f "tokens=1 delims= " %%H in ("%%G") do set "FOUND=%%H"
)
endlocal & set "%~2=%FOUND%"
exit /b

:TurboMode
setlocal enabledelayedexpansion
call :FindExistingPlan "TurboMode" TURBOGUID

if defined TURBOGUID (
    echo [*] TurboMode already exists.
    echo [*] Activating TurboMode...
    powercfg -setactive %TURBOGUID%
    echo [√] TurboMode activated.
    pause
    endlocal
    exit /b
)

echo [*] TurboMode not found. Creating...

for /f "tokens=2 delims=:" %%G in ('powercfg /list ^| findstr /i "Balanced"') do (
    for /f "tokens=1 delims= " %%H in ("%%G") do set BALGUID=%%H
)

echo [*] Duplicating Balanced...
for /f "tokens=2 delims=:" %%G in ('powercfg -duplicatescheme %BALGUID% ^| findstr /i "GUID"') do (
    for /f "tokens=1 delims= " %%H in ("%%G") do set TURBOGUID=%%H
)

powercfg -changename %TURBOGUID% "TurboMode" "Maximum performance for gaming and heavy workloads."

echo [*] Applying settings...

call :Turbo_setSafe SUB_PROCESSOR PROCTHROTTLEMAX 100 100
call :Turbo_setSafe SUB_PROCESSOR PROCTHROTTLEMIN 100 100
call :Turbo_setSafe SUB_PROCESSOR PERFBOOSTMODE 0 0

call :Turbo_setSafe SUB_VIDEO VIDEOIDLE 0 0
call :Turbo_setSafe SUB_SLEEP STANDBYIDLE 0 0
call :Turbo_setSafe SUB_SLEEP HIBERNATEIDLE 0 0
call :Turbo_setSafe SUB_DISK DISKIDLE 0 0

call :Turbo_setSafe SUB_USB USBSELECTSUSPEND 0 0
call :Turbo_setSafe SUB_GRAPHICS GPUPOWER 0 0
call :Turbo_setSafe SUB_VIDEO ADAPTBRIGHT 0 0

echo [*] Activating TurboMode...
powercfg -setactive %TURBOGUID%

echo.
echo [√] TurboMode created and activated!
pause
endlocal
exit /b

:Turbo_setSafe
powercfg -setacvalueindex %TURBOGUID% %~1 %~2 %~3 >nul 2>&1
powercfg -setdcvalueindex %TURBOGUID% %~1 %~2 %~4 >nul 2>&1
exit /b

:DevMode
setlocal enabledelayedexpansion
call :FindExistingPlan "DevMode" DEVGUID

if defined DEVGUID (
    echo [*] DevMode already exists.
    echo [*] Activating DevMode...
    powercfg -setactive %DEVGUID%
    echo [√] DevMode activated.
    pause
    endlocal
    exit /b
)

echo [*] DevMode not found. Creating...

for /f "tokens=2 delims=:" %%G in ('powercfg /list ^| findstr /i "Balanced"') do (
    for /f "tokens=1 delims= " %%H in ("%%G") do set BALGUID=%%H
)

for /f "tokens=2 delims=:" %%G in ('powercfg -duplicatescheme %BALGUID% ^| findstr /i "GUID"') do (
    for /f "tokens=1 delims= " %%H in ("%%G") do set DEVGUID=%%H
)

powercfg -changename %DEVGUID% "DevMode" "Long battery life, optimized for coding/programming."

call :Dev_setSafe SUB_PROCESSOR PROCTHROTTLEMAX 80 80
call :Dev_setSafe SUB_PROCESSOR PROCTHROTTLEMIN 5 5
call :Dev_setSafe SUB_PROCESSOR PERFBOOSTMODE 1 1
call :Dev_setSafe SUB_VIDEO VIDEOIDLE 300 120
call :Dev_setSafe SUB_SLEEP STANDBYIDLE 600 300
call :Dev_setSafe SUB_DISK DISKIDLE 300 300
call :Dev_setSafe SUB_USB USBSELECTSUSPEND 1 1
call :Dev_setSafe SUB_GRAPHICS GPUPOWER 2 2

echo [*] Activating DevMode...
powercfg -setactive %DEVGUID%

echo.
echo [√] DevMode created and activated!
pause
endlocal
exit /b

:Dev_setSafe
powercfg -setacvalueindex %DEVGUID% %~1 %~2 %~3 >nul 2>&1
powercfg -setdcvalueindex %DEVGUID% %~1 %~2 %~4 >nul 2>&1
exit /b


:RestoreDefaultsMode
setlocal EnableDelayedExpansion

echo === Restoring default power schemes...
powercfg -restoredefaultschemes

set "keepList="

for /f "tokens=2 delims=:" %%A in ('powercfg -list ^| findstr /i "Balanced"') do (
    for /f "tokens=1 delims= " %%B in ("%%A") do set keepList=!keepList! %%B
)
for /f "tokens=2 delims=:" %%A in ('powercfg -list ^| findstr /i "High performance"') do (
    for /f "tokens=1 delims= " %%B in ("%%A") do set keepList=!keepList! %%B
)
for /f "tokens=2 delims=:" %%A in ('powercfg -list ^| findstr /i "Power saver"') do (
    for /f "tokens=1 delims= " %%B in ("%%A") do set keepList=!keepList! %%B
)

echo Checking for custom modes...

for /f "tokens=2 delims=:" %%A in ('powercfg -list ^| findstr /i "Power Scheme GUID"') do (
    for /f "tokens=1 delims= " %%B in ("%%A") do (
        set guid=%%B
        set skip=0

        for %%K in (%keepList%) do (
            if /i "!guid!"=="%%K" set skip=1
        )

        if !skip! equ 0 (
            echo Removing custom !guid! ...
            powercfg -delete !guid! >nul 2>&1
        )
    )
)

echo.
echo Setting Balanced active...
for %%K in (%keepList%) do (
    powercfg -setactive %%K
    goto doneRestore
)

:doneRestore
echo.
echo [√] Default plans restored.
pause
endlocal
goto POWER_MENU



:: ==================================================
:: 6. SYSTEM CLEANER
:: ==================================================
:SC_MENU
title System Cleaner - geekfromgreece
cls
echo ==================================
echo          6. System Cleaner
echo ==================================
echo.
echo ---------------------- Menu ---------------------------
echo   1. Clear temporary files
echo      (Temp / Prefetch / SoftwareDistribution / Logs)
echo   2. Clean Windows Update leftovers
echo   3. Clean Windows Error Reporting dumps
echo   4. Clear Recycle Bin
echo   5. Disk Cleanup automation
echo      (cleanmgr / sageset / sagerun)
echo   6. System File Checker (sfc /scannow)
echo   R. Return to Main Menu
echo ==================================
set /p SC_CH="Choose an option: "
echo ==================================

if /I "%SC_CH%"=="R" goto MAIN_MENU
if "%SC_CH%"=="1" goto SC_TEMP
if "%SC_CH%"=="2" goto SC_WU
if "%SC_CH%"=="3" goto SC_WER
if "%SC_CH%"=="4" goto SC_RECYCLE
if "%SC_CH%"=="5" goto SC_CLEANMGR
if "%SC_CH%"=="6" goto SC_SFC
goto SC_MENU


:: OPTION 1 — CLEAR TEMP FILES
:SC_TEMP
cls
echo ==================================
echo    1. Clearing Temporary Files
echo ==================================
echo.

echo [*] Clearing system TEMP folder...
rmdir /s /q "%temp%" 2>nul
mkdir "%temp%" >nul

echo [*] Clearing C:\Windows\Temp...
rmdir /s /q "C:\Windows\Temp" 2>nul
mkdir "C:\Windows\Temp" >nul

echo [*] Clearing Prefetch folder...
rmdir /s /q "C:\Windows\Prefetch" 2>nul
mkdir "C:\Windows\Prefetch" >nul

echo [*] Clearing SoftwareDistribution\Download...
rmdir /s /q "C:\Windows\SoftwareDistribution\Download" 2>nul
mkdir "C:\Windows\SoftwareDistribution\Download" >nul

echo [*] Clearing system log files...
del /q /f "C:\Windows\Logs\*" 2>nul

echo.
echo [✔] Temporary files cleaned!
pause
goto SC_MENU


:: OPTION 2 — CLEAN WINDOWS UPDATE LEFTOVERS
:SC_WU
cls
echo ==================================
echo 2. Cleaning Windows Update leftovers
echo ==================================
echo.

echo [*] Stopping Windows Update service...
net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1

echo [*] Deleting SoftwareDistribution folder...
rmdir /s /q "C:\Windows\SoftwareDistribution" 2>nul
mkdir "C:\Windows\SoftwareDistribution" >nul

echo [*] Starting services again...
net start wuauserv >nul 2>&1
net start bits >nul 2>&1

echo.
echo [✔] Windows Update leftovers cleaned!
pause
goto SC_MENU


:: OPTION 3 — CLEAN WINDOWS ERROR REPORTING (WER)
:SC_WER
cls
echo ==================================
echo  3. Cleaning Windows Error Reports
echo ==================================
echo.

echo [*] Deleting WER reports...
rmdir /s /q "C:\ProgramData\Microsoft\Windows\WER" 2>nul
mkdir "C:\ProgramData\Microsoft\Windows\WER" >nul

echo.
echo [✔] WER dumps cleaned!
pause
goto SC_MENU


:: OPTION 4 — CLEAR RECYCLE BIN
:SC_RECYCLE
cls
echo ================================
echo     4. Clearing Recycle Bin
echo ================================
echo.

echo [*] Emptying recycle bin...
PowerShell -NoLogo -Command "Clear-RecycleBin -Force" 2>nul

echo.
echo [✔] Recycle Bin emptied!
pause
goto SC_MENU


:: OPTION 5 — DISK CLEANUP AUTOMATION
:SC_CLEANMGR
cls
echo ==================================
echo     5. Disk Cleanup Automation
echo ==================================
echo.

echo [*] Opening Disk Cleanup (sageset)...
cleanmgr /sageset:99

echo.
echo Once you close Disk Cleanup settings, press any key.
pause

echo [*] Running Disk Cleanup (sagerun)...
cleanmgr /sagerun:99

echo.
echo [✔] Disk Cleanup complete!
pause
goto SC_MENU


:: OPTION 6 — SYSTEM FILE CHECKER
:SC_SFC
cls
echo ==================================
echo   6. System File Checker (SFC)
echo ==================================
echo.

echo [*] Running: sfc /scannow
echo This may take several minutes...
echo.

sfc /scannow

echo.
echo [✔] SFC scan completed!
pause
goto SC_MENU



:: ==================================================
:: 5. INTERNET TOOLKIT
:: ==================================================
:M5_MENU
title Toolkit After Format - geekfromgreece
cls
echo ==========================
echo    5. Internet Toolkit
echo ==========================
echo ------------- Menu -------------
echo 1. Connect to Internet
echo 2. Connect to DNS
echo 3. Speedtest
echo 4. Network Troubleshooting
echo 5. Browser Data Cleanup
echo 6. Browser Extension Management
echo R. Return to Main Menu
echo ==========================
set /p M5_CH="Choose an option: "
echo ==========================

if /I "%M5_CH%"=="R" goto MAIN_MENU
if "%M5_CH%"=="1" goto CONNECT_INTERNET
if "%M5_CH%"=="2" goto CONNECT_DNS
if "%M5_CH%"=="3" goto SPEEDTEST
if "%M5_CH%"=="4" goto NETWORK_TROUBLE
if "%M5_CH%"=="5" goto BROWSER_CLEAN
if "%M5_CH%"=="6" goto EXTENSION_MANAGE
goto M5_MENU


:: 5.1 CONNECT TO INTERNET
:CONNECT_INTERNET
cls
echo ==========================
echo   1. Connect to Internet
echo ==========================
echo ------------- Menu -------------
echo 1. Export WiFi Profile
echo 2. Connect to Internet
echo R. Return to Menu
echo ==========================
set /p CNET_CH="Choose an option: "
echo ==========================

if /I "%CNET_CH%"=="R" goto M5_MENU
if "%CNET_CH%"=="1" goto EXPORT_WIFI
if "%CNET_CH%"=="2" goto CONNECT_WIFI
goto CONNECT_INTERNET


:EXPORT_WIFI
cls
echo ==========================
echo     Export WiFi Profile
echo ==========================
echo.

set "scriptFolder=%~dp0"
set "tempFolder=%TEMP%"
cd /d "!scriptFolder!"

echo Getting currently connected WiFi...
set "currentSSID="

for /f "tokens=2 delims=:" %%A in ('netsh wlan show interfaces 2^>nul ^| findstr /r /c:"SSID" ^| findstr /v "BSSID"') do (
    set "currentSSID=%%A"
    set "currentSSID=!currentSSID:~1!"
    goto FOUND_SSID
)

:FOUND_SSID
if "!currentSSID!"=="" (
    echo [X] Not connected to any WiFi network!
    pause
    goto CONNECT_INTERNET
)

echo Connected to: !currentSSID!
echo Exporting WiFi profile...
echo.

del /q "%tempFolder%\*.xml" >nul 2>&1

netsh wlan export profile name="!currentSSID!" folder="!tempFolder!" key=clear >nul 2>&1

set "exportedFile="
for %%F in ("%tempFolder%\*.xml") do (
    findstr /i "<name>!currentSSID!</name>" "%%F" >nul 2>&1 && set "exportedFile=%%~nxF"
)

if "!exportedFile!"=="" (
    echo [X] Export failed — no XML created.
    echo Please ensure the script runs as Administrator.
    echo.
    pause
    goto CONNECT_INTERNET
)

move /y "%tempFolder%\!exportedFile!" "%scriptFolder%" >nul 2>&1

if exist "%scriptFolder%!exportedFile!" (
    echo [OK] WiFi profile exported successfully!
    echo File: !exportedFile!
    echo Location: !scriptFolder!
) else (
    echo [X] Could not move file to script folder.
    echo Check permissions or run as Administrator.
)
echo.
pause
goto CONNECT_INTERNET


:CONNECT_WIFI
cls
echo ==========================
echo   1. Connect to Internet
echo ==========================
set "scriptPath=%~dp0"
set count=0
for %%F in ("%scriptPath%*.xml") do (
    set /a count+=1
    echo !count!^) %%~nF
    set "profile[!count!]=%%F"
    set "name[!count!]=%%~nF"
)
if !count! EQU 0 (
    echo No Wi-Fi profiles found.
    pause
    goto CONNECT_INTERNET
)
set /p selected="Choose profile (1-!count!): "
set /a selected=!selected! 2>nul
if !selected! LSS 1 goto CONNECT_INTERNET
if !selected! GTR !count! goto CONNECT_INTERNET
set "chosen=!profile[%selected%]!"
set "networkname=!name[%selected%]!"
netsh wlan add profile filename="!chosen!" user=current >nul
netsh wlan connect name="!networkname!"
echo Connected to: !networkname!
pause
goto CONNECT_INTERNET


:: 5.2 CONNECT TO DNS
:CONNECT_DNS
cls
echo ==========================
echo     2. Connect to DNS
echo ==========================
echo ------------- Menu -------------
echo 1. Shecan DNS
echo 2. Electro DNS
echo 3. Begzar DNS
echo 4. Google DNS
echo 5. Cloudflare DNS
echo 6. AdGuard DNS
echo 7. Reset to default (Windows DHCP)
echo 8. Check if applied
echo R. Return to Menu
echo ==========================
set /p DNS_CH="Select option: "
echo ==========================

if /I "%DNS_CH%"=="R" goto M5_MENU
if "%DNS_CH%"=="1" (netsh interface ipv4 set dns "Ethernet" static 178.22.122.100 & netsh interface ip add dns name="Ethernet" addr=185.51.200.2 index=2)
if "%DNS_CH%"=="2" (netsh interface ipv4 set dns "Ethernet" static 78.157.42.100 & netsh interface ip add dns name="Ethernet" addr=78.157.42.101 index=2)
if "%DNS_CH%"=="3" (netsh interface ipv4 set dns "Ethernet" static 185.55.225.25 & netsh interface ip add dns name="Ethernet" addr=185.55.226.26 index=2)
if "%DNS_CH%"=="4" (netsh interface ipv4 set dns "Ethernet" static 8.8.8.8 & netsh interface ip add dns name="Ethernet" addr=8.8.4.4 index=2)
if "%DNS_CH%"=="5" (netsh interface ipv4 set dns "Ethernet" static 1.1.1.1 & netsh interface ip add dns name="Ethernet" addr=1.0.0.1 index=2)
if "%DNS_CH%"=="6" (netsh interface ipv4 set dns "Ethernet" static 94.140.14.14 & netsh interface ip add dns name="Ethernet" addr=94.140.15.15 index=2)
if "%DNS_CH%"=="7" (netsh interface ipv4 set dns "Ethernet" dhcp)
if "%DNS_CH%"=="8" (netsh interface ip show config name="Ethernet")
ipconfig /flushdns
pause
goto CONNECT_DNS


:: 5.3 SPEEDTEST
:SPEEDTEST
cls
echo ==========================
echo 3. Speedtest Quality Report
echo ==========================
if not exist "%~dp0speedtest.exe" (
    echo [X] speedtest.exe not found in script folder.
    pause
    goto M5_MENU
)
"%~dp0speedtest.exe" --accept-license --accept-gdpr --progress=no --format=json > result.json
if not exist result.json (
    echo [X] Speedtest failed.
    pause
    goto M5_MENU
)
for /f "delims=" %%i in ('powershell -Command "(Get-Content result.json | ConvertFrom-Json).ping.latency"') do set ping=%%i
for /f "delims=" %%i in ('powershell -Command "[math]::Round((Get-Content result.json | ConvertFrom-Json).download.bandwidth/125000,2)"') do set download=%%i
for /f "delims=" %%i in ('powershell -Command "[math]::Round((Get-Content result.json | ConvertFrom-Json).upload.bandwidth/125000,2)"') do set upload=%%i
del result.json
echo Ping: %ping% ms
echo Download: %download% Mbps
echo Upload: %upload% Mbps
pause
goto M5_MENU


:: 5.4 NETWORK TROUBLESHOOTING
:NETWORK_TROUBLE
cls
echo ==========================
echo  4. Network Troubleshooting
echo ==========================
echo ------------- Menu -------------
echo 1. Flush DNS Cache
echo 2. Display DNS Cache
echo 3. Display ARP Cache
echo 4. Show Network Interfaces
echo 5. Display Network Configuration
echo 6. Reset TCP/IP (IPv4)
echo 7. Reset TCP/IP (IPv6)
echo 8. Reset Winsock
echo 9. Restart Wi-Fi Adapter
echo 0. Run All
echo R. Return to Menu
echo ==========================
set /p NTR_CH="Choose an option: "
echo ==========================

if /I "%NTR_CH%"=="R" goto M5_MENU
if "%NTR_CH%"=="1" (ipconfig /flushdns)
if "%NTR_CH%"=="2" (ipconfig /displaydns)
if "%NTR_CH%"=="3" (arp -a)
if "%NTR_CH%"=="4" (netsh interface show interface)
if "%NTR_CH%"=="5" (ipconfig /all)
if "%NTR_CH%"=="6" (netsh int ip reset)
if "%NTR_CH%"=="7" (netsh int ipv6 reset)
if "%NTR_CH%"=="8" (netsh winsock reset)
if "%NTR_CH%"=="9" (netsh interface set interface "Wi-Fi" admin=disable & timeout /t 2 & netsh interface set interface "Wi-Fi" admin=enable)
if "%NTR_CH%"=="0" (ipconfig /flushdns & netsh winsock reset & netsh int ip reset & netsh int ipv6 reset)
pause
goto NETWORK_TROUBLE


:: 5.5 BROWSER DATA CLEANUP
:BROWSER_CLEAN
cls
echo ==========================
echo  5. Cleanup ^& Optimize Tool
echo ==========================
echo ------------- Menu -------------
echo 1. Cleanup ^& Optimize
echo 2. Check Temp Folder
echo R. Return to Menu
echo ==========================
set /p BRC_CH="Choose an option: "
echo ==========================

if /I "%BRC_CH%"=="R" goto M5_MENU
if "%BRC_CH%"=="1" (
    del /s /q "%temp%\*" >nul 2>&1
    echo Temp cleaned.
    pause
    goto BROWSER_CLEAN
)
if "%BRC_CH%"=="2" (
    dir "%temp%"
    pause
    goto BROWSER_CLEAN
)
goto BROWSER_CLEAN


:: 5.6 BROWSER EXTENSION MANAGEMENT
:EXTENSION_MANAGE
cls
echo ==========================
echo 6. Browser Extension Management
echo ==========================
echo ------------- Menu -------------
echo 1. Block Extension
echo 2. Unblock Extension
echo 3. Install Extension
echo 4. Force-Install Extension
echo 5. Remove Extension
echo R. Return to Menu
echo ==========================
set /p EXT_CH="Choose an option: "
echo ==========================

if /I "%EXT_CH%"=="R" goto M5_MENU
echo (Not implemented yet.)
pause
goto EXTENSION_MANAGE



:: ==================================================
:: 7. POWER CONTROL
:: ==================================================
:POWER_CONTROL
cls
echo =============================
echo       7.  Power Control
echo =============================
echo -------------- Menu ----------------
echo 1. Restart
echo 2. Shut Down
echo 3. Reset PC to BIOS
echo R. Return to Main Menu
echo =============================
set /p PC_CH="Choose an option: "
echo =============================

if /I "%PC_CH%"=="R" goto MAIN_MENU
if "%PC_CH%"=="1" goto PC_RESTART
if "%PC_CH%"=="2" goto PC_SHUTDOWN
if "%PC_CH%"=="3" goto PC_BIOS
goto POWER_CONTROL


:PC_RESTART
cls
echo [*] Restarting system...
timeout /t 2 >nul
shutdown /r /t 0
goto END


:PC_SHUTDOWN
cls
echo [*] Shutting down system...
timeout /t 2 >nul
shutdown /s /t 0
goto END


:PC_BIOS
cls
echo [*] Restarting and booting into BIOS (UEFI)...
timeout /t 3 >nul
shutdown /r /fw /f /t 0
goto END



:: ==================================================
:: 8. OTHERS
:: ==================================================
:OTHERS_MENU
cls
echo ========================
echo        8. Others
echo ========================
echo ---------- Menu ---------
echo 1. Edge Reset Toolkit
echo R. Return to Main Menu
echo ========================
set /p OTH_CH="Choose an option: "
echo ========================

if /I "%OTH_CH%"=="R" goto MAIN_MENU
if "%OTH_CH%"=="1" goto EDGE_MAIN
goto OTHERS_MENU


:: ============================
:: EDGE RESET TOOLKIT MODULE
:: ============================
:EDGE_MAIN
cls
set "EDGE_DIR=%localappdata%\Microsoft\Edge\User Data"
set "DEFAULT_DIR=%EDGE_DIR%\Default"

echo ===========================
echo     1. Edge Reset Toolkit
echo ===========================
echo -------------- Menu --------------
echo 1. Reset
echo 2. Backup
echo R. Return to Menu
echo ===========================
set /p EDGE_CH="Choose an option: "
echo ===========================

if /I "%EDGE_CH%"=="R" goto OTHERS_MENU
if "%EDGE_CH%"=="1" goto EDGE_RESET_MENU
if "%EDGE_CH%"=="2" goto EDGE_BACKUP_MENU
goto EDGE_MAIN


:: RESET MENU
:EDGE_RESET_MENU
cls
echo ===========================
echo        Reset (Edge)
echo ===========================
echo -------------- Menu --------------
echo 1. Safe reset
echo 2. Full local reset
echo 3. Cloud reset launcher
echo R. Return
echo ===========================
set /p RESET_CHOICE="Choose an option: "
echo ===========================

if /I "%RESET_CHOICE%"=="R" goto EDGE_MAIN
if "%RESET_CHOICE%"=="1" goto EDGE_SAFE_RESET
if "%RESET_CHOICE%"=="2" goto EDGE_FULL_RESET
if "%RESET_CHOICE%"=="3" goto EDGE_CLOUD_RESET
goto EDGE_RESET_MENU


:: SAFE RESET
:EDGE_SAFE_RESET
cls
echo SAFE RESET (Keep Favorites)
echo ============================================
echo This will remove:
echo - Cookies
echo - Cache
echo - History
echo - Passwords
echo - Site settings
echo (Favorites will NOT be deleted)
echo ============================================
pause

echo Closing Edge...
taskkill /IM msedge.exe /F >nul 2>&1

set "DEFAULT_DIR=%EDGE_DIR%\Default"

echo.
echo Clearing data...

del "%DEFAULT_DIR%\History*" /Q 2>nul
del "%DEFAULT_DIR%\Cookies*" /Q 2>nul
del "%DEFAULT_DIR%\Login Data*" /Q 2>nul
del "%DEFAULT_DIR%\Web Data*" /Q 2>nul
del "%DEFAULT_DIR%\Top Sites*" /Q 2>nul

rmdir "%DEFAULT_DIR%\Cache" /s /q 2>nul
rmdir "%DEFAULT_DIR%\Code Cache" /s /q 2>nul
rmdir "%DEFAULT_DIR%\GPUCache" /s /q 2>nul
rmdir "%DEFAULT_DIR%\Service Worker" /s /q 2>nul
rmdir "%DEFAULT_DIR%\Storage" /s /q 2>nul

echo.
echo SAFE RESET COMPLETE!
pause
goto EDGE_RESET_MENU


:: FULL LOCAL RESET
:EDGE_FULL_RESET
cls
echo FULL LOCAL RESET (Delete EVERYTHING)
echo ============================================
echo WARNING! This will remove ALL Edge data:
echo - Favorites
echo - Passwords
echo - Cache
echo - Cookies
echo - Extensions
echo - Profiles
echo - Autofill data
echo.
pause

echo Closing Edge...
taskkill /IM msedge.exe /F >nul 2>&1

echo.
echo Removing ALL Edge data...
rmdir /s /q "%EDGE_DIR%" 2>nul

echo FULL RESET COMPLETE!
pause
goto EDGE_RESET_MENU


:: CLOUD RESET LAUNCHER
:EDGE_CLOUD_RESET
cls
echo CLOUD RESET (Microsoft Sync Reset)
echo ============================================
echo This will open the Microsoft official reset page.
echo You must sign in and press RESET SYNC.
echo ============================================
pause

start https://edge.microsoft.com/reset
goto EDGE_RESET_MENU


:: BACKUP MENU
:EDGE_BACKUP_MENU
cls
echo BACKUP EDGE DATA
echo ============================================
echo Detecting Edge profile email...
echo.

set "EMAIL=UnknownEmail"

if exist "%DEFAULT_DIR%\Preferences" (
    for /f "tokens=2 delims=:," %%a in ('findstr /i "username" "%DEFAULT_DIR%\Preferences"') do (
        set "EMAIL=%%~a"
        set "EMAIL=!EMAIL:"=!"
        set "EMAIL=!EMAIL: =!"
    )
)

if /I "%EMAIL%"=="UnknownEmail" (
    echo Could not detect email from Edge profile.
    echo Using generic name: EdgeBackup
    set "EMAIL=EdgeBackup"
) else (
    echo Email detected: %EMAIL%
)

set "BACKUP_FOLDER=%~dp0EdgeBackup_%EMAIL%"
mkdir "%BACKUP_FOLDER%" >nul 2>&1

echo.
echo Creating backup folder:
echo %BACKUP_FOLDER%
echo.

echo Closing Edge...
taskkill /IM msedge.exe /F >nul 2>&1

echo Copying user data...
robocopy "%DEFAULT_DIR%" "%BACKUP_FOLDER%" /E >nul

echo.
echo BACKUP COMPLETE!
echo Backup saved at:
echo %BACKUP_FOLDER%
pause
goto EDGE_MAIN



:END
endlocal
exit /b
