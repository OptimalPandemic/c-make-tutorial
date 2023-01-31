CC = gcc
CFLAGS += -Wall -Wextra
GENDIRS = bin lib
LIBFLAGS = -fpic -shared
INCLUDES = include
LIBPATH = lib

.PHONY: all

all: allDirs lib test

allDirs:
	mkdir -p $(GENDIRS)

lib: allDirs
	$(CC) $(CFLAGS) $(LIBFLAGS) -I$(INCLUDES) src/add.c -o $(LIBPATH)/add.so

test: lib
	$(CC) $(CFLAGS) -I$(INCLUDES) src/testAdd.c lib/add.so -o bin/testAdd
	bin/testAdd