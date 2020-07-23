# Font Automizer
A script to automate the creation of Bengali/English font packages for Magisk and Recovery.
Note that the program does not come with any fonts. You have to obtain and provide the Unicode fonts by yourself.

## Features
* Can create Bengali and English font modules for Magisk.
* Can create Bengali font packages for Recovery.

## Newest Release
[v2.0.2](https://github.com/NaeemBolchhi/FontAutomizer/releases)

## Usage
Everything is straight forward. You just need a Windows computer to prepare the modules.
Do the following step by step __(*important)__:
- Download the latest ``Font Automizer`` to your Desktop* and extract the files.
- Copy your fonts and paste inside the newly created folder.
- For __Bengali__, rename according to this chart.
- __At least ``1.ttf`` should be present for changes to take effect.__
  ```
  Regular > 1.ttf
  Medium > 2.ttf
  Bold > 3.ttf
  ```
- For __English__ (Standard), rename according to this chart.
- __At least ``101.ttf`` should be present for changes to take effect.__
  ```
  Regular > 101.ttf
  Italic > 102.ttf
  Bold > 103.ttf
  Bold Italic > 104.ttf

  Black > 105.ttf
  Black Italic > 106.ttf

  Medium > 107.ttf
  Medium Italic > 108.ttf

  Light > 109.ttf
  Light Italic > 110.ttf

  Thin > 111.ttf
  Thin Italic > 112.ttf
  ```
- For __English__ Condensed, rename according to this chart.
- __At least ``201.ttf`` should be present for changes to take effect.__
  ```
  Condensed Regular > 201.ttf
  Condensed Italic > 202.ttf
  Condensed Bold > 203.ttf
  Condensed Bold Italic > 204.ttf

  Condensed Medium > 205.ttf
  Condensed Medium Italic > 206.ttf

  Condensed Light > 207.ttf
  Condensed Light Italic > 208.ttf
  ```
- For __English__ Monospace, rename to ``301.ttf``.
- For __Emoji__, rename to ``401.ttf``.
- For the rest, rename to the font name you want to replace in ```/system/fonts```.
- Finally, flash the FFI zip in Magisk and reboot.
- __NOTE: OTF files will also work. Rename similarly to these lists.__
- __NOTE 2: If you don't provide a font, it will be replaced by a related variant.__ So, if (for English) ``202.ttf`` is not available, ``201.ttf`` will be automatically copied and used for ``202.ttf`` in your device.

## License

    Font Automizer: Automate Bengali Font Packages for Android
    Copyright (C) 2020 NaeemBolchhi

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program. If not, see <http://www.gnu.org/licenses/>.

## Disclaimer

    THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
    APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
    HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY
    OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO,
    THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
    PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM
    IS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF
    ALL NECESSARY SERVICING, REPAIR OR CORRECTION.
    
## Agreement

    By downloading and using this program, you hereby agree that you have
    read, understood and accepted the terms as stated in the License.

## Dependencies
- [7za](https://www.7-zip.org/download.html)
- [Dos2Unix](https://sourceforge.net/projects/dos2unix/)
- [MMT-Ex](https://github.com/Zackptg5/MMT-Extended)
- [CFI](https://github.com/nongthaihoang/custom_font_installer)
