%include "macros.asm"


global main

section .data
message: define_byte "hejdå", 10
length: equ $-message

section .text 



main: 
	cout message, length
	mov rbx, message
	mov rax, length

loop:
	mov rax, 3
	push rax
	push 4
	exit_program
























;loops: db 10