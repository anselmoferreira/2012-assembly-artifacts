all: assembly-artifacts.pdf

clean:
	rm -fr *.log *.aux assembly-artifacts.pdf

assembly-artifacts.pdf: assembly-artifacts.tex
	pdflatex assembly-artifacts
	bibtex assembly-artifacts
	pdflatex assembly-artifacts
	pdflatex assembly-artifacts

arxiv-tar:
	tar czf assembly-artifacts.tar.gz assembly-artifacts.tex \
		assembly_comparison.pdf \
		contig_pos_stoptags.pdf \
		density_pos.pdf \
		figure1-density.pdf \
		figure2-hckmers.pdf \
		figure3-contigs.pdf \
		figure4-contigs.pdf \
		figure5-5mers.pdf \
		lump_data.pdf \
		overlap_stoptag_ids.pdf \
		position_read_stoptags.pdf \
		position_read_stoptags_rumen_human_gut.pdf \
		position_read_stoptags_sim.pdf \
		position_read_stoptags_soils.pdf \
		simulated_stoptag_ids.pdf \
		stoptag-table.pdf \
		bicaption.sty  \
		caption.sty \
		caption2.sty \
		caption3.sty \
		ltcaption.sty \
		newfloat.sty \
		setspace.sty \
		subcaption.sty \
		plos2009.bst \
		assembly-artifacts.bbl
