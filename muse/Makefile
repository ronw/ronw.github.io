SOURCEFILES = $(wildcard *.muse)
PUBDIR = ../
BIB = $(PUBDIR)/pubs/ronwpubs.bib 
MUSEPROJECT = eeweb

all: publishmuse

publishmuse: $(SOURCEFILES) $(BIB)
	emacs -batch -l ./muse-init.el -eval '(muse-project-publish "$(MUSEPROJECT)")'

