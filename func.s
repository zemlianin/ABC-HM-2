	.file	"func.c"
	.intel_syntax noprefix
	.text
	.globl	Task
	.type	Task, @function
Task:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 288
	mov	QWORD PTR -280[rbp], rdi
	mov	QWORD PTR -288[rbp], rsi
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L6:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 97
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 101
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 105
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 117
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 121
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 111
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 65
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 73
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 85
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 89
	je	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L4
.L3:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -272[rbp+rax], 48
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -272[rbp+rax], 120
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 15[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 4
	mov	edi, eax
	call	itoh@PLT
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	BYTE PTR -272[rbp+rdx], al
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdq
	shr	edx, 28
	add	eax, edx
	and	eax, 15
	sub	eax, edx
	mov	edi, eax
	call	itoh@PLT
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	mov	BYTE PTR -272[rbp+rdx], al
	add	DWORD PTR -8[rbp], 1
	jmp	.L5
.L4:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -272[rbp+rax], dl
	add	DWORD PTR -8[rbp], 1
.L5:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	rax, QWORD PTR -288[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	rax, QWORD PTR -288[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	lea	rcx, -272[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	strncpy@PLT
	nop
	leave
	ret
	.size	Task, .-Task
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
