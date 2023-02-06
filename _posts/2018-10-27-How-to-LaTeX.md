---
title: How to LaTeX
layout: page
---

# Install LaTeX

You will need LaTeX-distribution and an editor.

## LaTeX-distributions

For the former, the most popular is

- [TeX Live](https://www.tug.org/texlive/) (Linux, Windows) by
  the TeX User Group
- [MacTeX](http://www.tug.org/mactex/) (Mac OS) by the TeX User Group
- [MiKTeX](https://miktex.org/download) (Windows only)



## LaTeX-editors

In theory, any text editor will do the job. In practice, you probably
want syntax highlighting and some IDE-functionality. Here are our top
recommendations:

- on Windows: [TeXStudio](http://www.texstudio.org) (Linux, Mac OS X, Windows)
- on MacOS: [TeXPad](http://www.texpadapp.com) (Mac OS X)
- on Linux: Emacs with [AucTeX](https://www.gnu.org/software/auctex/)

There are plenty of [alternatives](https://en.wikipedia.org/wiki/Comparison_of_TeX_editors):
- [Lyx](http://www.lyx.org/) (Linux, Mac OS X, Windows); CONTRA:
  do you really need your own file format .lyx?!
- [Texmaker](http://www.xm1math.net/texmaker/) (Linux, Mac OS X,
  Windows); CONTRA: seems to be superseded by TeXStudio

## Testing the installation

a minimal latex document contains :

    \documentclass{article}

    \begin{document}
    Hello world!
    \end{document}

Save the 5 lines above as `minimal.tex`, open it with the editor and compile.

# Write LaTeX

Armin Gerl has provided a template for the (German) master thesis
(based on the standard `report`-class):

- preview of the [pdf][1]
- all sources (and the pdf) in a [directory][2]

[1]:{{ site.url }}/docs/thesis-de-report/master-thesis-de.pdf
[2]:{{ site.repo }}/docs/thesis-de-report

Alternatively, Florian Stegmaier built template (based on the
KomaScript `scrreprt`-class):

- preview of the [pdf][3]
- all sources (and the pdf) in a [directory][4]

[3]:{{ site.url }}/docs/thesis-de-scrreprt/rootFile.pdf
[4]:{{ site.repo }}/docs/thesis-de-scrreprt

## Document Classes

The standard classes are `book`, `report`, `article` with [differences
in the (default) settings and the available commands/environments](https://tex.stackexchange.com/a/36989). Here's
a preview of some
[documentclass options](https://texblog.org/2013/02/13/latex-documentclass-options-illustrated/).

For presentations, there's the `beamer`-class. For a CV and a (business) letter,
my choices are `moderncv` and `dinbrief`, respectively.

There are plenty of alternatives: Many departments, work groups,
conferences, and journals offer their own documentclasses. There are
also the popular replacements `scrbook`, `scrreprt`, `scrartcl` from
the KOMA-Script bundle. Here's a
[list of incompatibilities](https://tex.stackexchange.com/a/73288) for the latter.


## Maintain your bibliography with BibTeX

- [german introduction](http://www.juergenfenn.de/tex/dtk/bibonline.pdf)
- [english
  introduction](http://www.tug.org/pracjourn/2006-4/fenn/fenn.pdf)

A text editor is sufficient to maintain one's .bib-file, but if you
prefer some GUI (which might for example also link to the corresponding
pdf's), there's [JabRef](http://jabref.sourceforge.net/).

see
[tex-stackexchange](https://tex.stackexchange.com/questions/143/what-are-good-sites-to-find-citations-in-bibtex-format)
for a list of sources for bibtex-entries, e.g.

- [doi2bib](http://www.doi2bib.org/)

## Draw beautiful inline graphics with TikZ

see
[tex-stackexchange](https://tex.stackexchange.com/questions/42611/list-of-available-tikz-libraries-with-a-short-introduction)
for a list of libraries

## Help

### General

- [LaTeX
  Basics](https://www.youtube.com/playlist?list=PLuyjaM3Uz-oOS7zcMFaROwrg83KBR1Sui)
  (introduction videos, in German)
- [Begin LaTeX in minutes](https://github.com/VoLuong/Begin-Latex-in-minutes)
  (short introduction text, in English)
- Donald E. Knuth (1984),
  [The TeXbook](https://www.ctex.org/documents/shredder/src/texbook.pdf)
  (the ultimate reference on TeX -- and also fun to read)

### Specific

- [Detexify](http://detexify.kirelabs.org/classify.html) by Philipp
  Kühl and Daniel Kirsch to reverse-lookup the LaTeX-command for that
  math-symbol for which you don't know the name
- [Beamer Theme Matrix](https://hartwork.org/beamer-theme-matrix/) to
  visualize combinations of themes (rows) and color themes (columns)
- Advice on
  [Data Presentation/Visualization](https://github.com/IEEE-SB-Passau/latex-data-presentation)
  with LaTeX by Stephan Lukasczyk

# History

An [earlier version](https://pgbbs.github.io/_pages/LaTeX/) of this
document was published in the blog of [PGBBS](https://pgbbs.github.io).

# TODO

LaTeX-Vorlagen f\"ur
- Projektarbeiten (Studienprojekt Mathematik im Studiengang Ingenieurpädagogik)
- Begleithefte zum Landshuter Lernlabor (LLL)
- Bachelor-Arbeiten (Mathematik an der Hochschule Landshut)
