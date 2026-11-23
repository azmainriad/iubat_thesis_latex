# =========================================================================
# latexmkrc - settings for latexmk (the tool that builds the thesis)
# Nothing to edit here.
# =========================================================================
@default_files = ('main.tex');   # always build main.tex, even if no file name is given
$pdf_mode = 1;       # make a PDF with pdfLaTeX
$bibtex_use = 2;     # run BibTeX automatically when needed
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode %O %S';
$clean_ext = 'bbl rel %R-blx.bib %R.synctex.gz';
