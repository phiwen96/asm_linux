; RAX 	System call number
; RDI 	1st argument
; RSI 	2nd argument
; RDX 	3rd argument
; RCX 	4th argument
; R8 	5th argument
; R9

%define arg_0 rdi
%define arg_1 rsi
%define arg_2 rdx
%define arg_3 rcx
%define arg_4 r8
%define arg_5 r9

%define define_byte db ; 8 bits
%define define_word dw ; 16 bits
%define define_double dd ; 32 bits

%define sys_exit 60
%define sys_write 1
%define sys_read 2

%define fd_stdout 1



%macro exit 0
	mov rax, sys_exit 
	mov rdi, 0 ; int status 
	syscall
%endmacro

%macro cout 2
	mov rax, sys_write
	mov arg_0, fd_stdout
	mov arg_1, %1
	mov arg_2, %2
	syscall
%endmacro