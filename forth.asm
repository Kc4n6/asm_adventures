

format PE console 

entry start

include 'win32a.inc'
include 'training.inc'

section '.text' code readable executable


start:
	mov eax,5
bolum:
	call print_eax
	dec eax
	jnz bolum
	xor ebx,ebx
	jmp son
son:
	mov eax,1
	inc ebx
	push eax
	mov eax,ebx
	call print_eax
	pop eax
	call print_eax
	sub eax,ebx
	js enson
	push eax
	mov eax,ebx
	call print_eax
	pop eax
	call print_eax
	jmp son
enson:
	push 0
	call [ExitProcess]
	
	
		
	