---
title: "How to Markdown"
layout: page
---

We use Markdown as markup-language (with file-extension .md). Here's a
[cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
(html) by Adam Pritchard and a
[reference card](https://scottboms.com/2004/03/markdown-syntax-cheatsheet/)
(pdf) by Scott Boms.

(Historical) Development: Markdown was initially specified by John
Gruber in 2004 (inspired by the syntax used in emails).  He provided a
description of the language and a perl-converter from markdown-text to
valid XHTML.

The original markdown hasn't been updated since its initial release in
2004, but several variants have popped up.
- [kramdown](https://kramdown.gettalong.org/) (also a Ruby-converter,
  e.g. used in this Jekyll blog)
- CommonMark, a standardization effort with extensive specs and plenty
  of implementations
- [GitHub Flavored Markdown](https://github.github.com/gfm/) (GFM), now also
  specified (based on CommonMark) and the default rendering of your
  README.md in a github-project

More specifically, we use markdown's
[kramdown](http://kramdown.gettalong.org/syntax.html)-flavor. Sometimes,
the Liquid processing might interpret some markdown incorrectly (e.g.
the links to posts in the code block above). Then you have to enclose
them with "raw"-tags (see the source if this file).

You can also use emojis -- at least the ones supported by Github's
Jekyll-plugin. Here's a [list](http://www.webpagefx.com/tools/emoji-cheat-sheet/).

Kramdown offers a
[table of contents](http://kramdown.gettalong.org/converter/html.html#toc)
derived from the headlines. Just decorate an (unordered) list with the
Inline Attribute List (IAL) `{:toc}` (see source code of this
file). Jekyll will then replace it with a Table of Contents based on
the headings of the file; you can exclude headings by attaching the
IAL `{:.no_toc}`.

## Code Snippets with Markdown

You can have a basic code block as an (4-space) indented text
surrounded by blank lines, where the preceding paragraph ends with a
colon :

    like this
	and that

More specifically, you can specify the language for proper
highlighting as you can see in the source of this example (taken from
the default installation's `welcome-to-jekyll`)

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}


## Software: Editors with markdown support

- [MarkdownPad](http://markdownpad.com/) (Windows only) has a free and paid
  version
- [Atom](https://atom.io/) (Linux, MacOS, Windows) is a free editor
  with great github-integration and
  [markdown preview](https://atom.io/packages/markdown-preview)
- [MacDown](http://macdown.uranusjr.com/) (MacOS only) is free
  markdown editor with preview
- and then, of course, the usual suspects: Vim, Emacs

The previews are limited to the markdown-syntax and do not extend to
the jekyll/liquid-blocks. To preview the latter, you need to locally
run and serve jekyll.
