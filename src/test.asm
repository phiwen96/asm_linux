global main

section .text 

main: 
	mov rax, 10

loop:
	dec rax 
	jnz loop


section .data 
loops: db 10


















;loops: db 10