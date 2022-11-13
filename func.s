
	.intel_syntax noprefix
	.text				# Объявление новой области
	.globl	Task
	.type	Task, @function
Task:
	
	push	rbp			# Начало метода
	mov	rbp, rsp
	sub	rsp, 288
	
	
	mov	r8, rdi	# Запись *array
	mov	r9, rsi	# Запись *size
	
	mov	r10d, 0		# Объявление переменных жи и каррент
	mov	r11d, 0
	
	jmp	.L2				# Прыжок в точку 2
.L6:
	movsx	rdx, r11d		# Запись параметра в регистр
	
	mov	rax, r8	# Расчет текущего элемнета массива
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]		# Сравнение элемента массива с символом гласной буквы
	cmp	al, 97				# Если совпадение, то прыжок в точку 3
	je	.L3
	
	mov	eax, r11d	# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 101
	je	.L3
	
	mov	eax, r11d		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 105
	je	.L3
	
	mov	eax, r11d		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 117
	je	.L3
	
	mov	eax, r11d		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 121
	je	.L3
	
	mov	eax, r11d	# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 111
	je	.L3
	
	mov	eax, r11d		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 65
	je	.L3
	
	mov	eax, r11d		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	je	.L3
	
	mov	eax, r11d	# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 73
	je	.L3
	
	mov	eax, r11d	# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 85
	je	.L3
	
	mov	eax, r11d		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 89
	je	.L3
	
	mov	eax, r11d 		# Получение элемента массива и сравнение с символом гласной, 
	movsx	rdx, eax			# если нет совпадения то прыжок на точку 4
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L4

.L3:
	movsx	rdx, r11d		# Получение текущего элемнта массива
	mov	rax, r8
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]		# Преобразование типа
	movsx	eax, al
	mov	r12d, eax		# Запись в переменную код
	
	mov	eax, r10d	# Запись в элемента символа 0
	mov	BYTE PTR -272[rbp+rax], 48
	
	add	r10d, 1		# Карент++
	
	mov	eax, r10d
	mov	BYTE PTR -272[rbp+rax], 120	# Запись в элемент символа х
	
	add	r10d, 1		# Карент++
	
	mov	eax, r12d		# Запись переменной код в регистр
	
	lea	edx, 15[rax]			# Заполнение регистров и вызов метода перевода  системы исчисления
	test	eax, eax			# Деление на 16 и запись в регистры
	cmovs	eax, edx
	sar	eax, 4
	mov	edi, eax
	call	itoh@PLT
	
	movsx	rdx, r10d		# Получение элемента массива с индексом каррент
	mov	BYTE PTR -272[rbp+rdx], al
	
	add	r10d, 1		# Каррент++
	mov	eax, r12d		# Запись элемента массив а в регистр
	
	shr	edx, 28				# Деление на 16 и запись результата в регистры
	add	eax, edx
	and	eax, 15
	sub	eax, edx
	mov	edi, eax
	call	itoh@PLT			# Запуск метода перевод системы исчисления
	
	
	movsx	rdx, r10d		# Получение элемента с индексом каррент
	mov	BYTE PTR -272[rbp+rdx], al	# Запись результата работы функции в элемент массива
	
	add	r10d, 1		# Каррент++
	jmp	.L5
.L4: 
	movsx	rdx, r11d 	
	mov	rax, r8
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]		# Получение элемента ммасива с кординатой жи
	mov	eax, r10d
	mov	BYTE PTR -272[rbp+rax], dl 	# Запись в элемент массива б значения из эррэй
	
	add	r10d, 1		# Карент++
.L5:
	add	r11d, 1		# Жи++
.L2:						
	mov	rax, r9				# Запись адреса сайз в регситр
	mov	eax, DWORD PTR [rax]		
	cmp	r11d, eax		# Сравнение сайз и параметра цикла 
	jl	.L6
	mov	rax, r9
	
	mov	edx, r10d	# Присвоение сайзу каррента
	mov	DWORD PTR [rax], edx
	
	movsx	rdx, r10d	# Запись параметров в регистры
	lea	rcx, -272[rbp]
	mov	rax, r8
	mov	rsi, rcx
	mov	rdi, rax
	
	call	strncpy@PLT			# Вызов метода копирования строк
	
	
	nop					# Выход из метода
	leave
	ret
	.size	Task, .-Task

