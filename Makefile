all: de en

de: cv.de.tex
	xelatex cv.de.tex
en: cv.en.tex
	xelatex cv.en.tex

upload: cv.de.pdf cv.en.pdf
	sscp cv.de.pdf cv.en.pdf u:~/html/

watch_de: cv.cls cv.de.tex
	ls cv.de.tex cv.cls | entr -cr make
watch_en: cv.cls cv.en.tex
	ls cv.en.tex cv.cls | entr -cr make
watch: cv.cls cv.de.tex cv.en.tex
	ls cv.de.tex cv.en.tex cv.cls | entr -cr make

render_de: cv.de.pdf
	ls cv.de.pdf | entr -r mupdf cv.de.pdf
render_en: cv.en.pdf
	ls cv.en.pdf | entr -r mupdf cv.en.pdf
