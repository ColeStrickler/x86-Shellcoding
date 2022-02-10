; HelloWorld.asm
; AUTHOR:  Cole Strickler



global _start

section .text

_start:

	jmp short call_shellcode


shellcode:

	; print hello world
	xor eax, eax
	mov al, 0x4
	xor ebx, ebx
	mov bl, 0x1
	pop ecx
	xor edx, edx
	mov dl, 0xC
	int 0x80

	; exit program 
	
	xor eax, eax
	mov al, 0x1
	xor ebx, ebx
	mov bl, 0x5
	int 0x80 






call_shellcode:
	
	call shellcode
	message: db "Hello World!", 0xA
