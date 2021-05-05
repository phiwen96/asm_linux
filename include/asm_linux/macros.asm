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

%define syscall_number_exit 60
%define syscall_number_write 1



%macro exit_program 0
	mov rax, syscall_number_exit 
	mov rdi, 1 ; int status 
	syscall
%endmacro

%macro cout 2
	mov rax, syscall_number_write
	mov arg_0, 1
	mov arg_1, %1
	mov arg_2, %2
	syscall
%endmacro