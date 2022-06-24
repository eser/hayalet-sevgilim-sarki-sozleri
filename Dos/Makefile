TARGET=hs.com
SRC=main.asm
NASM=nasm
CFLAGS=-fbin

all: $(TARGET)
	
$(TARGET): $(SRC)
	$(NASM)  $< $(CFLAGS) -o $@

.PHONY: clean
clean:
	rm -f $(TARGET)