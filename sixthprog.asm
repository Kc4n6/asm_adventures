format PE console

include 'win32a.inc'

include 'training.inc'

entry basla

section '.text' code readable executable

basla:
	mov eax,5
	mov ebx,12
	imul ebx
	call print_eax
	mov ecx,3
	idiv ecx
	shl eax,1
	call print_eax
	shr eax,2
	call print_eax
	
	push 0
	call [ExitProcess]
    


;LEFT SHIFT IS MULTIPLICATION BY 2 --> SAL is complately same instruction with SHL. Becouse shl works for signed and unsigned numbers.
;RIGHT SHIFT IS DIVISION BY 2 --> SAR is alternative for shr but this is sensetive for signed and unsigned numbers. It adds ones or zeros according to sign of the variable.

;ROL AND ROR INSTRUCTIN ROTATES THE REGISTER. ÇEVİRİYOR AGA