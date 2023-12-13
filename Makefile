CC=g++
CFLAGS=-c -Wall

all: main mylib.a

main: hello.o mylib.a
	$(CC) hello.o mylib.a -o hello_world
	
hello.o: hello.cpp
	$(CC) $(CFLAGS) hello.cpp

foo.o: foo.cpp
	$(CC) $(CFLAGS) foo.cpp

mylib.a: foo.o
	ar -rcs mylib.a foo.o

clean:
	rm -rf *.o hello_world *.a
