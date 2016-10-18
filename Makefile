SRCFILE=xen-arch.tex
PDFFILE=xen-arch.pdf

all: pdf

pdf: ${SRCFILE}
	pdflatex xen-arch.tex
	pdflatex xen-arch.tex

open: ${PDFFILE}
	gnome-open ${PDFFILE}

clean:
	rm -rf ${PDFFILE} *.aux *.log *.nav *.out *.snm *.toc *.vrb *.dvi *.ps
