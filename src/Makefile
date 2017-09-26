EXE		= daa2iso
CFLAGS	+= -O2 -s
PREFIX	= /usr/local
BINDIR	= $(PREFIX)/bin
SRC		= $(EXE).c

all:
	$(CC) $(CFLAGS) -c LzmaDec.c
	$(CC) $(CFLAGS) -c tinflate.c
	$(CC) $(SRC) $(CFLAGS) -o $(EXE) LzmaDec.o tinflate.o

install:
	install -m 755 -d $(BINDIR)
	install -m 755 $(EXE) $(BINDIR)/$(EXE)

.PHONY:
	install
