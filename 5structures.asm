format PE console 

include 'win32a.inc'
include 'training.inc'

entry start

struct YAPI		;Instead of calling a structure from inside of another structure we can define a structure 
			;inside of another structure like we did below. Calling is also easy. 
	struct		;This structure doesn't have a name. I can call it using YAPI expression. 
		a db ?
		b db ?
		c db ?
		  db ?  ; this variable doesn't have a name like the structure but it holds place in the memory
			; which means it can be reached and be changed.
	ends
	d dd ?		; reaching method is not different with the above but this is not inside anonymus struct
ends

section '.data' data readable writeable ; Pay attention. How I initialized the structure variables.
	my_sample YAPI <1,2,3,4>,5

section '.text' code readable executable

start:
	xor eax,eax	; first i xored eax becouse I'm going to assign byte to eax and I can do this with only al or
			; ah. al is enough. I wanted to clear eax to avoid confusions.
	mov al, byte [my_sample.a] ; assign a(1) to al
	call print_eax
	mov al, byte [my_sample.b] ; assign b(2) to al
	call print_eax
	mov al, byte [my_sample.c+1] 	; This placeholder doesnt have a name but we assigned 4 value to it.
					; We can reach it without name. We know we can reach it with adding 1 to 
					; address of my_sample.c. And we did it biçız
					; we can use also byte [my_sample.c+ YAPI.c]
	call print_eax
	mov eax, dword [my_sample.d]	; We reached my_sample d like we did for ananymus structure variables. There
					; there is no difference...
	call print_eax
	push 0
	call [ExitProcess]
