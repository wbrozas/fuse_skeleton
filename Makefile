# ################################################################
# Makefile
# ################################################################


CC = gcc
CFLAGS = `pkg-config fuse --cflags --libs`


all: fusefs

debug:
	make DEBUG=TRUE

fusefs: fusefs.c
	$(CC) $(CFLAGS) -o fusefs fusefs.c

ifeq ($(DEBUG), TRUE)
CC += -g
endif
clean:
	rm -f fusefs
