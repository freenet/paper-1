PAPER = main

.PHONY: all clean watch

all: $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex sections/*.tex figures/*.tex refs.bib
	pdflatex -interaction=nonstopmode $(PAPER).tex
	bibtex $(PAPER) || true
	pdflatex -interaction=nonstopmode $(PAPER).tex
	pdflatex -interaction=nonstopmode $(PAPER).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.fls *.fdb_latexmk \
	      *.synctex.gz sections/*.aux

watch:
	while inotifywait -e modify $(PAPER).tex sections/*.tex figures/*.tex refs.bib; do \
	  $(MAKE) all; \
	done
