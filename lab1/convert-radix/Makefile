BIN := convert-radix
SRC_DIR := src
DEBUG_INITIALIZER := init.gdb
TESTER := tester_by_fradow.py

CFLAGS := -g

all: $(BIN)

$(BIN): $(addprefix "$(SRC_DIR)/", $(wildcard *.asm))
	nasm -felf64 $(CFLAGS) -o $@.o $(SRC_DIR)/$@.asm
	ld $@.o -o $@ -g
	@rm -rf $@.o

debug: $(BIN)
	gdb $< -x $(DEBUG_INITIALIZER)

test: $(BIN) $(TESTER)
	python3 $(TESTER) $<

clean:
	rm -f $(BIN)

