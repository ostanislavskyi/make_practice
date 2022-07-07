all: main

main: main.o test1.o test2.o
	gcc main.o test1.o test2.o -o main

test1.o: test1.c
	gcc -c test1.c

test2.o: test2.c
	gcc -c test2.c

main.o: main.c
	gcc -c main.c
	
clean :
	rm -f *.o main