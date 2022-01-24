# makefile for hello.asm x86 (32 bit)

hello: hello.o
	gcc -m32 -o hello hello.o
hello.o: hello.asm
	nasm -f elf32 hello.asm -l hello.lst
