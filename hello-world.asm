; MASM in Visual Studio 2022

PUBLIC entry

extern MessageBoxA:proc

.data

caption byte "Test",0
gaming byte "Testing bangers",0

.code

entry PROC

sub RSP, 40

; calling convention go brrr https://docs.microsoft.com/en-us/cpp/build/x64-calling-convention?view=msvc-170
; ECX = 32bit reg for RCX, cuz it's a smaller number.
; RDX is the 2nd one for an int, we declared it in the data tag (it contains bytes)
; R8 is register 8, also 64 bit register type. same thing
; R9D is a 32bit register for the 4th paramater
; R11 is some random ass register I used to store the function pointer of MessageBoxA, and then call it.
; you could just do call MessageBoxA, but i'm special.

mov ECX, 0 
lea RDX, caption
lea R8, gaming
mov R9D, 0
lea R11, MessageBoxA
call R11

add RSP, 40

entry endp

END
