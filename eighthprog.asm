format PE console

include 'win32a.inc'
include 'training.inc'

entry basla

section '.data' data readable writeable

	degiskenler	dd 5 dup (0)

section '.text' code readable executable

basla:
	mov ecx,5

degiskenleri_oku:
	dec ecx
	xor eax,eax
	call read_hex
	mov esi,ecx
	shl esi,2
	add esi,degiskenler

	mov dword [esi],eax
	test ecx,ecx
	jnz degiskenleri_oku

	xor ecx,ecx
	mov edi,5; ediye 5 attik cunku ecx 5 e kadar iterate edilecek. 5 ile karsilastirip dur diyecegiz :D.
degiskenleri_yaz:
	
	mov esi,ecx
	shl esi,2
	add esi,degiskenler
	mov eax,dword [esi]
	call print_eax
	inc ecx
	cmp edi,ecx
	jnz degiskenleri_yaz
	jmp sonlandir

sonlandir:
	push 0
	call [ExitProcess]
