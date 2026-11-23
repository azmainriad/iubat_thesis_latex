# Figures Directory

This directory stores all images, diagrams, and graphics used in the IUBAT BCSE undergraduate thesis report.

---

## ⚠️ CRITICAL NOTICE: Do NOT Delete `figures/essentials/`

The `figures/essentials/` directory contains vital institutional logos, seals, and banner headings required for official academic compliance. **Do not delete, rename, or move this directory or the files inside it.**

### Essential Files in `figures/essentials/`:
1. **`iubat_cse_logo.jpg`**: Official combined monogram of the Department of Computer Science and Engineering and IUBAT university seal, rendered on the thesis title/cover page.
2. **`iubat_heading.jpg`**: Official IUBAT institutional letterhead banner, rendered at the top of the BAETE KPA Justification Form (Appendix A).

---

## Guidelines for Students

1. **Adding Your Own Figures:**
   - Save your experimental results, system architecture diagrams, charts, and plots directly in the `figures/` folder (supported formats: `.png`, `.jpg`, `.jpeg`, `.pdf`).
   - Use meaningful file names (e.g., `model-architecture.png`, `accuracy-comparison.pdf`).

2. **Inserting Figures in LaTeX Chapters:**
   - Always use the standard LaTeX `figure` environment, with the
     `\caption{...}` **below** the graphic:
     ```latex
     \begin{figure}[htbp]
       \centering
       \includegraphics[width=0.8\textwidth]{figures/your-figure-name.png}
       \caption{Your Figure Title Here.}
       \label{fig:your-figure-label}
     \end{figure}
     ```
   - Departmental convention (matching the Word template): **figure** captions
     go **below** the graphic, **table** captions go **above** the table. Put
     `\label{...}` immediately after `\caption{...}` so `\ref{...}` resolves
     to the right number.
   - Refer to every figure from the running text, e.g.
     `as shown in Figure~\ref{fig:your-figure-label}`.

3. **Plagiarism Report Attachment (Appendix B):**
   - Save your official Turnitin digital receipt or summary page as `figures/plagiarism-report.pdf` (or inside `figures/`).
