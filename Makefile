a.out: main.o
	gcc -m32 main.o

main.o: main.asm
	nasm -f elf32 -g -F dwarf main.asm

