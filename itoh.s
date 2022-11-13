
	.intel_syntax noprefix 			# Начало новой секции
	.text
	.globl	itoh				# Объявление функции
	.type	itoh, @function
itoh:
	
	push	rbp				# Начало метода
	mov	rbp, rsp
	
	mov	r13d, edi		# Запсиь параметра в стек
	
	cmp	r13d, 9		# Сравнение парамметра с 9
	jg	.L2				# Прыжок в точку 2 
	
	mov	eax, r13d		# Прибавление к параметру смвола 0
	add	eax, 48		
	jmp	.L3
.L2:
	mov	eax, r13d		# Прибавление к парметру символа А
	add	eax, 55
.L3:
	pop	rbp				# Завершение метода
	ret
	.size	itoh, .-itoh
