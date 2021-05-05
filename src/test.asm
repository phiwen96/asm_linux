%include "macros.asm"


global main

section .data
message: define_byte "hejdå", 10
length: equ $-message

section .text 



main:
	cout message, length
	exit
























;loops: db 10