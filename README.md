# IUBAT BCSE Undergraduate Thesis LaTeX Template

An official-format, student-friendly LaTeX template for preparing **Bachelor of Computer Science and Engineering (BCSE)** undergraduate thesis reports at the **Department of Computer Science and Engineering, IUBAT—International University of Business Agriculture and Technology**.

> **New to LaTeX?** Open and read **[`Thesis-Writing-Manual.pdf`](Thesis-Writing-Manual.pdf)** first—it is a complete beginner's manual walking you through where to put your title, how to edit each chapter, how to add figures/tables/citations, and what mistakes to avoid.
> You can also preview **[`main.pdf`](main.pdf)** to see the compiled sample thesis output.

---

## 1. Quick Start

### Option A: Local Setup with TeXstudio (Recommended)
1. Install a TeX distribution + **TeXstudio** ([https://www.texstudio.org/](https://www.texstudio.org/)):
   - **Windows:** [MiKTeX](https://miktex.org/download) + TeXstudio *(enable on-the-fly package installation if prompted)*
   - **macOS:** [MacTeX](https://www.tug.org/mactex/) + TeXstudio
   - **Linux (Ubuntu/Debian):** `sudo apt install texlive-full texstudio`
2. Open **`main.tex`** in TeXstudio (always compile `main.tex`, not individual chapters).
3. Ensure the compiler is set to **pdfLaTeX**, then press **F5** (*Build & View*).
   - Whenever you add or edit citations in `references.bib`, run **BibTeX (F8)** once and press **F5** twice.
   - From terminal:
     ```bash
     pdflatex main.tex
     bibtex main
     pdflatex main.tex
     pdflatex main.tex
     ```
     *(Or `latexmk -pdf main.tex`.)*

### Option B: Overleaf (Online Cloud Editor)
1. Click **Code $\rightarrow$ Download ZIP** on this GitHub repository.
2. Go to [Overleaf](https://www.overleaf.com/) $\rightarrow$ **New Project** $\rightarrow$ **Upload Project** and select the downloaded `.zip`.
3. Under **Menu $\rightarrow$ Compiler**, choose **pdfLaTeX** and set **Main document** to `main.tex`, then click **Recompile**.

---

## 2. Repository Structure

```text
iubat_thesis_latex/
├── main.tex                    # Master LaTeX file (compile this file)
├── main.pdf                    # Sample compiled thesis PDF
├── Thesis-Writing-Manual.pdf   # Complete beginner's guide (read first!)
├── thesis-config.tex           # START HERE: edit title, authors, IDs, supervisors, semester
├── references.bib              # IEEE BibTeX bibliography database
├── latexmkrc                   # Automated build configuration for latexmk
├── .gitignore                  # Ignores temporary LaTeX build files (.aux, .bbl, .log, etc.)
├── frontmatter/                # Preliminary pages (Roman numerals: i, ii, iii, ...)
│   ├── title-page.tex          # Cover page (auto-populated from thesis-config.tex)
│   ├── approval.tex            # Examination & Approval page (auto-populated)
│   ├── transmittal.tex         # Letter of Transmittal (replace 2 body paragraphs)
│   ├── declaration.tex         # Student's Declaration
│   ├── certification.tex       # Supervisor's Certification
│   ├── abstract.tex            # Abstract (max 500 words) + Keywords (remove Part 2 guide before submission)
│   └── acknowledgement.tex     # Personal Acknowledgments
├── chapters/                   # Main thesis chapters (Arabic numerals: 1, 2, 3, ...)
│   ├── chapter1-intro.tex      # Chapter 1: Introduction
│   ├── chapter2-lit-review.tex # Chapter 2: Literature Review & IEEE Citation Guide
│   ├── chapter3-methodology.tex# Chapter 3: Research Methodology
│   ├── chapter4-results.tex    # Chapter 4: Results and Discussion
│   └── chapter5-conclusion.tex # Chapter 5: Conclusion and Future Work
├── appendices/                 # Departmental forms & compliance attachments
│   ├── appendix-kpa.tex        # Appendix A: BAETE KPA Justification Form (K1/K2/K7, P1-P7, A1-A5)
│   └── appendix-plagiarism.tex # Appendix B: Official Turnitin/iThenticate Report (< 25%)
└── figures/                    # Save your own figures, plots, and plagiarism PDF here
    ├── README.md               # Figure insertion rules
    └── essentials/             # CRITICAL: DO NOT DELETE OR MOVE
        ├── iubat_cse_logo.jpg  # Combined CSE & IUBAT seal for title page
        └── iubat_heading.jpg   # Official IUBAT banner for Appendix A
```

---

## 3. Where to Start Editing

1. **`thesis-config.tex`:** Update `\thesisTitle`, `\authorA`, `\authorAID`, `\authorB`, `\authorBID`, `\supervisorName`, `\supervisorDesignation`, `\submissionSemester`, and `\courseCodeTitle`. These automatically update the Title Page, Approval Page, Transmittal Letter, Declaration, Certification, and Appendix A.
2. **`frontmatter/`:** Replace instructional placeholder text in `transmittal.tex`, `abstract.tex`, and `acknowledgement.tex` (and remove Part 2 of `abstract.tex`—the setup guide—before final submission).
3. **`chapters/`:** Replace the instructional text and sample tables/boxes in `chapter1-intro.tex` through `chapter5-conclusion.tex` with your actual research.
4. **`references.bib`:** Add your references in BibTeX format and cite them in text using `\cite{key}` (for multiple IEEE citations, use separate brackets separated by commas: `\cite{key1}, \cite{key2}`).
5. **`appendices/`:** Complete the KPA justification tables in `appendix-kpa.tex`, save your Turnitin report (< 25% similarity) in `figures/plagiarism-report.pdf`, and embed it in `appendix-plagiarism.tex`.

---

## 4. Key Formatting Notes

- **Page Setup:** A4 paper (`1.25 in` left binding margin; `1.0 in` top, right, and bottom margins).
- **Line Pitch & Indentation:** Body chapters use a `27.6 pt` baseline-to-baseline pitch (`0.30 in` first-line indent) calibrated to match the departmental `.docx` template; preliminary pages use `\doublespacing`, and Appendix A uses `1.5` line spacing (`onehalfspace`).
- **Captions:** Figure captions go **below** the figure; table captions go **above** the table.
- **Important Warnings:**
  - **Do NOT delete `figures/essentials/`** (`iubat_cse_logo.jpg`, `iubat_heading.jpg`).
  - **Do NOT add `\nocite{*}`** (otherwise uncited entries from `references.bib` will appear in References).
  - Escape special characters in normal prose (`\%`, `\&`, `\_`, `\$`).

---

## 5. Additional Notes

- **Pre-compiled Sample:** [`main.pdf`](main.pdf) is included so you can immediately inspect the formatted output before compiling locally.
- **Beginner's Guide:** [`Thesis-Writing-Manual.pdf`](Thesis-Writing-Manual.pdf) explains every folder, command, and workflow step in plain language for first-time LaTeX users.
- **Clean Repo:** Temporary LaTeX build files (`.aux`, `.bbl`, `.blg`, `.log`, `.toc`, etc.) are excluded via [`.gitignore`](.gitignore).

---

## 6. Writing a Single-Author Thesis

If you are completing your thesis individually, leave the second author macros empty in [`thesis-config.tex`](thesis-config.tex):

```latex
\newcommand{\authorB}{}
\newcommand{\authorBID}{}
```

Appendix A updates to a single student automatically, and adjust these four files in `frontmatter/`:

| File | Adjustment |
| :--- | :--- |
| `frontmatter/title-page.tex` | Change `\authorA\ and \authorB` $\rightarrow$ `\authorA` |
| `frontmatter/approval.tex` | Change `\authorA\ and \authorB` $\rightarrow$ `\authorA` |
| `frontmatter/certification.tex` | Change `by \authorA{} (\authorAID) and \authorB{} (\authorBID)` $\rightarrow$ `by \authorA{} (\authorAID)` |
| `frontmatter/transmittal.tex`, `frontmatter/declaration.tex` | Remove the second column (`& \rule...`, `& \textbf{\authorB}`, `& ID: \authorBID`) from the signature `tabular` |
