format PE console

include 'win32a.inc'

include 'training.inc'

entry basla

;###section '.data' data readable writeable

;###	degiskenler	dd 5 dup (0)

section '.bss' readable writeable

	degiskenler	dd 5 dup (?)

section '.text' code readable executable

basla:
	mov esi,degiskenler
	add esi,10000
	mov dword [esi],13 ; trying to write something
	push 0
	call [ExitProcess]


; Lets talk about what we learned in this example..

; In declaration of '.data' section we allocated 5 dword from memory. And in '.text'(code section) we tried to
; write out of our allocation. And acces violation error raised. That means we cant write where we dont have access
; Another earning is uninitialized allocation. If you declare a section without specifying data like we did in '.bss'
; section, Operating system is not going to initialize the allocation during the assembly. When we declare a uninit
; variable we should write ? inside brackets becouse when we initialize a variable, OS assigns the char inside the 
brackets. If we write (?) OS understands that we dont want to initialize the allocation. 
