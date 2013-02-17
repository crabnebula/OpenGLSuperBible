topdir := $(shell pwd)
subdir := lib src

SHAREDPATH = $(topdir)/lib/
SHAREDINCPATH = $(topdir)/include/
LIBDIRS = -L/usr/X11R6/lib -L/usr/X11R6/lib64 -L/usr/local/lib
INCDIRS = -I/usr/include -I/usr/local/include -I/usr/include/GL -I$(SHAREDINCPATH)  -I$(SHAREDINCPATH)GL

CC = g++
CFLAGS = $(COMPILERFLAGS) -g $(INCDIRS)
LIBS = -lX11 -lglut -lGL -lGLU -lm

export topdir subdir
export SHAREDPATH SHAREDINCPATH LIBDIRS INCDIRS
export CC CFLAGS LIBS

all:
	@for dir in $(subdir); do \
		make -C $$dir || exit -1; \
	done
	
.PHONY: clean

clean:
	@for dir in $(subdir); do \
		make -C $$dir clean; \
	done