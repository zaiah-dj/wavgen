#Quick test for hypno and basically any other web server that needs to serve many reuests.
NAME=wavgen
OS = $(shell uname | sed 's/[_ ].*//')
#LDFLAGS = -lsndfile
LDFLAGS =
CLANGFLAGS = -g -O0 -Wall -Werror -std=c99 -Wno-unused -Wno-format-security -fsanitize=address -fsanitize-undefined-trap-on-error -DDEBUG_H
CFLAGS = $(CLANGFLAGS)
CC = clang
PREFIX = /usr/local

wav:
	$(CC) $(LDFLAGS) $(CFLAGS) main.c -o $(NAME)
