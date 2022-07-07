SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))
BIN = main

all: $(BIN)

$(BIN): $(OBJ)
	gcc $^ -o $@

$(OBJ): $(SRC)
	gcc -c $^

clean :
	rm -f *.o $(BIN)