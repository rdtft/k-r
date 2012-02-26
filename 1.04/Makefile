CC = gcc
LD = $(CC)
CFLAGS = -g -W -Wall -Werror -ansi -pedantic
LDFLAGS = -g

.PHONY : all clean test

all: $(patsubst src/%.c,bin/%,$(wildcard src/*.c))

bin/%: bin/%.o
	$(LD) $(LDFLAGS) $? -o $@

bin/%.o: src/%.c
	$(CC) $(CFLAGS) -c $? -o $@

test:
	bats test/unit.bats

clean:
	rm -rf bin/*
