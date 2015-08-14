@echo off
@del logo.mod
@chkbmp logo.bmp
@if ERRORLEVEL 1 GOTO ERROR
@fp logo.scr
@fi logo.scr
@rom2mod BIOS.ROM LOGO.MOD
@del BIOS.ROM
@del BIOS.FFV
@del _BUILD.TMP
@del MODULE.MAP
@goto END
:Error
@echo LOGO.BMP file is not found or is not correct.
:END
