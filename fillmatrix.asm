format PE console
include 'win32a.inc'
include 'training.inc'

HEIGHT = 4
WIDTH = 4
entry start

section '.bss' readable writeable

	my_matris dd HEIGHT*WIDTH dup (?)

section '.text' code readable executable

start:
	mov esi,my_matris
	mov ecx,0 ; satirlari bu takip edecek
	mov edx,0
next_row:
	mov eax,4
	mov ebx,0 ; sutunlari bu takip edecek
next_column:
	mov dword [esi],edx
	inc edx
	add esi,4
	inc ebx
	cmp ebx,WIDTH
	jnz next_column

	inc ecx
	cmp ecx,HEIGHT
	jnz next_row

yazdir:
	mov esi, my_matris
	mov ecx,0
nxt_row:
	mov ebx,0 ; satir okuyacak
nxt_column:
	mov eax, dword [esi]
	call print_eax
	add esi,4
	inc ebx
	cmp ebx,WIDTH
	jnz nxt_column

	inc ecx
	cmp ecx,HEIGHT
	jnz nxt_row
	
	push 0
	call [ExitProcess]
