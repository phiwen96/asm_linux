%define byte db ; 8 bits
%define word dw ; 16 bits
%define double dd ; 32 bits
%include "macros.asm"
%macro exit_program 0
	end mov rax, 60 
	mov rdi, 0 
	syscall
%endmacro

global main

section .data
message: byte "hejdå"
length: equ $-message

section .text 



main: 
	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, length
	syscall
	exit_program























;loops: db 10