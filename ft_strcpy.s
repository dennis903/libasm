section .text
	global _ft_strcpy

_ft_strcpy :
	xor rax, rax
	xor rdx, rdx
	jmp loop

loop :
	cmp BYTE[rsi + rax], 0
	jz return

copy :
	mov dl, BYTE[rsi + rax]
	mov BYTE[rdi + rax], dl
	inc rax
	jmp loop

return :
	mov BYTE[rdi + rax], 0
	mov rax, rdi
	ret