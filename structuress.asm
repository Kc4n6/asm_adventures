format PE console

include 'win32a.inc'

include 'training.inc'

entry start

struct PNT		;C deki structure lar gibi pasasi. degisken adi turu ve initialization state
	x dd ?
	y dd ?
ends			;Zaten syntax da basit hallolur yani xd.

section '.bss' readable writeable

	point	PNT	?	;Burada turu olarak dd dw db vermedik bunun yerine structure adini verdik. 

section '.text' code readable executable

start:
	mov dword [point.x],3	; cagirilisi da bu kadar basitttttt.....
	mov dword [point.y],4	; aha bu da bir cagirilis ornegiiiii......
	mov eax, dword [point.x]
	call print_eax
	mov eax, dword [point.y]
	call print_eax
	push 0
	call [ExitProcess]

