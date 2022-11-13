
	.intel_syntax noprefix
	.text				# Новая область
	.globl	Rand			# Объявление функции
	.type	Rand, @function
Rand:
	
	push	rbp			#  Начало метода
	mov	rbp, rsp
	sub	rsp, 48
	
	
	mov	QWORD PTR -24[rbp], rdi	# Параметры метода кладутся в стек
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	QWORD PTR -40[rbp], rcx
	
	mov	DWORD PTR -8[rbp], 0	# Присвоение переменной н нуля
	
	mov	rdi, QWORD PTR -24[rbp]  # Вызов метода атои
	call	atoi@PLT
	mov	DWORD PTR -8[rbp], eax	# Получение значения метода и запись в эн
	
	mov	edi, DWORD PTR -8[rbp] 	# Загрузка н в регистр и запуск метода
	call	srand@PLT
	
	mov	DWORD PTR -4[rbp], 0    # Присвоение i = 0
	jmp	.L2			#  Прыжок в точку 2
.L3:
	call	rand@PLT		# Вызов метода ранд

	idiv	DWORD PTR -32[rbp]	# Деление
	mov	eax, edx		
	
	lea	ecx, 97[rax]		# Запись значения чара в регистр
	movsx	rdx, DWORD PTR -4[rbp] # Запись парметра цикла в регистр 
	mov	rax, QWORD PTR -40[rbp]	# Запись Адреса массива в рах
	add	rax, rdx		# Получение кординаты текущего элемнта массива
	mov	edx, ecx
	mov	BYTE PTR [rax], dl	# присвоение эелменту массива нового значения
	add	DWORD PTR -4[rbp], 1 	# Параметр цикла + 1
.L2:
	mov	eax, DWORD PTR -4[rbp]	#  Сравнение параметра цикла с перемнной сайз
	cmp	eax, DWORD PTR -28[rbp] 
	jl	.L3			#  Прыжок в точку 3
	
	
	nop
	nop
	
	
	leave				# Покидание метода
	ret
	.size	Rand, .-Rand
	
