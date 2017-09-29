EXE		= daa2iso
CFLAGS	+= -O2 -s
PREFIX	= /usr/local
BINDIR	= $(PREFIX)/bin
SRC		= ./src/$(EXE).c

all:
	$(CC) $(CFLAGS) -c ./src/LzmaDec.c -o LzmaDec.o
	$(CC) $(CFLAGS) -c ./src/tinflate.c -o tinflate.o
	$(CC) $(SRC) $(CFLAGS) -o ./build/$(EXE) LzmaDec.o tinflate.o

install:
	install -m 755 -d $(BINDIR)
	install -m 755 $(EXE) $(BINDIR)/$(EXE)

.PHONY:
	install
