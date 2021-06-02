; Examble for a simple FASM console program.

format PE console

entry start

include 'win32a.inc'

;=========================================

section '.text' code readable executable

start:
	;Program begins here
	call read_hex ; Reads eax as hex from console
	sub eax,0xffffffff ;eax tan 255 i cikardik.
	xor eax,eax ;eax i kendisiyle xorladik.
	mov ebx,0x11111111 ;ebx e bu sayiyi attik.
	add eax,ebx ; eax ebx i topladik. 
	
	call print_eax ;Prints eax as hex back to the console

	;Exit the process
	push 0
	call [ExitProcess]

include 'training.inc'
