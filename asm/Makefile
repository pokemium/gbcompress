.PHONY: build
build:
	rgbasm -o hello.o hello.asm
	rgblink -d -o hello.gb hello.o
	rgbfix -p 0 -r 0 -v hello.gb 
	rm -rf hello.o

.PHONY: test
test:
	@echo "This test checks decompress.asm is compilable.\n"
	@rgbasm -o hello.o hello.asm
	@echo "OK: > rgbasm -o hello.o hello.asm"
	@rgblink -d -o hello.gb hello.o
	@echo "OK: > rgblink -d -o hello.gb hello.o"
	@echo "\nSuccess!"
	@rm -rf hello.o hello.gb
