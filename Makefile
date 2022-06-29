all: de en

de: cv.de.tex
	xelatex cv.de.tex

en: cv.en.tex
	xelatex cv.en.tex

de_watch: cv.cls cv.de.tex
	ls cv.de.tex cv.cls | entr -cr make

en_watch: cv.cls cv.en.tex
	ls cv.en.tex cv.cls | entr -cr make

watch: cv.cls cv.de.tex cv.en.tex
	ls cv.de.tex cv.en.tex cv.cls | entr -cr make
