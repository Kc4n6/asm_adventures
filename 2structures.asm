format PE console 

include 'win32a.inc'

include 'training.inc'

entry start

struct YAPI
	a dd ?
	b dd ?
ends			;We declared the structure and we didnt initialized the variables.

section '.data' data readable executable
	my_var	YAPI	3,4			; We have initialized a sample of structure called YAPI with 3,4 values

section '.text' code readable executable

start:
	mov eax, dword [my_var.b] ; this and
	call print_eax
	mov eax, dword [my_var+YAPI.b] ; this and
	call print_eax
	mov eax, dword [my_var+4] ; this are exactly same expressions. The results of these expressions will be same.
	call print_eax	;Becouse the size of the variables are 4 and YAPI.b is of size 4 byte. 
	push 0
	call [ExitProcess]

