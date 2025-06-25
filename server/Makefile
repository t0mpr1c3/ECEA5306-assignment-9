SHELL := /bin/sh
CC := $(CROSS_COMPILE)gcc
CFLAGS := -Wall -Werror
TARGET := aesdsocket
SCRIPT := aesdsocket-start-stop
SRC := aesdsocket.c
OBJ := $(SRC:.c=.o)
DESTDIR := $(dirname $0)/..

.PHONY: all default
all default: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) $(OBJ)

.PHONY: install
install:
	mv $(TARGET) $(DESTDIR)/usr/bin
	cp $(SCRIPT) $(DESTDIR)/etc/init.d/S99aesdsocket
