---
layout: page
#
# Content
#
subheadline: "HowTo"
title: "SageMath"
teaser: "Open-Source Mathematical Software System"
categories:
  - teaching
tags:
  - de
  - HowTo
#
# Styling
#
image:
  thumb: "you-can-delete-me-thumb.png"
---

There are several ways to run SageMath-code. We list them by
increasing accessibility (and also increasing ability).

# SageMathCell

You can eveluate a single cell with Sage code online
[here](https://sagecell.sagemath.org/).

# CoCalc

You can get a free account, and then load, store and run several
SageMath-notebooks [here](https://cocalc.com/).

# Your own SageMath-installation

Finally, you can use your own SageMath-installation.

The SageMath project has a complete [installation
guide](https://doc.sagemath.org/html/en/installation/index.html). For
non-developers, I personally recommend [installation from
conda-forge](https://doc.sagemath.org/html/en/installation/conda.html).

There's also a [docker image for SageMath](https://hub.docker.com/u/sagemath/).

# Can you give me a quick introduction?

No, but I can link you to
- a [quick
introduction](https://doc.sagemath.org/html/en/tutorial/index.html)
(also in [german](https://doc.sagemath.org/html/de/tutorial/))
- [PREP Tutorials](https://doc.sagemath.org/html/en/prep/index.html)
  for the use of Sage in undergraduate education
- a selection of [Sage Thematic
  Tutorials](https://doc.sagemath.org/html/en/thematic_tutorials/index.html)
  - and even [More Sage Thematic Tutorials](https://more-sagemath-tutorials.readthedocs.io/en/latest/)
- Bernhard Esslinger, [Einführung in das CAS
  SageMath](https://www.cryptool.org/download/ctb/CTB-Appendix-SageMath-de.pdf)
  (pdf, 48 pages, german)

# How to load a SageMath-Worksheet?

SageMath-Worksheets used to be a separate file format (ending .sws or
.sagews). These are now simply Jupyter notebooks (ending .ipynb). You
can load them into any Jupyter instance, but to run them, a
sage-kernel needs to be available.

# How to convert old (sws) worksheets into new (ipynb) worksheets?

https://ask.sagemath.org/question/35873/how-to-automatically-convert-many-sws-to-ipynb/
