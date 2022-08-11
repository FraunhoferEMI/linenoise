.linenoise_example: linenoise.h linenoise.c

.linenoise_example: linenoise.c example.c
	$(CC) -Wall -W -Os -g -o linenoise_example linenoise.c example.c

.slib: linenoise.c
	$(CC) -shared -fPIC -o liblinenoise.so linenoise.c

.PHONY : all
all: .slib .linenoise_example

clean:
	rm -f linenoise_example
	rm -f liblinenoise.so
