nasm -fwin64 parameters64.asm
golink /console /dynamicbase /nxcompat /entry _main /fo parameters64_golink.exe parameters64.obj kernel32.dll
"C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\bin\link.exe" /LIBPATH:"C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\Lib\x64" /DYNAMICBASE /NXCOMPAT /SUBSYSTEM:CONSOLE /MACHINE:X64 /ENTRY:_main /OUT:parameters64_msft.exe parameters64.obj kernel32.lib
del parameters64.obj