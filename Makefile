SHELL := /usr/bin/bash

SRC_MAIN := main
SRC_TEX := $(wildcard *.tex) $(wildcard */*.tex) $(wildcard */*/*.tex)
SRC_TIKZ := $(wildcard img/*.tikz) $(wildcard img/*/*.tikz)
OUT := $(SRC_MAIN).pdf

OPT = -interaction=nonstopmode
OPT_LOOP = -interaction=batchmode


all: $(OUT)

.DELETE_ON_ERROR:
$(OUT): $(SRC_TEX) $(SRC_TIKZ)
	pdflatex $(OPT) $(SRC_MAIN)
	while grep 'Rerun to get ' $(SRC_MAIN).log ; do \
		pdflatex $(OPT_LOOP) $(SRC_MAIN) ; \
	done

clean:
	${RM} ${SRC_MAIN}.{aux,log,out,toc}
	
cleanall:
	${RM} ${SRC_MAIN}.{aux,log,out,toc,pdf}


.PHONY: all clean cleanall
