all: artifacts.pdf

clean:
	rm -fr *.log *.aux artifacts.pdf

artifacts.pdf: artifacts.tex
	pdflatex artifacts
#	bibtex artifacts
#	pdflatex artifacts
#	pdflatex artifacts
