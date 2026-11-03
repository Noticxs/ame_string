CXX      := gcc
C_FILE   := src/main.c

LIB_NAME := out/libame_string.a
FILE_O   := out/main.o

.PHONY := build test

build:
	mkdir -p out/
	$(CXX) -c $(C_FILE) -o $(FILE_O)
	ar rcs $(LIB_NAME) $(FILE_O)

test: build
	$(CXX) tests/basic_string.c out/libame_string.a -o out/basic_string
