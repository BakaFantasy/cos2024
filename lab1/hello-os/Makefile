ASMFILE := boot.asm
BOCHSRC := bochsrc

run:
	nasm -o boot.bin $(ASMFILE)
	dd if=boot.bin of=a.img bs=512 count=1
	bochs -f $(BOCHSRC)

clean:
	rm -f boot.bin a.img

.PHONY: clean
