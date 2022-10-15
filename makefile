CC		 = gcc
CSC		 = C:/Windows/Microsoft.NET/Framework64/v4.0.30319/csc
CFLAGS   = -shared -Os
LFLAGS   = -s -lgdi32

all:
	@mkdir -p ./bin
	$(CC) $(CFLAGS) src\wintweak.c $(LFLAGS) -o bin\wintweak.dll
	$(CSC) /out:bin\cpicker.exe src\cpicker.cs

clean:
	@rm -rvf ./bin
