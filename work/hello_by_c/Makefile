all:
	gcc crt.s -c
	gcc hello.c -c -m32 -masm=intel
	ld -T simple.ls crt.o hello.o -o boot.bin

clean:
	rm *.o
