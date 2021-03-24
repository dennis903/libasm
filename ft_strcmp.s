section .text
	global _ft_strcmp

_ft_strcmp :
	xor rax, rax
	xor rdx, rdx
	xor rcx, rcx
	jmp cmp

cmp :
	mov al, BYTE[rdi + rcx]
	mov dl, BYTE[rsi + rcx]
	cmp al, 0
	je return
	cmp dl, 0
	je return
	cmp al, dl
	jne return
	inc rcx
	jmp cmp

return :
	movzx rax, al
	movzx rdx, dl
	sub rax, rdx
	ret
