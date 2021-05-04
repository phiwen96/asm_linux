global main

section .data
message: db "hejdå"
len: equ $-message

section .text 



main: 
	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, len
	syscall

%define kiss (x) mov rax, x 

end:
	mov rax, 60
	mov rdi, 0
      syscall   























;loops: db 10