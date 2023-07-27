section .data
section .text
	global _start

_start:
	mov rdi,8
	call integerToAscii

	mov rax,60
	mov rdi,0
	syscall
integerToAscii:
	mov rax, rdi
	add rax, '0'
	ret
