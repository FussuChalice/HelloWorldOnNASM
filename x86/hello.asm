; hello.asm
; Simple "Hello, World!" project on NASM x86 (32)

extern printf

section .data
	msg		db	"Hello, World!",10,0	; db - size for data, 10 = "\n"

section .bss
	; not used in this project

section .text
	global main				; flag for CPU

	main:
		push ebp			; start application
		mov ebp, esp

		push msg
		call printf 		; print on console

		mov esp, 4			; exit
		leave
		ret