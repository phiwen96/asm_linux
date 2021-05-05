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

%define fd_stdout 1 ; file descriptor 1: Standard Output
%define fd_stdin 0 ; file descriptor 0: Standard Input



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


/*
####################################################
"Scratch" registers, any function is allowed 
to overwrite, and use for anything you want 
without asking anybody.
####################################################
*/
%define scratch_0 rax 
%define scratch_1 rcx 
%define scratch_2 rdx 
%define scratch_3 rsi 
%define scratch_4 rdi 
%define scratch_5 r8
%define scratch_6 r9
%define scratch_7 r10 
%define scratch_8 r11 

/*
####################################################
"Preserved" registers have to be put back 
("save" the register) if you use them.
####################################################
*/

%define preserved_0 rbx 
%define preserved_1 rsp
%define preserved_2 rbp 
%define preserved_3 r12
%define preserved_4 r13 
%define preserved_5 r14
%define preserved_6 r15 

; %macro 
; 	push rax 
; 	push rdi 
; 	; push 
; %endmacro

