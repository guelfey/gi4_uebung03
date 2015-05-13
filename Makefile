complex: complex.o
	gcc -m32 complex.o -o complex

complex.o: complex.asm
	nasm -f elf32 -g -F dwarf complex.asm

a.out: main.o
	gcc -m32 main.o

main.o: main.asm
	nasm -f elf32 -g -F dwarf main.asm

