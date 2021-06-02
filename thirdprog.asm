format PE console 

entry start

include 'win32a.inc'

section '.text' code readable executable


start:
	mov eax,0xa
	mov ebx,2
	
my_label:
	call print_eax ; eax i yazdirrr.
	sub eax,ebx
	jnz my_label
	
	push 0
	call [ExitProcess]
include 'training.inc'
	  