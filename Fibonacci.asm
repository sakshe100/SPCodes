segment .data
num dd 5

segment .txt
global _start

_start:
	mov rdi,[num]
	call fibonacci
	mov rax,60
	xor rdi,rdi
	syscall

fibonacci:
	push rbp
	mov rbp,rsp
	mov rax,qword [rbp+16]
	cmp rax,1
	jbe return_num

	push rax
	dec rax
	call fibonacci
	pop rax
	mov rbx,rax
	dec rax
	call fibonacci
	add rax,rbx

	return_num
	mov rsp,rbp
	pop rbp
	leave
	ret



