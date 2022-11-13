	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%s"
	.text
	.globl	main2
	.type	main2, @function
main2:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	movabs	rax, 478560413032
	mov	QWORD PTR -12[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -16[rbp], 5
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	Task@PLT
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
	.size	main2, .-main2
	.section	.rodata
.LC1:
	.string	"input size"
.LC2:
	.string	"%d"
	.align 8
.LC3:
	.string	"input command: \n 1 - read from file \n 2 - read from console\n 3 - Random\n 0 - Testing"
.LC4:
	.string	"r"
.LC5:
	.string	"files/input.txt"
.LC6:
	.string	"%c"
.LC7:
	.string	"0"
.LC8:
	.string	"files/tests.txt"
.LC9:
	.string	"w"
.LC10:
	.string	"files/times.txt"
.LC11:
	.string	"Sum of Time in ms: "
.LC12:
	.string	"files/output.txt"
	.align 8
.LC13:
	.string	"output command: \n 1 - write B to file \n 2 - write B to console"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 208
	mov	DWORD PTR -196[rbp], edi
	mov	QWORD PTR -208[rbp], rsi
	mov	DWORD PTR -12[rbp], 0
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, -180[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -184[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -184[rbp]
	cmp	eax, 1
	jne	.L4
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
.L6:
	lea	rdx, -176[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	lea	rcx, .LC6[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	add	DWORD PTR -4[rbp], 1
.L5:
	mov	eax, DWORD PTR -180[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
.L4:
	mov	eax, DWORD PTR -184[rbp]
	cmp	eax, 2
	jne	.L7
	mov	DWORD PTR -4[rbp], 0
	jmp	.L8
.L9:
	lea	rdx, -176[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
.L8:
	mov	eax, DWORD PTR -180[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L9
.L7:
	mov	eax, DWORD PTR -184[rbp]
	cmp	eax, 3
	jne	.L10
	mov	DWORD PTR -36[rbp], 26
	cmp	DWORD PTR -196[rbp], 1
	jg	.L11
	lea	rax, .LC7[rip]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L12
.L11:
	mov	rax, QWORD PTR -208[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -24[rbp], rax
.L12:
	mov	esi, DWORD PTR -180[rbp]
	lea	rcx, -176[rbp]
	mov	edx, DWORD PTR -36[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	Rand@PLT
.L10:
	mov	eax, DWORD PTR -184[rbp]
	test	eax, eax
	jne	.L13
	mov	eax, DWORD PTR -180[rbp]
	mov	DWORD PTR -188[rbp], eax
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, .LC8[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -32[rbp], rax
	lea	rax, .LC9[rip]
	mov	rsi, rax
	lea	rax, .LC10[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -48[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L14
.L17:
	mov	DWORD PTR -8[rbp], 0
	jmp	.L15
.L16:
	lea	rdx, -176[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	lea	rcx, .LC6[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	add	DWORD PTR -8[rbp], 1
.L15:
	mov	eax, DWORD PTR -180[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L16
	call	clock@PLT
	mov	QWORD PTR -56[rbp], rax
	lea	rdx, -188[rbp]
	lea	rax, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	Task@PLT
	call	clock@PLT
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	edx, eax
	mov	rax, QWORD PTR -48[rbp]
	lea	rcx, .LC2[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	fprintf@PLT
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	add	DWORD PTR -12[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	mov	edi, 10
	call	fputc@PLT
	add	DWORD PTR -4[rbp], 1
.L14:
	cmp	DWORD PTR -4[rbp], 49
	jle	.L17
	lea	rax, .LC11[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L25
.L13:
	lea	rdx, -180[rbp]
	lea	rax, -176[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	Task@PLT
	lea	rax, .LC9[rip]
	mov	rsi, rax
	lea	rax, .LC12[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -48[rbp], rax
	lea	rax, .LC13[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, -184[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -184[rbp]
	cmp	eax, 1
	jne	.L19
	mov	DWORD PTR -4[rbp], 0
	jmp	.L20
.L21:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -176[rbp+rax]
	movsx	eax, al
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	edi, eax
	call	fputc@PLT
	add	DWORD PTR -4[rbp], 1
.L20:
	mov	eax, DWORD PTR -180[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L21
.L19:
	mov	eax, DWORD PTR -184[rbp]
	cmp	eax, 2
	jne	.L22
	mov	DWORD PTR -4[rbp], 0
	jmp	.L23
.L24:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -176[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
.L23:
	mov	eax, DWORD PTR -180[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
.L22:
	mov	eax, 0
.L25:
	leave
	ret
	.size	main, .-main

