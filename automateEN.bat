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
set "VER=2.0.0"
title [EN] Font Automizer v%VER% by NaeemBolchhi
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
set "template=_templateEN.zip"
if exist %template% (
  echo ^  "%template%" was found.
  goto VERIFYttf_100
) else (
  echo ^  "%template%" was not found.
  echo.
  echo ^- Download and keep "%template%" in the same location as this file.
  echo ^  Automation will now end.
  goto FAIL
)

REM Check if ttf fonts exist.
:VERIFYttf_100
echo.
echo ^- Searching for STANDARD fonts (TTF).
if exist 101.ttf (
  echo ^  "101.ttf" was found.
  set "auto101=101.ttf"
) else (
  echo ^  "101.ttf" was not found.
  goto VERIFYotf_100
  )
if exist 102.ttf (
  echo ^  "102.ttf" was found.
  set "auto102=102.ttf"
) else (
  echo ^  "102.ttf" was not found.
  set "auto102=%auto101%"
  )
if exist 103.ttf (
  echo ^  "103.ttf" was found.
  set "auto103=103.ttf"
) else (
  echo ^  "103.ttf" was not found.
  set "auto103=%auto101%"
  )
if exist 104.ttf (
  echo ^  "104.ttf" was found.
  set "auto104=104.ttf"
) else (
  echo ^  "104.ttf" was not found.
  set "auto104=%auto102%"
  )
if exist 105.ttf (
  echo ^  "105.ttf" was found.
  set "auto105=105.ttf"
) else (
  echo ^  "105.ttf" was not found.
  set "auto105=%auto103%"
  )
if exist 106.ttf (
  echo ^  "106.ttf" was found.
  set "auto106=106.ttf"
) else (
  echo ^  "106.ttf" was not found.
  set "auto106=%auto104%"
  )
if exist 107.ttf (
  echo ^  "107.ttf" was found.
  set "auto107=107.ttf"
) else (
  echo ^  "107.ttf" was not found.
  set "auto107=%auto103%"
  )
if exist 108.ttf (
  echo ^  "108.ttf" was found.
  set "auto108=108.ttf"
) else (
  echo ^  "108.ttf" was not found.
  set "auto108=%auto104%"
  )
if exist 109.ttf (
  echo ^  "109.ttf" was found.
  set "auto109=109.ttf"
) else (
  echo ^  "109.ttf" was not found.
  set "auto109=%auto101%"
  )
if exist 110.ttf (
  echo ^  "110.ttf" was found.
  set "auto110=110.ttf"
) else (
  echo ^  "110.ttf" was not found.
  set "auto110=%auto102%"
  )
if exist 111.ttf (
  echo ^  "111.ttf" was found.
  set "auto111=111.ttf"
) else (
  echo ^  "111.ttf" was not found.
  set "auto111=%auto101%"
  )
if exist 112.ttf (
  echo ^  "112.ttf" was found.
  set "auto112=112.ttf"
) else (
  echo ^  "112.ttf" was not found.
  set "auto112=%auto102%"
  )
goto VERIFYttf_200

REM Check if otf fonts exist.
:VERIFYotf_100
echo.
echo ^- Searching for STANDARD fonts (OTF).
if exist 101.otf (
  echo ^  "101.otf" was found.
  set "auto101=101.otf"
) else (
  echo ^  "101.otf" was not found.
  set "auto101=ZERO"
  goto VERIFYttf_200
  )
if exist 102.otf (
  echo ^  "102.otf" was found.
  set "auto102=102.otf"
) else (
  echo ^  "102.otf" was not found.
  set "auto102=%auto101%"
  )
if exist 103.otf (
  echo ^  "103.otf" was found.
  set "auto103=103.otf"
) else (
  echo ^  "103.otf" was not found.
  set "auto103=%auto101%"
  )
if exist 104.otf (
  echo ^  "104.otf" was found.
  set "auto104=104.otf"
) else (
  echo ^  "104.otf" was not found.
  set "auto104=%auto102%"
  )
if exist 105.otf (
  echo ^  "105.otf" was found.
  set "auto105=105.otf"
) else (
  echo ^  "105.otf" was not found.
  set "auto105=%auto103%"
  )
if exist 106.otf (
  echo ^  "106.otf" was found.
  set "auto106=106.otf"
) else (
  echo ^  "106.otf" was not found.
  set "auto106=%auto104%"
  )
if exist 107.otf (
  echo ^  "107.otf" was found.
  set "auto107=107.otf"
) else (
  echo ^  "107.otf" was not found.
  set "auto107=%auto103%"
  )
if exist 108.otf (
  echo ^  "108.otf" was found.
  set "auto108=108.otf"
) else (
  echo ^  "108.otf" was not found.
  set "auto108=%auto104%"
  )
if exist 109.otf (
  echo ^  "109.otf" was found.
  set "auto109=109.otf"
) else (
  echo ^  "109.otf" was not found.
  set "auto109=%auto101%"
  )
if exist 110.otf (
  echo ^  "110.otf" was found.
  set "auto110=110.otf"
) else (
  echo ^  "110.otf" was not found.
  set "auto110=%auto102%"
  )
if exist 111.otf (
  echo ^  "111.otf" was found.
  set "auto111=111.otf"
) else (
  echo ^  "111.otf" was not found.
  set "auto111=%auto101%"
  )
if exist 112.otf (
  echo ^  "112.otf" was found.
  set "auto112=112.otf"
) else (
  echo ^  "112.otf" was not found.
  set "auto112=%auto102%"
  )
goto VERIFYttf_200

:VERIFYttf_200
echo.
echo ^- Searching for CONDENSED fonts (TTF).
if exist 201.ttf (
  echo ^  "201.ttf" was found.
  set "auto201=201.ttf"
) else (
  echo ^  "201.ttf" was not found.
  goto VERIFYotf_200
  )
if exist 202.ttf (
  echo ^  "202.ttf" was found.
  set "auto202=202.ttf"
) else (
  echo ^  "202.ttf" was not found.
  set "auto202=%auto201%"
  )
if exist 203.ttf (
  echo ^  "203.ttf" was found.
  set "auto203=203.ttf"
) else (
  echo ^  "203.ttf" was not found.
  set "auto203=%auto201%"
  )
if exist 204.ttf (
  echo ^  "204.ttf" was found.
  set "auto204=204.ttf"
) else (
  echo ^  "204.ttf" was not found.
  set "auto204=%auto202%"
  )
if exist 205.ttf (
  echo ^  "205.ttf" was found.
  set "auto205=205.ttf"
) else (
  echo ^  "205.ttf" was not found.
  set "auto205=%auto203%"
  )
if exist 206.ttf (
  echo ^  "206.ttf" was found.
  set "auto206=206.ttf"
) else (
  echo ^  "206.ttf" was not found.
  set "auto206=%auto204%"
  )
if exist 207.ttf (
  echo ^  "207.ttf" was found.
  set "auto207=207.ttf"
) else (
  echo ^  "207.ttf" was not found.
  set "auto207=%auto201%"
  )
if exist 208.ttf (
  echo ^  "208.ttf" was found.
  set "auto208=208.ttf"
) else (
  echo ^  "208.ttf" was not found.
  set "auto208=%auto202%"
  )
goto VERIFYttf_300

:VERIFYotf_200
echo.
echo ^- Searching for CONDENSED fonts (OTF).
if exist 201.otf (
  echo ^  "201.otf" was found.
  set "auto201=201.otf"
) else (
  echo ^  "201.otf" was not found.
  set "auto201=ZERO"
  goto VERIFYttf_300
  )
if exist 202.otf (
  echo ^  "202.otf" was found.
  set "auto202=202.otf"
) else (
  echo ^  "202.otf" was not found.
  set "auto202=%auto201%"
  )
if exist 203.otf (
  echo ^  "203.otf" was found.
  set "auto203=203.otf"
) else (
  echo ^  "203.otf" was not found.
  set "auto203=%auto201%"
  )
if exist 204.otf (
  echo ^  "204.otf" was found.
  set "auto204=204.otf"
) else (
  echo ^  "204.otf" was not found.
  set "auto204=%auto202%"
  )
if exist 205.otf (
  echo ^  "205.otf" was found.
  set "auto205=205.otf"
) else (
  echo ^  "205.otf" was not found.
  set "auto205=%auto203%"
  )
if exist 206.otf (
  echo ^  "206.otf" was found.
  set "auto206=206.otf"
) else (
  echo ^  "206.otf" was not found.
  set "auto206=%auto204%"
  )
if exist 207.otf (
  echo ^  "207.otf" was found.
  set "auto207=207.otf"
) else (
  echo ^  "207.otf" was not found.
  set "auto207=%auto201%"
  )
if exist 208.otf (
  echo ^  "208.otf" was found.
  set "auto208=208.otf"
) else (
  echo ^  "208.otf" was not found.
  set "auto208=%auto202%"
  )
goto VERIFYttf_300

:VERIFYttf_300
echo.
echo ^- Searching for MONOSPACE font (TTF).
if exist 301.ttf (
  echo ^  "301.ttf" was found.
  set "auto301=301.ttf"
) else (
  echo ^  "301.ttf" was not found.
  goto VERIFYotf_300
  )
goto VERIFYttf_400

:VERIFYotf_300
echo.
echo ^- Searching for MONOSPACE font (OTF).
if exist 301.otf (
  echo ^  "301.otf" was found.
  set "auto301=301.otf"
) else (
  echo ^  "301.otf" was not found.
  set "auto301=ZERO"
  goto VERIFYttf_400
  )
goto VERIFYttf_400

:VERIFYttf_400
echo.
echo ^- Searching for EMOJI font (TTF).
if exist 401.ttf (
  echo ^  "401.ttf" was found.
  set "auto401=401.ttf"
) else (
  echo ^  "401.ttf" was not found.
  goto VERIFYotf_400
  )
goto PROCEED

:VERIFYotf_400
echo.
echo ^- Searching for EMOJI font (OTF).
if exist 401.otf (
  echo ^  "401.otf" was found.
  set "auto401=401.otf"
) else (
  echo ^  "401.otf" was not found.
  set "auto401=ZERO"
  )
goto PROCEED

REM Show error if no font file exists.
:PROCEED
if %auto101%==ZERO (
  if %auto201%==ZERO (
    if %auto301%==ZERO (
	  if %auto401%==ZERO (
	    echo.
        echo ^- Cannot proceed without an input font.
        echo ^  Download an English Unicode font and rename accordingly.
        echo ^  Visit Github for more information.
        echo ^  https://github.com/NaeemBolchhi/FontAutomizer
        echo ^  Automation will now end.
        goto FAIL
	  )
	)
  )
)
goto INPUT

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
set "enFOLDER=en_dQw4w9WgXcQ"
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
call :MAGISKfonts
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
title [EN] Font Automizer v%VER% by NaeemBolchhi (FAILED!)
pause
exit

REM The following sections may only run when called.
:INFO
echo [EN] Font Automizer v%VER%
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
if exist "%enFOLDER%" (
  del /f /s /q "%enFOLDER%" 1>nul
  rd /s /q "%enFOLDER%"
)
exit /b

:UNZIP
_7za x %template%
exit /b

:ZIP
_7za a .\FA-EN\en_%_autoID%_magisk.zip .\%enFOLDER%\*
exit /b

REM Background Tasks
:MAGISKinfo
(
  echo id=bn_%_autoID%
  echo name=[EN] %_autoNAME%
  echo version=v%VER%
  echo versionCode=1
  echo author=%_autoAUTHOR%
  echo description=Systemlessly replaces default English/Emoji font. [Created with Font Automizer]
  echo support=https://naeembolchhi.github.io/
) > "%enFOLDER%\module.prop"
_dos2unix%WINBIT% "%enFOLDER%\module.prop"
exit /b

:MAGISKfonts
if not %auto101%==ZERO (
  copy %auto101% "%enFOLDER%\fonts\Regular.ttf"
  copy %auto102% "%enFOLDER%\fonts\Italic.ttf"
  copy %auto103% "%enFOLDER%\fonts\Bold.ttf"
  copy %auto104% "%enFOLDER%\fonts\BoldItalic.ttf"
  copy %auto105% "%enFOLDER%\fonts\Black.ttf"
  copy %auto106% "%enFOLDER%\fonts\BlackItalic.ttf"
  copy %auto107% "%enFOLDER%\fonts\Medium.ttf"
  copy %auto108% "%enFOLDER%\fonts\MediumItalic.ttf"
  copy %auto109% "%enFOLDER%\fonts\Light.ttf"
  copy %auto110% "%enFOLDER%\fonts\LightItalic.ttf"
  copy %auto111% "%enFOLDER%\fonts\Thin.ttf"
  copy %auto112% "%enFOLDER%\fonts\ThinItalic.ttf"
)
if not %auto201%==ZERO (
  copy %auto201% "%enFOLDER%\fonts\Condensed-Regular.ttf"
  copy %auto202% "%enFOLDER%\fonts\Condensed-Italic.ttf"
  copy %auto203% "%enFOLDER%\fonts\Condensed-Bold.ttf"
  copy %auto204% "%enFOLDER%\fonts\Condensed-BoldItalic.ttf"
  copy %auto205% "%enFOLDER%\fonts\Condensed-Medium.ttf"
  copy %auto206% "%enFOLDER%\fonts\Condensed-MediumItalic.ttf"
  copy %auto207% "%enFOLDER%\fonts\Condensed-Light.ttf"
  copy %auto208% "%enFOLDER%\fonts\Condensed-LightItalic.ttf"
)
if not %auto301%==ZERO (
  copy %auto301% "%enFOLDER%\fonts\Mono.ttf"
)
if not %auto401%==ZERO (
  copy %auto401% "%enFOLDER%\fonts\Emoji.ttf"
)
exit /b

:PLACEHOLDER
del /f /q "%enFOLDER%\fonts\.placeholder" 1>nul
exit /b

:: Script complete.
:: v1.0.0 on 18 May 2020. Initial release.
:: v1.1.0 on 04 Jun 2020. Minor update.
:: v1.1.1 on 07 Jun 2020. Bug fix.
:: v2.0.0 on 14 Jun 2020. Support for English fonts.