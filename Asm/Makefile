TARGET=hs
SRC=main.asm
OBJS=main.o
NASM=nasm
LD=ld

UNAME := $(shell uname)
ifeq ($(UNAME), Linux)
	CFLAGS=-felf64
endif
ifeq ($(UNAME), Darwin)
	LDFLAGS=-e _start -static
	CFLAGS=-fmacho64
endif

all: $(TARGET)

%.o : %.asm
	$(NASM)  $< $(CFLAGS)
$(TARGET): $(OBJS)
	$(LD) $^ -o $@ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(TARGET) $(OBJS)