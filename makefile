all: a

# a: a.o
# 	gcc -m32 -Wall -g a.o -o a

a: a.o
	ld -m elf_i386 a.o -o a

a.o: a.s
	nasm -f elf -w+all -g a.s -l a.lst -o a.o

.PHONY: clean

clean: 
	rm -f *.o a *.lst