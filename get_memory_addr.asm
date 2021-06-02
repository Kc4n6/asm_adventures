format PE console

include 'win32a.inc'

include 'training.inc'

entry basla

CONSTANT_VARIABLE = 2

section '.data' data readable writeable

	variablex dd CONSTANT_VARIABLE dup (0) ; I can also write the variablex as a label for example look below xd

; variablex:
; 	dd CONSTANT_VARIABLE dup (0) ; This is exactly same thing with the above.

section '.text' code readable executable

basla:
	xor ecx,ecx
dongu:	
	inc ecx
	call read_hex
	mov esi,ecx
	shl esi,2
	add esi,variablex
	mov esi,eax
	cmp ecx,CONSTANT_VARIABLE
	jnz dongu
	mov eax,variablex ; I took the addres value of variablex to eax
	call print_eax	  ; And i printed the addres value
	mov eax,dword [variablex]
	call print_eax
	xor eax,eax
	mov eax,basla	  ; I took the addres value of basla label to eax
	call print_eax    ; And i printed this as well
	xor eax,eax
	mov eax,dongu
	call print_eax	  ; Similiar operation
	push 0
	call [ExitProcess]
