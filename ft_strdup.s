section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc

_ft_strdup:
	push rdi
	call _ft_strlen
	add rax, 1
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je return
	mov rdi, rax
	pop rsi
	call _ft_strcpy
	jmp return

return :
	ret