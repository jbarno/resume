manuscript = resume
latexopt = -file-line-error -halt-on-error

# Build the PDF of the lab report from the source files
#
$(manuscript).pdf: $(manuscript).tex
	pdflatex $(latexopt) $(manuscript).tex

log : ${manuscript}.log
	nl -b t $(manuscript).log > ${manuscript}.log

clean :
	rm -f text/*.aux
	rm $(manuscript).pdf

.PHONY : clean
