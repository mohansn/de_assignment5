all:assignment5.pdf
assignment5.pdf:assignment5.dvi
	dvipdf assignment5.dvi
assignment5.dvi:assignment5.tex
	latex assignment5.tex
.PHONY:force # We sometimes need to run latex again
	     # in order to get correct (equation) references
force:
	latex assignment5.tex
	dvipdf assignment5.dvi
.PHONY:clean
clean:
	-rm -fv *.toc *.log *.dvi *.pdf *~ *.aux