; Filename: xor-enc-dec.nasm
; Author: Cole Strickler





global _start


section .text

_start:

	; push null dword

	xor eax, eax
	push eax

	; PUSH //bin/sh ==> 8 bytes
	push 0x68732f2f
	push 0x6e69622f

	mov ebx, esp

	push eax
	mov edx, esp
	push ebx
	mov ecx, esp

	mov al, 11
	int 0x80
