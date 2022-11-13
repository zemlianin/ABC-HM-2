# Список изменений
### 1. Удаление ненужных перезаписываний регистров, таких как:

``` 
mov	eax, DWORD PTR -8[rbp]
mov	edi, eax
  ```
  ```
lea	ecx, 97[rax]
mov	eax, DWORD PTR -4[rbp]
movsx	rdx, eax
  ```
  ```
mov	eax, DWORD PTR -4[rbp]
movsx	rdx, eax
```
```
lea	rax, .LC0[rip]
mov	rdi, rax
  ```
  
  ```
  mov	edx, DWORD PTR -8[rbp]
movsx	rdx, edx
  ```
  
  ```
 mov	eax, DWORD PTR -8[rbp]
movsx	rdx, eax
  ```
  
  ```
lea	rax, -184[rbp]
mov	rsi, rax
lea	rax, .LC2[rip]
mov	rdi, rax
  ```
  
  ```
lea	rdx, -188[rbp]
lea	rax, -176[rbp]
mov	rsi, rdx
mov	rdi, rax
  ```
  
  ```
 mov	edx, eax
mov	rax, QWORD PTR -48[rbp]
lea	rcx, .LC2[rip]
mov	rsi, rcx
mov	rdi, rax
  ```
  
  ```
 lea	rax, .LC11[rip]
mov	rsi, rax
  ```
  
  ```
  lea	rax, .LC4[rip]
mov	rsi, rax
lea	rax, .LC5[rip]
mov	rdi, rax
  ```
  
  ```
  mov	rax, QWORD PTR -24[rbp]
lea	rcx, .LC1[rip]
mov	rsi, rcx
mov	rdi, rax
  ```
  
  ```
lea	rax, -184[rbp]
mov	rsi, rax
lea	rax, .LC2[rip]
mov	rdi, rax
```

```
lea	rax, .LC9[rip]
mov	rsi, rax
```

```
lea	rax, .LC12[rip]
mov	rdi, rax
  ```
  
 ### Вместо этого, строка/адрес/переменная записываются напрямую в конечных регистр, без посредника rax или rcx
 ### 2. Удаление кода сгенерированного GCC
 ```
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
```
### 3. Повсеместное удаление макроса cdqe, cdq
### 4. Удаление макроса endbr64
### 5. Оптимизация за счет хранения некторых переменных стека в регистре, среди которых:
## Main.s:


## func.s:

## get-rand-num-func.s:

