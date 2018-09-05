CC = gcc
EXE = daa2iso
CFLAGS += -O2 -s
PREFIX = /usr
BINDIR = $(PREFIX)/bin
SRC = src/$(EXE).c
INSTALL = install 

VPATH = .:src
vpath . src

all: daa2iso
#	$(CC) $(CFLAGS) -c src/LzmaDec.c -o LzmaDec.o
#	$(CC) $(CFLAGS) -c src/tinflate.c -o tinflate.o
#	$(CC) $(SRC) $(CFLAGS) -o build/$(EXE) LzmaDec.o tinflate.o
#
daa2iso: daa2iso.o LzmaDec.o tinflate.o
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

install:
	$(INSTALL) -m 755 -d $(BINDIR)
	$(INSTALL) -m 755 $(EXE) $(BINDIR)/$(EXE)

.PHONY:
	$(INSTALL)
