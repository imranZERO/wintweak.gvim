BIN	     = ./bin/wintweak.dll
SRC      = src/wintweak.c
CC		 = gcc
CFLAGS   = -shared -Os
LFLAGS   = -s -lgdi32

all:
	@mkdir -p ./bin
	$(CC) $(CFLAGS) $(SRC) $(LFLAGS) -o $(BIN)

clean:
	$(RM) $(BIN)
