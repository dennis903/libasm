section	.data
	msg db "hello", 0x0A, 0x00

section .text
	global _main

_main :
	mov rax, 1
	mov rbp, 0
	mov rsp, rbp
	sub rsp, 7
	mov rdi, 1
	mov rsi, msg
	mov rdx, 7
	syscall
	mov rax, 60
	mov rdi, 0
	syscall
