CXX      := gcc
C_FILE   := src/main.c

MAC_BUILD_LIB := -dynamiclib

LIB_NAME := out/libame_string.a
FILE_O   := out/main.o
FILE_O_MAC := out/libame_string.dylib

.PHONY := build test

build:
	mkdir -p out/
	$(CXX) -c $(C_FILE) -o $(FILE_O)
	ar rcs $(LIB_NAME) $(FILE_O)

build_macos:
	mkdir -p out/
	$(CXX) $(MAC_BUILD_LIB) $(C_FILE) -o $(FILE_O_MAC)

test: build
	$(CXX) tests/basic_string.c out/libame_string.a -o out/basic_string
