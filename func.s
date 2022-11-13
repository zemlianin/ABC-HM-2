
	.intel_syntax noprefix
	.text				# Объявление новой области
	.globl	Task
	.type	Task, @function
Task:
	
	push	rbp			# Начало метода
	mov	rbp, rsp
	sub	rsp, 288
	
	
	mov	QWORD PTR -280[rbp], rdi	# Запись Параметров в стек
	mov	QWORD PTR -288[rbp], rsi
	
	mov	DWORD PTR -8[rbp], 0		# Объявление переменных жи и каррент
	mov	DWORD PTR -4[rbp], 0
	
	jmp	.L2				# Прыжок в точку 2
.L6:
	movsx	rdx, DWORD PTR -4[rbp]		# Запись параметра в регистр
	
	mov	rax, QWORD PTR -280[rbp]	# Расчет текущего элемнета массива
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]		# Сравнение элемента массива с символом гласной буквы
	cmp	al, 97				# Если совпадение, то прыжок в точку 3
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 101
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 105
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 117
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 121
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 111
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 65
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 73
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 85
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной
	movsx	rdx, eax
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 89
	je	.L3
	
	mov	eax, DWORD PTR -4[rbp]		# Получение элемента массива и сравнение с символом гласной, 
	movsx	rdx, eax			# если нет совпадения то прыжок на точку 4
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L4

.L3:
	movsx	rdx, DWORD PTR -4[rbp]		# Получение текущего элемнта массива
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]		# Преобразование типа
	movsx	eax, al
	mov	DWORD PTR -12[rbp], eax		# Запись в переменную код
	
	mov	eax, DWORD PTR -8[rbp]		# Запись в элемента символа 0
	mov	BYTE PTR -272[rbp+rax], 48
	
	add	DWORD PTR -8[rbp], 1		# Карент++
	
	mov	eax, DWORD PTR -8[rbp]
	mov	BYTE PTR -272[rbp+rax], 120	# Запись в элемент символа х
	
	add	DWORD PTR -8[rbp], 1		# Карент++
	
	mov	eax, DWORD PTR -12[rbp]		# Запись переменной код в регистр
	
	lea	edx, 15[rax]			# Заполнение регистров и вызов метода перевода  системы исчисления
	test	eax, eax			# Деление на 16 и запись в регистры
	cmovs	eax, edx
	sar	eax, 4
	mov	edi, eax
	call	itoh@PLT
	
	movsx	rdx, DWORD PTR -8[rbp] 		# Получение элемента массива с индексом каррент
	mov	BYTE PTR -272[rbp+rdx], al
	
	add	DWORD PTR -8[rbp], 1		# Каррент++
	mov	eax, DWORD PTR -12[rbp]		# Запись элемента массив а в регистр
	
	shr	edx, 28				# Деление на 16 и запись результата в регистры
	add	eax, edx
	and	eax, 15
	sub	eax, edx
	mov	edi, eax
	call	itoh@PLT			# Запуск метода перевод системы исчисления
	
	
	movsx	rdx, DWORD PTR -8[rbp]		# Получение элемента с индексом каррент
	mov	BYTE PTR -272[rbp+rdx], al	# Запись результата работы функции в элемент массива
	
	add	DWORD PTR -8[rbp], 1		# Каррент++
	jmp	.L5
.L4: 
	movsx	rdx, DWORD PTR -4[rbp]	 	
	mov	rax, QWORD PTR -280[rbp]
	add	rax, rdx
	movzx	edx, BYTE PTR [rax]		# Получение элемента ммасива с кординатой жи
	mov	eax, DWORD PTR -8[rbp]
	mov	BYTE PTR -272[rbp+rax], dl 	# Запись в элемент массива б значения из эррэй
	
	add	DWORD PTR -8[rbp], 1		# Карент++
.L5:
	add	DWORD PTR -4[rbp], 1		# Жи++
.L2:						
	mov	rax, QWORD PTR -288[rbp]	# Запись адреса сайз в регситр
	mov	eax, DWORD PTR [rax]		# Запсиь значения сайз в регистр
	cmp	DWORD PTR -4[rbp], eax		# Сравнение сайз и параметра цикла 
	jl	.L6
	mov	rax, QWORD PTR -288[rbp]
	
	mov	edx, DWORD PTR -8[rbp]		# Присвоение сайзу каррента
	mov	DWORD PTR [rax], edx
	
	movsx	rdx, DWORD PTR -8[rbp]		# Запись параметров в регистры
	lea	rcx, -272[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	
	call	strncpy@PLT			# Вызов метода копирования строк
	
	
	nop					# Выход из метода
	leave
	ret
	.size	Task, .-Task

