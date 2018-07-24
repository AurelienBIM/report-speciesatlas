#!/usr/bin/Rscript

# ==============================================================================
# author          :Aurelien Colas
# email           :aurelien.colas@insa-lyon.fr
# license         :CC-BY-SA 4.0
# ==============================================================================

# Libraries
library(bookdown)
library(knitr)
library(kableExtra)


# Bookdown
# pdf
options(knitr.table.format="latex")
pdf_format <- bookdown::pdf_document2(citation_package="natbib", fig_caption=TRUE, keep_tex=FALSE,
                                      latex_engine="pdflatex", number_sections=FALSE, toc=FALSE,
                                      includes=list(in_header="header.tex", before_body="doc_prefix.tex"))
bookdown::render_book("index.Rmd", output_format=pdf_format)

# html
# Don't indicate output_format to take into account YAML options
options(knitr.table.format="html")
bookdown::render_book("index.Rmd")
