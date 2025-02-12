cat:
	cat Makefile

setup:
	nimble setup

c: setup
	nim c title.nim

rel: setup
	nim c -d:release title.nim

clean:
	rm -f ./title
	rm -f ./title.exe
