#
# ld options:
#   -Ttext --section-start, specifiy the start address labeled .text
#   -Tdata --section-start, specifiy the start address labeled .data
#

all:
	as -o hello.o hello.s
	ld --oformat binary -Ttext=7c00 -Tdata=7dfe -o hello.bin hello.o

clean:
	rm *.bin *.o
	  
