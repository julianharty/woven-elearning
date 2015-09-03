.PHONY: main
main: clean main.pdf

.PHONY: clean
clean:
	rm -f main.aux main.blg main.dvi main.log main.pdf missfont.log

main.pdf: main.dvi
	dvipdf main.dvi

main.dvi: main.tex bibliography.bib
	latex main
	bibtex main
	latex main
	latex main
