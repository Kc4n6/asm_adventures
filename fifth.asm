format PE console

include 'win32a.inc'

include 'training.inc'

entry basla

section '.text' readable executable

basla:
	mov eax,4
	mov ecx,5
	sub eax,ecx
	jc label1    ; carry flag set edildiyse jump al	
	jmp label2
label1:
	mov eax,3
	cmp eax,ecx ;Burada eax'den ecx i çıkarır eğer negatif çıkarsa hata olur carry flag set edilir. fakat yukarıdaki örneğin tersine burada eax veya ecx override edilmez.
	jc label2 ; unsigned çalışırken carry önemlidir.
	push 0
	call [ExitProcess]

label2:
	call print_eax
	push 0 
	call [ExitProcess]


;	jbe,je,ja,jae ---> bunları az düşün bulursun. --> ama sadece unsigned integer lardaa geçerli

;	jl,jle,jg,jge ---> bunları da signed da kullan psişik