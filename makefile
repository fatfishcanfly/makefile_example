CC = gcc
CFLAGS = -g -O -Wall
 
OBJ := add.o sub.o main.o
TOPDIR := $(PWD)
OBJDIR := $(TOPDIR)/obj
BINDIR := $(TOPDIR)/bin
BIN := main
 
SUBDIR :=  add sub main obj
OBJHEAD := $(TOPDIR)/add/add.h $(TOPDIR)/sub/sub.h
OBJLINK := --std=c99
 
export CC TOPDIR OBJDIR BINDIR BIN OBJLINK OBJ
 
all:CHECKDIR $(SUBDIR)
CHECKDIR:
	mkdir -p $(SUBDIR) $(BINDIR)
$(SUBDIR):RUN
	make -C $@
RUN:
	
clean:
	rm -rf $(OBJDIR)/*.o $(BINDIR)
