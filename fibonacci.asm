section .data
	n equ 5

section .text
	global _start
_start:
	mov rdi,n
	call fib
	mov rax,60
	mov rdi,0
	syscall

fib:
	cmp rdi, 0
	jle fib0
	cmp rdi, 1
	je fib1

	mov rax, 0
	mov rbx, 1

looping:
	add rax, rbx
	mov rdx, rbx
	mov rbx, rax
	mov rax, rdx

	dec rdi
	jnz looping

fib0:
	ret

fib1:
	mov rax, 1
	ret
