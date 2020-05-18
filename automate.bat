:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ::
::    Font Automizer: Automize Bengali Font Packages for Android               ::
::    Copyright (C) 2020  NaeemBolchhi                                         ::
::                                                                             ::
::    This program is free software: you can redistribute it and/or modify     ::
::    it under the terms of the GNU General Public License as published by     ::
::    the Free Software Foundation, either version 3 of the License, or        ::
::    (at your option) any later version.                                      ::
::                                                                             ::
::    This program is distributed in the hope that it will be useful,          ::
::    but WITHOUT ANY WARRANTY; without even the implied warranty of           ::
::    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            ::
::    GNU General Public License for more details.                             ::
::                                                                             ::
::    You should have received a copy of the GNU General Public License        ::
::    along with this program.  If not, see <http://www.gnu.org/licenses/>.    ::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ::

@echo off
title Font Automizer v1.0.0 by NaeemBolchhi
call :INFO
call :WINBIT

echo.
echo ^| VERIFYING FILES
REM Check if _template.zip exists.
echo.
echo ^- Searching for the template.
if exist _template.zip (
  echo ^  "_template.zip" was found.
  goto VERIFYttf
) else (
  echo ^  "_template.zip" was not found.
  echo.
  echo ^- Download and keep "_template.zip" in the same location as this file.
  echo ^  Automation will now end.
  goto FAIL
)

REM Check if ttf fonts exist.
:VERIFYttf
echo.
echo ^- Searching for TTF fonts.
if exist 1.ttf (
  echo ^  "1.ttf" was found.
) else (
  echo ^  "1.ttf" was not found.
  echo.
  echo ^- Searching for OTF fonts instead.
  goto VERIFYotf
  )
if exist 2.ttf (
  echo ^  "2.ttf" was found.
) else (
  echo ^  "2.ttf" was not found.
  set "autoREGULAR=1.ttf"
  set "autoMEDIUM=1.ttf"
  set "autoBOLD=1.ttf"
  echo.
  echo ^- Regular variant will be used in place of all variants.
  echo.
  echo ^- Successful!
  goto INPUT
  )
if exist 3.ttf (
  echo ^  "3.ttf" was found.
  set "autoREGULAR=1.ttf"
  set "autoMEDIUM=2.ttf"
  set "autoBOLD=3.ttf"
  echo.
  echo ^- All variants available.
  echo.
  echo ^- Successful!
  goto INPUT
) else (
  echo ^  "3.ttf" was not found.
  set "autoREGULAR=1.ttf"
  set "autoMEDIUM=1.ttf"
  set "autoBOLD=2.ttf"
  echo.
  echo ^- Regular variant will be used in place of Medium variant.
  echo.
  echo ^- Successful!
  goto INPUT
  )

REM Check if otf fonts exist.
:VERIFYotf
if exist 1.otf (
  echo ^  "1.otf" was found.
) else (
  echo ^  "1.otf" was not found.
  echo.
  echo ^- Cannot proceed without an input font.
  echo ^  Download a Bengali Unicode font and rename accordingly.
  echo ^  Visit Github for more information.
  echo ^  https://github.com/font-freak/FontAutomizer
  echo ^  Automation will now end.
  goto FAIL
  )
if exist 2.otf (
  echo ^  "2.otf" was found.
) else (
  echo ^  "2.otf" was not found.
  set "autoREGULAR=1.otf"
  set "autoMEDIUM=1.otf"
  set "autoBOLD=1.otf"
  echo.
  echo ^- Regular variant will be used in place of all variants.
  echo.
  echo ^- Successful!
  goto INPUT
  )
if exist 3.otf (
  echo ^  "3.otf" was found.
  set "autoREGULAR=1.otf"
  set "autoMEDIUM=2.otf"
  set "autoBOLD=3.otf"
  echo.
  echo ^- All variants available.
  echo.
  echo ^- Successful!
  goto INPUT
) else (
  echo ^  "3.otf" was not found.
  set "autoREGULAR=1.otf"
  set "autoMEDIUM=1.otf"
  set "autoBOLD=2.otf"
  echo.
  echo ^- Regular variant will be used in place of Medium variant.
  echo.
  echo ^- Successful!
  goto INPUT
  )

REM Take input from user.
:INPUT
echo.
pause
cls
call :INFO
echo.
echo ^| USER INPUT
echo.
echo ^- Module ID gives a unique identity to each module.
echo ^  Keep it short, and without spaces.
echo.
set /p _autoID=^> Enter Module ID:
if "%_autoID%"=="" goto INVALID
echo.
echo ^- Module Name is displayed inside Magisk.
echo.
set /p _autoNAME=^> Enter Module Name:
if "%_autoNAME%"=="" goto INVALID
echo.
echo ^- Module Version is displayed inside Magisk.
echo.
set /p _autoVER=^> Enter Module Version:
if "%_autoVER%"=="" goto INVALID
echo.
echo ^- Author Name is displayed alongside the module name.
echo.
set /p _autoAUTHOR=^> Enter Author Name:
if "%_autoAUTHOR%"=="" goto INVALID
echo.
echo ^- Description is displayed as a summary of what the module does.
echo.
set /p _autoDESC=^> Enter Description:
if "%_autoDESC%"=="" goto INVALID
set "autoFOLDER=auto_dQw4w9WgXcQ_m"
set "autoFOLDER2=auto_dQw4w9WgXcQ_r"
echo.
echo ^- Successful!
echo.
pause
cls
call :INFO
goto LICENSE

:LICENSE
echo.
echo ^| LICENSE
echo.
echo ^  Font Automizer: Automize Bengali Font Packages for Android
echo ^  Copyright (C) 2020 NaeemBolchhi
echo.
echo ^  This program is free software: you can redistribute it and/or modify
echo ^  it under the terms of the GNU General Public License as published by
echo ^  the Free Software Foundation, either version 3 of the License, or
echo ^  (at your option) any later version.
echo.
echo ^  This program is distributed in the hope that it will be useful,
echo ^  but WITHOUT ANY WARRANTY; without even the implied warranty of
echo ^  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
echo ^  GNU General Public License for more details.
echo.
echo ^  You should have received a copy of the GNU General Public License
echo ^  along with this program. If not, see ^<http://www.gnu.org/licenses/^>.
echo.
echo ^| AGREEMENT
echo.
echo ^- By continuing to use this program, you hereby agree that you have
echo ^  read, understood and accepted the terms as stated in the License.
echo.
pause
cls
call :INFO
goto BACKGROUND

:BACKGROUND
echo.
echo ^| BACKGROUND TASK
echo.
echo ^- If you see this message for more than a minute, quit and try again.
echo.
call :DELETE
call :UNZIP
call :MAGISKinfo
call :RECOVERYinfo
call :MAGISKfonts
call :RECOVERYfonts
call :ZIP
call :DELETE
goto END

REM Ends the script. Protects the following sections from running.
:END
exit

:INVALID
echo.
echo ^- Value cannot be empty.
echo ^  Automation will now end.
goto FAIL

:FAIL
echo.
title Font Automizer v1.0.0 by NaeemBolchhi (FAILED!)
pause
exit

REM The following sections may only run when called.
:INFO
echo Font Automizer v1.0.0
echo Copyright (C) 2020 NaeemBolchhi
echo ^- https://naeembolchhi.github.io/
echo ^- https://github.com/font-freak/FontAutomizer
echo.
exit /b

:WINBIT
if exist "%SystemDrive%\Program Files (x86)" (
  set "winbit=64"
) else (
  set "winbit=32"
  )
exit /b

:DELETE
if exist "%autoFOLDER%" (
  del /f /s /q "%autoFOLDER%" 1>nul
  rd /s /q "%autoFOLDER%"
)
if exist "%autoFOLDER2%" (
  del /f /s /q "%autoFOLDER2%" 1>nul
  rd /s /q "%autoFOLDER2%"
)
exit /b

:UNZIP
_7za x _template.zip
exit /b

:ZIP
_7za a .\FA\auto_%_autoID%_magisk.zip .\%autoFOLDER%\*
_7za a .\FA\auto_%_autoID%_recovery.zip .\%autoFOLDER2%\*
exit /b

REM Background Tasks
:MAGISKinfo
(
  echo id=auto_%_autoID%
  echo name=[AUTO] %_autoNAME%
  echo version=v%_autoVER%
  echo versionCode=1
  echo author=%_autoAUTHOR%
  echo description=%_autoDESC% [Created with Font Automizer]
  echo support=https://naeembolchhi.github.io/
) > "%autoFOLDER%\module.prop"
_dos2unix%WINBIT% "%autoFOLDER%\module.prop"
exit /b

:RECOVERYinfo
(
  echo ui_print^(" "^);
  echo ui_print^(" "^);
  echo ui_print^("%_autoNAME% %_autoVER%"^);
  echo ui_print^("%_autoAUTHOR%"^);
  echo ui_print^(" "^);
  echo ui_print^(" "^);
  echo ui_print^("| DISCLAIMER"^);
  echo ui_print^(" "^);
  echo ui_print^("- This will modify your system."^);
  echo ui_print^("  All responsibility lies with you."^);
  echo ui_print^(" "^);
  echo ui_print^(" "^);
  echo ui_print^("Installing fonts to system..."^);
  echo ui_print^(" "^);
  echo show_progress^(1.000000, 0^);
  echo ui_print^("Mounting filesystems..."^);
  echo run_program^("/sbin/busybox", "mount", "/system"^);
  echo set_progress^(0.100000^);
  echo ui_print^(" "^);
  echo ui_print^("Extracting files..."^);
  echo package_extract_dir^("system", "/system"^);
  echo set_progress^(0.300000^);
  echo ui_print^(" "^);
  echo ui_print^("Setting permissions..."^);
  echo set_progress^(0.400000^);
  echo set_progress^(0.500000^);
  echo set_perm_recursive^(0, 0, 0755, 0644, "/system/fonts"^);
  echo set_progress^(0.700000^);
  echo ui_print^(" "^);
  echo ui_print^("Unmounting filesystems..."^);
  echo run_program^("/sbin/busybox", "umount", "/system"^);
  echo set_progress^(0.900000^);
  echo ui_print^(" "^);
  echo ui_print^(" "^);
  echo set_progress^(1.000000^);
  echo ui_print^("| Powered by ZIPme"^);
  echo ui_print^("| JRummy Apps Inc."^);
  echo ui_print^(" "^);
  echo ui_print^("| Created with Font Automizer"^);
  echo ui_print^("| https://github.com/font-freak/FontAutomizer"^);
  echo ui_print^(" "^);
  echo ui_print^(" "^);
) > "%autoFOLDER2%\META-INF\com\google\android\updater-script"
dos2unix%WINBIT% "%autoFOLDER2%\META-INF\com\google\android\updater-script"
exit /b

:MAGISKfonts
copy %autoREGULAR% "%autoFOLDER%\fonts\Regular.otf"
copy %autoREGULAR% "%autoFOLDER%\fonts\RegularUI.otf"
copy %autoMEDIUM% "%autoFOLDER%\fonts\Medium.otf"
copy %autoMEDIUM% "%autoFOLDER%\fonts\MediumUI.otf"
copy %autoBOLD% "%autoFOLDER%\fonts\Bold.otf"
copy %autoBOLD% "%autoFOLDER%\fonts\BoldUI.otf"
exit /b

:RECOVERYfonts
copy %autoBOLD% "%autoFOLDER2%\system\fonts\NotoSansBengali-Bold.otf"
copy %autoBOLD% "%autoFOLDER2%\system\fonts\NotoSansBengaliUI-Bold.otf"
copy %autoMEDIUM% "%autoFOLDER2%\system\fonts\NotoSansBengali-Medium.otf"
copy %autoMEDIUM% "%autoFOLDER2%\system\fonts\NotoSansBengaliUI-Medium.otf"
copy %autoREGULAR% "%autoFOLDER2%\system\fonts\NotoSansBengali-Regular.otf"
copy %autoREGULAR% "%autoFOLDER2%\system\fonts\NotoSansBengaliUI-Regular.otf"
copy %autoBOLD% "%autoFOLDER2%\system\fonts\NotoSansBengali-Bold.ttf"
copy %autoBOLD% "%autoFOLDER2%\system\fonts\NotoSansBengaliUI-Bold.ttf"
copy %autoREGULAR% "%autoFOLDER2%\system\fonts\NotoSansBengali-Regular.ttf"
copy %autoREGULAR% "%autoFOLDER2%\system\fonts\NotoSansBengaliUI-Regular.ttf"
copy %autoBOLD% "%autoFOLDER2%\system\fonts\NotoSerifBengali-Bold.ttf"
copy %autoREGULAR% "%autoFOLDER2%\system\fonts\NotoSerifBengali-Regular.ttf"
copy %autoREGULAR% "%autoFOLDER2%\system\fonts\DroidSansBengali.ttf"
copy %autoBOLD% "%autoFOLDER2%\system\fonts\SECBengali-Bold.ttf"
copy %autoBOLD% "%autoFOLDER2%\system\fonts\SECBengaliUI-Bold.ttf"
copy %autoREGULAR% "%autoFOLDER2%\system\fonts\SECBengali-Regular.ttf"
copy %autoREGULAR% "%autoFOLDER2%\system\fonts\SECBengaliUI-Regular.ttf"
exit /b

:: Script complete.
:: v1.0.0 on 05 May 2020. Initial release.