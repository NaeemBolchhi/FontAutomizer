:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ::
::    Font Automizer: Automate Font Modules and Packages for Android           ::
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
set "VER=2.0.1"
title [BN] Font Automizer v%VER% by NaeemBolchhi
call :INFO
call :WINBIT

echo.
echo ^| VERIFYING FILES
echo.
REM Background check for dependencies.
if not exist _7za.exe (
  set "lost=_7za.exe"
  goto DEPENDENCY
)
if not exist _dos2unix32.exe (
  set "lost=_dos2unix32.exe"
  goto DEPENDENCY
)
if not exist _dos2unix64.exe (
  set "lost=_dos2unix64.exe"
  goto DEPENDENCY
)

REM Check if template exists.
echo ^- Searching for the template.
set "template=_templateBN.zip"
if exist %template% (
  echo ^  "%template%" was found.
  goto VERIFYttf
) else (
  echo ^  "%template%" was not found.
  echo.
  echo ^- Download and keep "%template%" in the same location as this file.
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
  echo ^  https://github.com/NaeemBolchhi/FontAutomizer
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
echo ^- Author Name is displayed alongside the module name.
echo.
set /p _autoAUTHOR=^> Enter Author Name:
if "%_autoAUTHOR%"=="" goto INVALID
set "bnFOLDER=bn_dQw4w9WgXcQ_m"
set "bnFOLDER2=bn_dQw4w9WgXcQ_r"
set "samsungFOLDER=samsung_dQw4w9WgXcQ_m"
set "samsungFOLDER2=samsung_dQw4w9WgXcQ_r"
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
echo ^  Font Automizer: Automate Font Modules and Packages for Android
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
call :PLACEHOLDER
call :ZIP
call :DELETE
goto END

REM Ends the script. Protects the following sections from running.
:END
exit

:DEPENDENCY
echo ^- "%lost%" was not found.
echo.
echo ^- Ensure all dependencies are present and try again.
echo ^  Automation will now end.
goto FAIL

:INVALID
echo.
echo ^- Value cannot be empty.
echo ^  Automation will now end.
goto FAIL

:FAIL
echo.
title [BN] Font Automizer v%VER% by NaeemBolchhi (FAILED!)
pause
exit

REM The following sections may only run when called.
:INFO
echo [BN] Font Automizer v%VER%
echo Copyright (C) 2020 NaeemBolchhi
echo ^- https://naeembolchhi.github.io/
echo ^- https://github.com/NaeemBolchhi/FontAutomizer
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
if exist "%bnFOLDER%" (
  del /f /s /q "%bnFOLDER%" 1>nul
  rd /s /q "%bnFOLDER%"
)
if exist "%bnFOLDER2%" (
  del /f /s /q "%bnFOLDER2%" 1>nul
  rd /s /q "%bnFOLDER2%"
)
if exist "%samsungFOLDER%" (
  del /f /s /q "%samsungFOLDER%" 1>nul
  rd /s /q "%samsungFOLDER%"
)
if exist "%samsungFOLDER2%" (
  del /f /s /q "%samsungFOLDER2%" 1>nul
  rd /s /q "%samsungFOLDER2%"
)
exit /b

:UNZIP
_7za x %template%
exit /b

:ZIP
_7za a .\FA-BN\bn_%_autoID%_magisk.zip .\%bnFOLDER%\*
_7za a .\FA-BN\bn_%_autoID%_recovery.zip .\%bnFOLDER2%\*
_7za a .\FA-BN\samsung_%_autoID%_magisk.zip .\%samsungFOLDER%\*
_7za a .\FA-BN\samsung_%_autoID%_recovery.zip .\%samsungFOLDER2%\*
exit /b

REM Background Tasks
:MAGISKinfo
(
  echo id=bn_%_autoID%
  echo name=[BN] %_autoNAME%
  echo version=v%VER%
  echo versionCode=1
  echo author=%_autoAUTHOR%
  echo description=Systemlessly replaces default Bengali font. [Created with Font Automizer]
  echo support=https://github.com/NaeemBolchhi/FontAutomizer
) > "%bnFOLDER%\module.prop"
_dos2unix%WINBIT% "%bnFOLDER%\module.prop"
exit /b

:RECOVERYinfo
(
  echo ui_print^(" "^);
  echo ui_print^(" "^);
  echo ui_print^("%_autoNAME% %VER%"^);
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
  echo ui_print^("| https://github.com/NaeemBolchhi/FontAutomizer"^);
  echo ui_print^(" "^);
  echo ui_print^(" "^);
) > "%bnFOLDER2%\META-INF\com\google\android\updater-script"
dos2unix%WINBIT% "%bnFOLDER2%\META-INF\com\google\android\updater-script"
copy "%bnFOLDER2%\META-INF\com\google\android\updater-script" "%samsungFOLDER2%\META-INF\com\google\android\updater-script"
exit /b

:MAGISKfonts
copy %autoREGULAR% "%bnFOLDER%\fonts\Regular.otf"
copy %autoMEDIUM% "%bnFOLDER%\fonts\Medium.otf"
copy %autoBOLD% "%bnFOLDER%\fonts\Bold.otf"
REM Samsung Below
copy %autoREGULAR% "%samsungFOLDER%\fonts\Regular.otf"
copy %autoMEDIUM% "%samsungFOLDER%\fonts\Medium.otf"
copy %autoBOLD% "%samsungFOLDER%\fonts\Bold.otf"
exit /b

:RECOVERYfonts
copy %autoBOLD% "%bnFOLDER2%\system\fonts\NotoSansBengali-Bold.otf"
copy %autoBOLD% "%bnFOLDER2%\system\fonts\NotoSansBengaliUI-Bold.otf"
copy %autoMEDIUM% "%bnFOLDER2%\system\fonts\NotoSansBengali-Medium.otf"
copy %autoMEDIUM% "%bnFOLDER2%\system\fonts\NotoSansBengaliUI-Medium.otf"
copy %autoREGULAR% "%bnFOLDER2%\system\fonts\NotoSansBengali-Regular.otf"
copy %autoREGULAR% "%bnFOLDER2%\system\fonts\NotoSansBengaliUI-Regular.otf"
copy %autoBOLD% "%bnFOLDER2%\system\fonts\NotoSansBengali-Bold.ttf"
copy %autoBOLD% "%bnFOLDER2%\system\fonts\NotoSansBengaliUI-Bold.ttf"
copy %autoREGULAR% "%bnFOLDER2%\system\fonts\NotoSansBengali-Regular.ttf"
copy %autoREGULAR% "%bnFOLDER2%\system\fonts\NotoSansBengaliUI-Regular.ttf"
copy %autoBOLD% "%bnFOLDER2%\system\fonts\NotoSerifBengali-Bold.ttf"
copy %autoREGULAR% "%bnFOLDER2%\system\fonts\NotoSerifBengali-Regular.ttf"
copy %autoREGULAR% "%bnFOLDER2%\system\fonts\DroidSansBengali.ttf"
REM SAMSUNG Below
copy %autoBOLD% "%samsungFOLDER2%\system\fonts\NotoSansBengali-Bold.otf"
copy %autoBOLD% "%samsungFOLDER2%\system\fonts\NotoSansBengaliUI-Bold.otf"
copy %autoMEDIUM% "%samsungFOLDER2%\system\fonts\NotoSansBengali-Medium.otf"
copy %autoMEDIUM% "%samsungFOLDER2%\system\fonts\NotoSansBengaliUI-Medium.otf"
copy %autoREGULAR% "%samsungFOLDER2%\system\fonts\NotoSansBengali-Regular.otf"
copy %autoREGULAR% "%samsungFOLDER2%\system\fonts\NotoSansBengaliUI-Regular.otf"
copy %autoBOLD% "%samsungFOLDER2%\system\fonts\NotoSansBengali-Bold.ttf"
copy %autoBOLD% "%samsungFOLDER2%\system\fonts\NotoSansBengaliUI-Bold.ttf"
copy %autoREGULAR% "%samsungFOLDER2%\system\fonts\NotoSansBengali-Regular.ttf"
copy %autoREGULAR% "%samsungFOLDER2%\system\fonts\NotoSansBengaliUI-Regular.ttf"
copy %autoBOLD% "%samsungFOLDER2%\system\fonts\NotoSerifBengali-Bold.ttf"
copy %autoREGULAR% "%samsungFOLDER2%\system\fonts\NotoSerifBengali-Regular.ttf"
copy %autoREGULAR% "%samsungFOLDER2%\system\fonts\DroidSansBengali.ttf"
copy %autoBOLD% "%samsungFOLDER2%\system\fonts\SECBengali-Bold.ttf"
copy %autoBOLD% "%samsungFOLDER2%\system\fonts\SECBengaliUI-Bold.ttf"
copy %autoREGULAR% "%samsungFOLDER2%\system\fonts\SECBengali-Regular.ttf"
copy %autoREGULAR% "%samsungFOLDER2%\system\fonts\SECBengaliUI-Regular.ttf"
copy %autoBOLD% "%samsungFOLDER2%\system\fonts\SECBengali-Bold.otf"
copy %autoBOLD% "%samsungFOLDER2%\system\fonts\SECBengaliUI-Bold.otf"
copy %autoMEDIUM% "%samsungFOLDER2%\system\fonts\SECBengali-Medium.otf"
copy %autoMEDIUM% "%samsungFOLDER2%\system\fonts\SECBengaliUI-Medium.otf"
copy %autoREGULAR% "%samsungFOLDER2%\system\fonts\SECBengali-Regular.otf"
copy %autoREGULAR% "%samsungFOLDER2%\system\fonts\SECBengaliUI-Regular.otf"
exit /b

:PLACEHOLDER
del /f /q "%bnFOLDER%\fonts\.placeholder" 1>nul
del /f /q "%bnFOLDER2%\system\fonts\.placeholder" 1>nul
del /f /q "%samsungFOLDER%\fonts\.placeholder" 1>nul
del /f /q "%samsungFOLDER2%\system\fonts\.placeholder" 1>nul
exit /b

:: Script complete.
:: v1.0.0 on 18 May 2020. Initial release.
:: v1.1.0 on 04 Jun 2020. Minor update.
:: v1.1.1 on 07 Jun 2020. Bug fix.
:: v2.0.0 on 14 Jun 2020. Support for English fonts.
:: v2.0.1 on 16 Jun 2020. Improved logic. Minor bug fix.