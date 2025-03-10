# Generated automatically from Makefile.in by configure.
# Makefile for nInvaders
# Copyright (C) 2003 Sebastian Gutsfeld, Alexander Hollinger

CC     = gcc
CFLAGS = -I. -g -O2
LIBS   = -lncurses 


CFILES = globals.c view.c aliens.c ufo.c player.c highscore.c nInvaders.c
HFILES = globals.h view.h aliens.h ufo.h player.h highscore.h nInvaders.h
OFILES = globals.o view.o aliens.o ufo.o player.o highscore.o nInvaders.o


all:		nInvaders

nInvaders: 	$(OFILES) $(HFILES)
		$(CC) $(LDFLAGS) -o$@ $(OFILES) $(LIBS)

hs:		file.o
		$(CC) $(LDFLAGS) -o$@ file.o $(LIBS)

.c.o:
		$(CC) -c  $(CFLAGS) $(OPTIONS) $<
clean:
		rm -f nInvaders $(OFILES)

distclean:
	        rm -f nInvaders $(OFILES)
		rm -f Makefile config.h config.status config.cache config.log
