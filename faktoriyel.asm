format PE console

entry basla

include 'win32a.inc'

include 'training.inc'

section '.text' code readable executable

basla:
	call read_hex
	mov ecx,eax
	xor eax,eax
fonk:
	add eax,ecx
	dec ecx
	jnz fonk
	jz fonk1
fonk1:
	call print_eax
	push 0
	call [ExitProcess]

MOVZX --> extends the register with zeros. We should use this while working with unsigned numbers
MOVSX --> extends the register with ones. We should use this while working with signed numbers..
	acctually MOVSX understands the sign and work according to the sign. İf highest git of the register
	is zero, its going to add zeros. Otherwise its going to add ones.


CBW --> Convert byte to word. But it doesn't take argument. It always extends al to ax.

CWDE --> Convert word to double word. It also doesnt take argument. It always extends ax to eax.



CWD --> this extends the AX like CWDE but there is something different. The difference is, CWD extends AX to DX:EX.
	It doesnt effect EAX. It effects only ax and dx :D

CDQ --> This instruction doesnt take argument as well. It extends doubleword to quadword. In other words, it extends
	eax to edx:eax. 

!!!!This four instructions which we can see above, check the most significant bit and add the ones or zeros.  


	
	