all: assembly-artifacts.pdf

clean:
	rm -fr *.log *.aux assembly-artifacts.pdf

assembly-artifacts.pdf: assembly-artifacts.tex
	pdflatex assembly-artifacts
	bibtex assembly-artifacts
	pdflatex assembly-artifacts
#	pdflatex artifacts_paper
