TEX_FILES = $(shell find . -type f -name '*.tex')

.PHONY: all clean

all: main.pdf

main.pdf: $(TEX_FILES)
	pdflatex main.tex

clean:
	rm -rf *.pdf *.out *.aux *.toc *.log *.gz
