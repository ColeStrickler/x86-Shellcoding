; HelloWorld.asm
; AUTHOR:  Cole Strickler



global _start

section .text

_start:


	; print hello world
	xor eax, eax
	mov al, 0x4
	xor ebx, ebx
	mov bl, 0x1
	
	xor edx, edx
	; use edx to push 4 \x00
	push edx
	; Hello World\n in hex
	push 0x0a646c72
	push 0x6f57206f
	push 0x6c6c6548
	mov ecx, esp

	mov dl, 12
	int 0x80

	; exit program 
	
	xor eax, eax
	mov al, 0x1
	xor ebx, ebx
	mov bl, 0x5
	int 0x80 



