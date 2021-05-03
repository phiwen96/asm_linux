test: test.o
	ld -e start -static test.o -o test

test.o: test.asm
	nasm -f elf64 -g -F stabs test.asm -o test.o