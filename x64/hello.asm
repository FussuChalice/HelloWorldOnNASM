; hello.asm
; Simple "Hello, World!" project on NASM x64

extern printf

section .data
	msg		db	"Hello, World!",10,0	; db - size for data, 10 = "\n"

section .bss
	; not used in this project

section .text
	global main				; flag for CPU

	main:
		push rbp			; start application
		mov rbp, rsp

		mov rdi, msg 		; push msg to rdi
		mov rax, 0			; not used xmm registers
		call printf 		; print on console

		mov rsp, rbp 		; close application
		pop rbp
