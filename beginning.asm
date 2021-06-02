format PE console 
entry asd

include 'WIN32A.INC'

section '.text' code readable executable

asd:

	inc eax
	inc ebx
	inc edx
	dec eax
	xor eax,eax

	push 0
	call [ExitProcess]

section '.idata' import data readable

library kernel,'kernel32.dll'

import kernel,\
	ExitProcess,'ExitProcess'