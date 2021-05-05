%include "macros.asm"


global _start

section .data
message: define_byte "hejdå", 10
length: equ $-message
loop: db '0 >>', 10
loop_length equ $-loop

section .text 

_start:

	


	mov rbx, 999

printloop:
	cout(loop, loop_length)
	mov rbx, loop
	inc byte [rbx]
	cmp byte [rbx], '9'
	; popad
	jle printloop
	
	

	exit