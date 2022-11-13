	.intel_syntax noprefix
	.text				# Начало новой секции 
	.section	.rodata		# Объявление строк
.LC0:
	.string	"input size"
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"input command: \n 1 - read from file \n 2 - read from console\n 3 - Random\n 0 - Testing"
.LC3:
	.string	"%s"
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
	.globl	main			# Объявление функции мэйн
	.type	main, @function
main:
	push	rbp			# Начало метода
	mov	rbp, rsp
	sub	rsp, 208
	
	mov	r14d, edi 		# Запись параметров в стек
	mov	r15, rsi
	
	mov	DWORD PTR -12[rbp], 0 	# Запись 0 в стек
	
	lea	rax, .LC0[rip]		# Запись параметров метода принт в регистр
	mov	rdi, rax
	call	puts@PLT		# Вызов принт
	
	lea	rsi, -180[rbp]		# Запись параметров метода скан в регистр и вызов метода скан
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	
	lea	rsi, .LC2[rip]		# Запись параметров метода принт в регистр и вызов принт 
	lea	rdi, .LC3[rip]
	mov	eax, 0
	call	printf@PLT
	
	
	lea	rsi, -184[rbp]
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT	# Запись параметров метода скан в регистр и вызов метода скан
	
	mov	eax, DWORD PTR -184[rbp]	# Запись комманд в регистр	
	cmp	eax, 1				#  Сравнение комманд с 1
	jne	.L2				#  При неравенстве прыжок в точку 2
	
	lea	rsi, .LC4[rip]			# ЗАпись параметров в регситры
	lea	rdi, .LC5[rip]
	call	fopen@PLT			# Вызов метода открытия потока
	
	mov	QWORD PTR -32[rbp], rax		# Запись результата работы метода в переменную  инпут
	mov	DWORD PTR -4[rbp], 0		# Присвоение параметру цикла 0
	jmp	.L3
.L4:
	lea	rdx, -176[rbp]			# Запись адреса массива А в регистр
	mov	eax, DWORD PTR -4[rbp]		# Запись параметра в регистр
	add	rdx, rax			# Получение значения элеммента с индексом ай
	mov	rdi, QWORD PTR -32[rbp]

	lea	rcx, .LC6[rip]			# Запись параметров метода скан в регистры
	mov	rsi, rcx
	mov	eax, 0
	call	__isoc99_fscanf@PLT		# Вызов метода скан
	
	add	DWORD PTR -4[rbp], 1		# Счетчик цикла++
.L3:
	mov	eax, DWORD PTR -180[rbp]	# Запись переменной сайз в регистр
	cmp	DWORD PTR -4[rbp], eax		# Сравнение ее с параметром цикла
	jl	.L4				# Прыжок в тточку 4
.L2:
	mov	eax, DWORD PTR -184[rbp]	# Запись комманд в регистр
	cmp	eax, 2				# Сравнение комманд с 2
	jne	.L5
	mov	DWORD PTR -4[rbp], 0		# Присвоение переменной ай 0
	jmp	.L6
.L7:
	lea	rdx, -176[rbp]			# Запись адреса массива А в регистр
	mov	eax, DWORD PTR -4[rbp]
	add	rax, rdx			# Получение текущего элемента массива
	mov	rsi, rax			# Запись результата в регистр
	
	
	lea	rax, .LC6[rip]			# Запись параметров метода скан в регситр
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT		# Вызов метода скан
	
	add	DWORD PTR -4[rbp], 1		# ай++
.L6:
	mov	eax, DWORD PTR -180[rbp]	# Запись сайз в регистр
	cmp	DWORD PTR -4[rbp], eax		# Сравнение параметра цикла с сайз
	jl	.L7
.L5:
	mov	eax, DWORD PTR -184[rbp]	# Сравнить комманд с 3
	cmp	eax, 3
	jne	.L8
	mov	DWORD PTR -36[rbp], 26		# Рэндж = 26
	cmp	r14d, 1		# Сравнить колличестов переданных в мэйн параметров с 1
	jg	.L9
	lea	rax, .LC7[rip]			# Запись в параметр рандом строчки 0
	mov	QWORD PTR -24[rbp], rax
	jmp	.L10
.L9:
	mov	rax, r15
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -24[rbp], rax		# Запись в параметр рандома параметр запуска
.L10:
	mov	esi, DWORD PTR -180[rbp]	# ЗАпись параметров метода ранд в регитсры
	lea	rcx, -176[rbp]
	mov	edx, DWORD PTR -36[rbp]
	mov	rdi, QWORD PTR -24[rbp]
	call	Rand@PLT			# Запучк метода ранд
.L8:
	mov	eax, DWORD PTR -184[rbp]	# Запись комманд в регистр и сранение его с 0
	test	eax, eax
	jne	.L11
	
	mov	eax, DWORD PTR -180[rbp]	# СайзН = Сайз
	mov	DWORD PTR -188[rbp], eax	
	
	lea	rsi, .LC4[rip]			#  Запись параметров в регистр и запуск метода открытия потока
	lea	rdi, .LC8[rip]
	call	fopen@PLT			
	
	mov	QWORD PTR -32[rbp], rax		# Запись результата метода открытия потка в переменную инпут
		
	lea	rsi, .LC9[rip]			# Запуск метода открытия потока
	lea	rdi, .LC10[rip]
	call	fopen@PLT
	
	mov	QWORD PTR -48[rbp], rax		#  Запуск метода открытия потока вывода и запись результата в аутпут
	
	mov	DWORD PTR -4[rbp], 0		#  Значение парметра цикла = 0
	jmp	.L12
.L15:	
	mov	DWORD PTR -8[rbp], 0		#  Значение жи = 0
	jmp	.L13
.L14:
	lea	rdx, -176[rbp]
	mov	eax, DWORD PTR -4[rbp]
	add	rdx, rax			#  Расчет значения элемента массива А
	mov	rdi, QWORD PTR -32[rbp]		#  Запись инпут в регистр
	
	lea	rsi, .LC6[rip]			# Запись параметров метода скан в регистр и запуск метода скан
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	
	add	DWORD PTR -8[rbp], 1		# жи++
.L13:
	mov	eax, DWORD PTR -180[rbp]	#  Запись сайз в регистр
	cmp	DWORD PTR -8[rbp], eax		#  Сравнение сайз с жи
	jl	.L14
	
	call	clock@PLT			#  Запуск метода клок
	mov	QWORD PTR -56[rbp], rax		#  Запись результата в бегин
	lea	rsi, -188[rbp]			# Запись параметров в регистры
	lea	rdi, -176[rbp]
	call	Task@PLT			#  Вызов метода таск
	call	clock@PLT			#  Вызов метода клок
	mov	QWORD PTR -64[rbp], rax		#  Запись результата клок в енд
	
	mov	edx, eax			#  Нахождениие разности между енд и бегин
	mov	rax, QWORD PTR -56[rbp]
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	
	mov	edx, eax			
	
	mov	rdi, QWORD PTR -48[rbp]
	lea	rsi, .LC1[rip]
	mov	eax, 0
	call	fprintf@PLT			# Запуск метода принт
	
	mov	edx, QWORD PTR -64[rbp]		# Нахождение разности между енд и бегин
	mov	ecx, QWORD PTR -56[rbp]
	sub	edx, ecx			
	
	add	DWORD PTR -12[rbp], edx		# Прибавить к сумме времен новое время
	
	mov	rsi, QWORD PTR -48[rbp]		# Заполнении регистров и вызов принт	
	mov	edi, 10
	call	fputc@PLT
	
	add	DWORD PTR -4[rbp], 1		# Параметр цикла++
.L12:
	cmp	DWORD PTR -4[rbp], 49		# Сравнение параметра с 50
	jle	.L15
	
	lea	rsi, .LC11[rip]			# Заполнение регистров параметрами
	lea	rdi, .LC3[rip]
	mov	eax, 0
	call	printf@PLT			# Вызов принт
	
	mov	esi, DWORD PTR -12[rbp]		# Заполнение регистров параметрами
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT			# Вызов принт
	
	mov	eax, 0
	jmp	.L23				# Прыжок в конец программы 
.L11:
	lea	rsi, -180[rbp]			# Запись массива и сайз в регистр
	lea	rdi, -176[rbp]
	call	Task@PLT			# Запуск метода таск
	
	lea	rsi, .LC9[rip]			# Запись параметров в регистры
	lea	rdi, .LC12[rip]			
	call	fopen@PLT			# Открытие потока
	mov	QWORD PTR -48[rbp], rax		# Запись потока в аутпут
	
	lea	rdi, .LC13[rip]			# Запуск метода принт
	call	puts@PLT
	
	lea	rsi, -184[rbp]			#  Запись параметров в регистры
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT		#  Запуск метода скан
	
	mov	eax, DWORD PTR -184[rbp]	# Сравнение комманд с 1
	cmp	eax, 1
	jne	.L17
	mov	DWORD PTR -4[rbp], 0		#  Присвоить параметру 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -4[rbp]
	movzx	eax, BYTE PTR -176[rbp+rax]	# Расчет адреса текущего элемента массива
	movsx	edi, al				# Запись парметров метода принт в регситр
	mov	rsi, QWORD PTR -48[rbp]
	call	fputc@PLT			# Вызов метода принт
	add	DWORD PTR -4[rbp], 1		# Параметр цикла++
.L18:
	mov	eax, DWORD PTR -180[rbp]	# Сравнение сайз с параметром цикла
	cmp	DWORD PTR -4[rbp], eax
	jl	.L19
.L17:
	mov	eax, DWORD PTR -184[rbp]	# Запись комманд в регистр
	cmp	eax, 2				# Сравнение команд с цифрой 2
	jne	.L20
	mov	DWORD PTR -4[rbp], 0		# Обнуление параметра цикла
	jmp	.L21
.L22:
	mov	eax, DWORD PTR -4[rbp]		# Запись параметров в регистры
	movzx	eax, BYTE PTR -176[rbp+rax]
	movsx	edi, al
	call	putchar@PLT			# Вызов метода печати символов
	
	add	DWORD PTR -4[rbp], 1		# Параметр цикла++
.L21:
	mov	eax, DWORD PTR -180[rbp]	# Сравнение параметра цикла с сайз
	cmp	DWORD PTR -4[rbp], eax
	jl	.L22
.L20:
	mov	eax, 0
.L23:
	leave
	ret
	.size	main, .-main
