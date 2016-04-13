.PHONY: clean all live

all: main.tex
	latexmk -pdf -pv main

live: main.tex
	latexmk -pdf -pvc -silent main

clean:
	latexmk -C

pdf: all
	cp main.pdf CSR-PageRank.pdf
