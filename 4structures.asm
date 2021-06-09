format PE console

;burada artık isin seyi cikmaya basliyor. ama mantık aynı pasalar.

include 'win32a.inc'
include 'training.inc'

entry start

struct YAPI1		; anlayacagimiz uzere burada 1. structure tanimlandi
	a dd ?
	b dd ?
ends

struct YAPI2		; burada da 2. structure tanimlandi amaaaa
	c dd 	?
	d YAPI1 ?	;structure icerisinde structure tanimlayabiliyoruz. aynen bu sekilde.
	e YAPI1 ?
ends

section '.data' data readable writeable
	degiskenim     YAPI2 	2,<3,4>,<5,6> ; struct ici structlari initialize etmek icin <> arasinda degerlerini yaz

section '.text' code readable executable

start:
	mov eax, [degiskenim.c] ; burada c zaten dword oldugu icin bu sekilde ulasabiliriz.
	call print_eax
	mov eax, [degiskenim.d.a] ; burada d bir YAPI1 sample'i oldugu icin icersindeki degiskenlere bu sekil ulasiyoruz.
	call print_eax
	mov eax, [degiskenim.e.b]
	call print_eax
	mov eax, sizeof.YAPI2 ; buradan da size'ini aliyoruz her turluuuuuu.
	call print_eax
	push 0
	call [ExitProcess]

