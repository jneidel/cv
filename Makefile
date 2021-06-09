all: build

build: cv.pdf
	xelatex cv.tex

watch: cv.pdf
	ls cv.tex cv.cls | entr -cr make
