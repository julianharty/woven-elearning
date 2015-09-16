.PHONY: main
main: clean main.pdf

.PHONY: clean
clean:
	echo "Cleaning temporary files."
	rm -f main.aux main.bbl main.blg main.dvi main.log main.pdf missfont.log

main.pdf: main.dvi
	echo "Compilging PDF"
	dvipdf main.dvi

main.dvi: main.tex main.bib
	echo "Building document"
	latex main
	echo "Creating reference database"
	bibtex main
	echo "Compiling Document"
	latex main
	latex main
