format PE console

entry basla

include 'win32a.inc'

include 'training.inc'

section '.text' code readable executable

basla:
	mov ecx,5
	call read_hex
	mov ebx,eax
dur:
	push ebx
	dec ebx
	dec ecx
	jnz dur
	mov ecx,5
	jmp yaz
yaz:
	pop eax
	call print_eax
	dec ecx
	jnz yaz
	jmp son

son:
	push 0
	call [ExitProcess]


;HEP SU PUSH INSTRUCTION'INI KULLANMAK ISTEMISTIM BUGUNE NASIPMIS.
