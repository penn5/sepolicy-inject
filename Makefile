CFLAGS ?= -g -Wall -Werror -Wshadow -O2 -pipe -std=gnu89 -Iselinux/libsepol/include
LDLIBS=selinux/libsepol/src/libsepol.a



all: libsepol sepolicy-inject

libsepol:
	$(MAKE) -C selinux/libsepol

sepolicy-inject: sepolicy-inject.c
