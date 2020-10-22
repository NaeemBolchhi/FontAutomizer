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
set "VER=2.1.0"
title [FA] Font Automizer v%VER% by NaeemBolchhi
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
set "template=_template.zip"
if exist %template% (
  echo ^  "%template%" was found.
  goto VERIFYttf_0
) else (
  echo ^  "%template%" was not found.
  echo.
  echo ^- Download and keep "%template%" in the same location as this file.
  echo ^  Automation will now end.
  goto FAIL
)

REM Check if fonts exist.
:VERIFYttf_0
echo.
echo ^- Searching for BENGALI fonts (TTF).
if exist 1.ttf (
  echo ^  "1.ttf" was found.
  set "type0=ttf"
) else (
  echo ^  "1.ttf" was not found.
  goto VERIFYotf_0
  )
if exist 2.ttf echo ^  "2.ttf" was found.
if not exist 2.ttf echo ^  "2.ttf" was not found.
if exist 3.ttf echo ^  "3.ttf" was found.
if not exist 3.ttf echo ^  "3.ttf" was not found.
goto VERIFYttf_100

:VERIFYotf_0
echo.
echo ^- Searching for BENGALI fonts (OTF).
if exist 1.otf (
  echo ^  "1.otf" was found.
  set "type0=otf"
) else (
  echo ^  "1.otf" was not found.
  set "type0=ZERO"
  goto VERIFYttf_100
  )
if exist 2.otf echo ^  "2.otf" was found.
if not exist 2.otf echo ^  "2.otf" was not found.
if exist 3.otf echo ^  "3.otf" was found.
if not exist 3.otf echo ^  "3.otf" was not found.
goto VERIFYttf_100

:VERIFYttf_100
echo.
echo ^- Searching for ENGLISH STANDARD fonts (TTF).
if exist 101.ttf (
  echo ^  "101.ttf" was found.
  set "type100=ttf"
) else (
  echo ^  "101.ttf" was not found.
  goto VERIFYotf_100
  )
if exist 102.ttf echo ^  "102.ttf" was found.
if not exist 102.ttf echo ^  "102.ttf" was not found.
if exist 103.ttf echo ^  "103.ttf" was found.
if not exist 103.ttf echo ^  "103.ttf" was not found.
if exist 104.ttf echo ^  "104.ttf" was found.
if not exist 104.ttf echo ^  "104.ttf" was not found.
if exist 105.ttf echo ^  "105.ttf" was found.
if not exist 105.ttf echo ^  "105.ttf" was not found.
if exist 106.ttf echo ^  "106.ttf" was found.
if not exist 106.ttf echo ^  "106.ttf" was not found.
if exist 107.ttf echo ^  "107.ttf" was found.
if not exist 107.ttf echo ^  "107.ttf" was not found.
if exist 108.ttf echo ^  "108.ttf" was found.
if not exist 108.ttf echo ^  "108.ttf" was not found.
if exist 109.ttf echo ^  "109.ttf" was found.
if not exist 109.ttf echo ^  "109.ttf" was not found.
if exist 110.ttf echo ^  "110.ttf" was found.
if not exist 110.ttf echo ^  "110.ttf" was not found.
if exist 111.ttf echo ^  "111.ttf" was found.
if not exist 111.ttf echo ^  "111.ttf" was not found.
if exist 112.ttf echo ^  "112.ttf" was found.
if not exist 112.ttf echo ^  "112.ttf" was not found.
goto VERIFYttf_200

:VERIFYotf_100
echo.
echo ^- Searching for ENGLISH STANDARD fonts (OTF).
if exist 101.otf (
  echo ^  "101.otf" was found.
  set "type100=otf"
) else (
  echo ^  "101.otf" was not found.
  set "type100=ZERO"
  goto VERIFYttf_200
  )
if exist 102.otf echo ^  "102.otf" was found.
if not exist 102.otf echo ^  "102.otf" was not found.
if exist 103.otf echo ^  "103.otf" was found.
if not exist 103.otf echo ^  "103.otf" was not found.
if exist 104.otf echo ^  "104.otf" was found.
if not exist 104.otf echo ^  "104.otf" was not found.
if exist 105.otf echo ^  "105.otf" was found.
if not exist 105.otf echo ^  "105.otf" was not found.
if exist 106.otf echo ^  "106.otf" was found.
if not exist 106.otf echo ^  "106.otf" was not found.
if exist 107.otf echo ^  "107.otf" was found.
if not exist 107.otf echo ^  "107.otf" was not found.
if exist 108.otf echo ^  "108.otf" was found.
if not exist 108.otf echo ^  "108.otf" was not found.
if exist 109.otf echo ^  "109.otf" was found.
if not exist 109.otf echo ^  "109.otf" was not found.
if exist 110.otf echo ^  "110.otf" was found.
if not exist 110.otf echo ^  "110.otf" was not found.
if exist 111.otf echo ^  "111.otf" was found.
if not exist 111.otf echo ^  "111.otf" was not found.
if exist 112.otf echo ^  "112.otf" was found.
if not exist 112.otf echo ^  "112.otf" was not found.
goto VERIFYttf_200

:VERIFYttf_200
echo.
echo ^- Searching for ENGLISH CONDENSED fonts (TTF).
if exist 201.ttf (
  echo ^  "201.ttf" was found.
  set "type200=ttf"
) else (
  echo ^  "201.ttf" was not found.
  goto VERIFYotf_200
  )
if exist 202.ttf echo ^  "202.ttf" was found.
if not exist 202.ttf echo ^  "202.ttf" was not found.
if exist 203.ttf echo ^  "203.ttf" was found.
if not exist 203.ttf echo ^  "203.ttf" was not found.
if exist 204.ttf echo ^  "204.ttf" was found.
if not exist 204.ttf echo ^  "204.ttf" was not found.
if exist 205.ttf echo ^  "205.ttf" was found.
if not exist 205.ttf echo ^  "205.ttf" was not found.
if exist 206.ttf echo ^  "206.ttf" was found.
if not exist 206.ttf echo ^  "206.ttf" was not found.
if exist 207.ttf echo ^  "207.ttf" was found.
if not exist 207.ttf echo ^  "207.ttf" was not found.
if exist 208.ttf echo ^  "208.ttf" was found.
if not exist 208.ttf echo ^  "208.ttf" was not found.
goto VERIFYttf_300

:VERIFYotf_200
echo.
echo ^- Searching for ENGLISH CONDENSED fonts (OTF).
if exist 201.otf (
  echo ^  "201.otf" was found.
  set "type200=otf"
) else (
  echo ^  "201.otf" was not found.
  set "type200=ZERO"
  goto VERIFYttf_300
  )
if exist 202.otf echo ^  "202.otf" was found.
if not exist 202.otf echo ^  "202.otf" was not found.
if exist 203.otf echo ^  "203.otf" was found.
if not exist 203.otf echo ^  "203.otf" was not found.
if exist 204.otf echo ^  "204.otf" was found.
if not exist 204.otf echo ^  "204.otf" was not found.
if exist 205.otf echo ^  "205.otf" was found.
if not exist 205.otf echo ^  "205.otf" was not found.
if exist 206.otf echo ^  "206.otf" was found.
if not exist 206.otf echo ^  "206.otf" was not found.
if exist 207.otf echo ^  "207.otf" was found.
if not exist 207.otf echo ^  "207.otf" was not found.
if exist 208.otf echo ^  "208.otf" was found.
if not exist 208.otf echo ^  "208.otf" was not found.
goto VERIFYttf_300

:VERIFYttf_300
echo.
echo ^- Searching for ENGLISH MONOSPACE font (TTF).
if exist 301.ttf (
  echo ^  "301.ttf" was found.
  set "type300=ttf"
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
  set "type300=otf"
) else (
  echo ^  "301.otf" was not found.
  set "type300=ZERO"
  )
goto VERIFYttf_400

:VERIFYttf_400
echo.
echo ^- Searching for EMOJI font (TTF).
if exist 401.ttf (
  echo ^  "401.ttf" was found.
  set "type400=ttf"
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
  set "type400=otf"
) else (
  echo ^  "401.otf" was not found.
  set "type400=ZERO"
  )
goto PROCEED

REM Show error if no font file exists.
:PROCEED
if %type0%==ZERO (
  if %type100%==ZERO (
    if %type200%==ZERO (
      if %type300%==ZERO (
	    if %type400%==ZERO (
	      echo.
          echo ^- Cannot proceed without an input font.
          echo ^  Download appropriate Unicode font^(s^) and rename accordingly.
          echo ^  Visit Github for more information.
          echo ^  https://github.com/NaeemBolchhi/FontAutomizer
          echo ^  Automation will now end.
          goto FAIL
	    )
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
set /p "_autoID=> Enter Module ID: "
if "%_autoID%"=="" goto INVALID
echo.
echo ^- Module Name is displayed inside Magisk.
echo.
set /p "_autoNAME=> Enter Module Name: "
if "%_autoNAME%"=="" goto INVALID
echo.
echo ^- Author Name is displayed alongside the module name.
echo.
set /p "_autoAUTHOR=> Enter Author Name: "
if "%_autoAUTHOR%"=="" goto INVALID
set "FOLDER=dQw4w9WgXcQ"
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
title [FA] Font Automizer v%VER% by NaeemBolchhi (FAILED!)
pause
exit

REM The following sections may only run when called.
:INFO
echo [FA] Font Automizer v%VER%
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
if exist "%FOLDER%" (
  del /f /s /q "%FOLDER%" 1>nul
  rd /s /q "%FOLDER%"
)
exit /b

:UNZIP
_7za x %template%
exit /b

:ZIP
_7za a .\#FA\fa_%_autoID%.zip .\%FOLDER%\*
exit /b

REM Background Tasks
:MAGISKinfo
(
  echo id=fa_%_autoID%
  echo name=[FA] %_autoNAME%
  echo version=v%VER%
  echo versionCode=1
  echo author=%_autoAUTHOR%
  echo description=Systemlessly replaces default Bengali/English/Emoji font^(s^). [Created with Font Automizer]
  echo support=https://github.com/NaeemBolchhi/FontAutomizer
) > "%FOLDER%\module.prop"
_dos2unix%WINBIT% "%FOLDER%\module.prop"
exit /b

:MAGISKfonts
if not %type0%==ZERO (
  if exist 1.%type0% copy 1.%type0% "%FOLDER%\freak\1.otf"
  if exist 2.%type0% copy 2.%type0% "%FOLDER%\freak\2.otf"
  if exist 3.%type0% copy 3.%type0% "%FOLDER%\freak\3.otf"
)
if not %type100%==ZERO (
  if exist 101.%type100% copy 101.%type100% "%FOLDER%\freak\101.ttf"
  if exist 102.%type100% copy 102.%type100% "%FOLDER%\freak\102.ttf"
  if exist 103.%type100% copy 103.%type100% "%FOLDER%\freak\103.ttf"
  if exist 104.%type100% copy 104.%type100% "%FOLDER%\freak\104.ttf"
  if exist 105.%type100% copy 105.%type100% "%FOLDER%\freak\105.ttf"
  if exist 106.%type100% copy 106.%type100% "%FOLDER%\freak\106.ttf"
  if exist 107.%type100% copy 107.%type100% "%FOLDER%\freak\107.ttf"
  if exist 108.%type100% copy 108.%type100% "%FOLDER%\freak\108.ttf"
  if exist 109.%type100% copy 109.%type100% "%FOLDER%\freak\109.ttf"
  if exist 110.%type100% copy 110.%type100% "%FOLDER%\freak\110.ttf"
  if exist 111.%type100% copy 111.%type100% "%FOLDER%\freak\111.ttf"
  if exist 112.%type100% copy 112.%type100% "%FOLDER%\freak\112.ttf"
)
if not %type200%==ZERO (
  if exist 201.%type200% copy 201.%type200% "%FOLDER%\freak\201.ttf"
  if exist 202.%type200% copy 202.%type200% "%FOLDER%\freak\202.ttf"
  if exist 203.%type200% copy 203.%type200% "%FOLDER%\freak\203.ttf"
  if exist 204.%type200% copy 204.%type200% "%FOLDER%\freak\204.ttf"
  if exist 205.%type200% copy 205.%type200% "%FOLDER%\freak\205.ttf"
  if exist 206.%type200% copy 206.%type200% "%FOLDER%\freak\206.ttf"
  if exist 207.%type200% copy 207.%type200% "%FOLDER%\freak\207.ttf"
  if exist 208.%type200% copy 208.%type200% "%FOLDER%\freak\208.ttf"
)
if not %type300%==ZERO (
  if exist 301.%type300% copy 301.%type300% "%FOLDER%\freak\301.ttf"
)
if not %type400%==ZERO (
  if exist 401.%type400% copy 401.%type400% "%FOLDER%\freak\401.ttf"
)
exit /b

:PLACEHOLDER
del /f /q "%FOLDER%\freak\.placeholder" 1>nul
exit /b

:: Script complete.
:: v1.0.0 on 18 May 2020. Initial release.
:: v1.1.0 on 04 Jun 2020. Minor update.
:: v1.1.1 on 07 Jun 2020. Bug fix.
:: v2.0.0 on 14 Jun 2020. Support for English fonts.
:: v2.0.1 on 16 Jun 2020. Improved logic. Minor bug fix.
:: v2.0.2 on 23 Jul 2020. English base updated to CFI-v2.0. Bengali font logic improved.
:: v2.1.0 on 23 Oct 2020. Unified template for Bengali and English, updated to CFI-2.3.