; MASM in Visual Studio 2022

PUBLIC entry

extern MessageBoxA:proc

.data

caption byte "Test",0
gaming byte "Testing bangers",0

.code

entry PROC

sub RSP, 40

mov ECX, 0
lea RDX, caption
lea R8, gaming
mov R9D, 0
lea R11, MessageBoxA
call R11

add RSP, 40

entry endp

END
