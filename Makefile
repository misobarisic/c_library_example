all: static-bin shared-bin

clean:
	rm -r bin

static:
	mkdir -p bin/static
	gcc -c src/life/life.c -o bin/static/life.o
	ar rcs bin/static/liblife.a bin/static/life.o

shared:
	mkdir -p bin/shared
	gcc -c -fPIC src/life/life.c -o bin/shared/life.o
	gcc -shared bin/shared/life.o -o bin/shared/liblife.so

static-bin: static
	gcc src/main.c -Lbin/static -llife -o bin/static-bin

shared-bin: shared
	gcc src/main.c -Lbin/shared -llife -o bin/shared-bin

