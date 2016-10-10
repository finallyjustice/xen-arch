SRCFILE=xen-arch.tex
PDFFILE=xen-arch.pdf

all: pdf

pdf: ${SRCFILE}
	latex xen-arch.tex
	latex xen-arch.tex
	dvips -f -Pcmz xen-arch.dvi -o xen-arch.ps 
	ps2pdf xen-arch.ps
#xelatex ${SRCFILE}

open: ${PDFFILE}
	gnome-open ${PDFFILE}

clean:
	rm -rf ${PDFFILE} *.aux *.log *.nav *.out *.snm *.toc *.vrb *.dvi *.ps
