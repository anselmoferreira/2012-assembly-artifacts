all: artifacts_paper.pdf

clean:
	rm -fr *.log *.aux artifacts_paper.pdf

artifacts_paper.pdf: artifacts_paper.tex
	pdflatex artifacts_paper
	bibtex artifacts_paper
	pdflatex artifacts_paper
#	pdflatex artifacts_paper
