@echo off
nasm -fwin32 %~dp0timestamp32.asm -o %~dp0timestamp32.obj
golink /console /dynamicbase /nxcompat /entry _main /fo timestamp32_golink.exe %~dp0timestamp32.obj kernel32.dll
CALL %~dp0..\..\setmspath.bat
%MSLinker% /LIBPATH:%MSLibsX86% /DYNAMICBASE /NXCOMPAT /SUBSYSTEM:CONSOLE /MACHINE:X86 /ENTRY:main /OUT:timestamp32_msft.exe %~dp0timestamp32.obj kernel32.lib
del %~dp0timestamp32.obj
