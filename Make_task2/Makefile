

ifeq ($(VAR),n)
	RES = n
	include make1.mk make2.mk make3.mk
else ifeq ($(VAR),y)
	RES = y
else
	RES = undefined
	include make2.mk make1.mk make3.mk
endif

main: main.o other_make src1.o src2.o src3.o
	echo "VAR = $(VAR)"
	gcc main.o src1.o src2.o src3.o -o main

other_make:
	@if [ $(RES) = "y" ]; then\
		make -f make1.mk;\
		make -f make2.mk;\
		make -f make3.mk;\
    fi

main.o: main.c
	gcc -c main.c

clean :
	rm -f *.o main