format PE console

include 'win32a.inc'
include 'training.inc'

entry start
		; Union expressions allow us to reach a variable with different ways.
		; all variables or structs inside the union points to the same address. Beginning of the union.
		; which allows us to reach using different names.
struct IPV4
	union			;Doesnt have a name
		struct
			a db ? ; in here we declared 4 byte with a,b,c,d names as a struct. and
			b db ?
			c db ?
			d db ?
		ends
		ipwhole dd ? ; we also declared 4 byte with ipwhole as a dword. ipwhole and 'a' show exactly
			     ; same location. So that I can reach spesifically third and second byte. or I can reach whole dword through union.
	ends
ends

section '.data' data readable writeable
	my_ip IPV4	<12,23,21,43> ; Declaration is a bit confusing. You can only declare the first struct or data.
				      ; after declaration all variables or structs point to it.

				      ; I didnt declared ipwhole dword but It also points to begining of union.
section '.text' code readable executable

start:
	xor eax,eax
	mov al, byte [my_ip.a] ; reach like this
	call print_eax
	mov al, byte [my_ip.b] ; reach like this.
	call print_eax
	mov al, byte [my_ip.c] ; reach like this.
	call print_eax
	mov al, byte [my_ip.d] ; reach like this.
	call print_eax
	mov eax, dword [my_ip.ipwhole] ; reach whole register like this.
	call print_eax
	push 0
	call [ExitProcess]

