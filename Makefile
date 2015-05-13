main: main.o
	gcc -m32 main.o

main.o:
	nasm -f elf32 -g -F dwarf main.asm

