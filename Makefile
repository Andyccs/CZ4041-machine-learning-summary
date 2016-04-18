all: build

build:
	pdflatex -shell-escape -halt-on-error -interaction=nonstopmode main.tex

clean:
	ls | grep '.aux\|.log\|.toc\|.pyg\|.out\|.lot\|.blg\|.bbl\|.lof' | xargs rm 
	rm -rf _minted-main

clean-pdf: 
	rm main.pdf

clean-all: clean clean-pdf