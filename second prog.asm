; Examble for a simple FASM console program.

format PE console

entry start

include 'win32a.inc'

;=========================================

section '.text' code readable executable

	
start:
	mov eax,0 ; eax e 0 yaz
	jmp my_label
my_label:
	inc eax
	test eax,3
	call print_eax
	jnz my_label
	;Exit the process
	push 0
	call [ExitProcess]

include 'training.inc'
