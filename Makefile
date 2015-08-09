COMPILER=xelatex
OUT_DIR=bin
PDF_DIR=pdf
FLAGS=-output-directory=$(OUT_DIR)

all: resume references

references: $(OUT_DIR) $(PDF_DIR)
	$(COMPILER) $(FLAGS) references.tex 
	mv $(OUT_DIR)/references.pdf $(PDF_DIR)

resume: $(OUT_DIR) $(PDF_DIR)
	$(COMPILER) $(FLAGS) resume.tex
	mv $(OUT_DIR)/resume.pdf $(PDF_DIR)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

$(PDF_DIR):
	mkdir -p $(PDF_DIR)

