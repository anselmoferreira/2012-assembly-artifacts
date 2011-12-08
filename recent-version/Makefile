all: artifacts-paper2.pdf

clean:
	rm -fr *.log *.aux artifacts-paper2.pdf

artifacts-paper2.pdf: artifacts-paper2.tex
	pdflatex artifacts-paper2
	bibtex artifacts-paper2
	pdflatex artifacts-paper2
#	pdflatex artifacts_paper
