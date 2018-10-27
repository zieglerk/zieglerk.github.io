# Private Homepage of Konstantin Ziegler

This is -- yet another -- relaunch of my homepage and blog. I started out with the
bare bones version of *Feeling Responsive", a great Jekyll theme,
hosted at <http://phlow.github.io/feeling-responsive/> and released
under the [MIT
License](http://phlow.github.io/feeling-responsive/info/). You can
find out more about Jekyll at [jekyllrb.com](http://jekyllrb.com/).

[This github
repository](https://github.com/zieglerk/zieglerk.github.io)
holds the pages and posts, i.e. the content. It is then built/generated with
Jekyll and dipslayed at [https://zieglerk.github.io/](https://pgbbs.github.io).

So, we have the following architecture:
- In the blog, we have posts ("What is ...") and pages ("How to ...").
  You can browse theme there and edit them here. (There's also some outliers like "about" and "brown-bag".)
- In this repository, we have "the dirty secrets" on how to
  maintain the tech (mainly GitHub Pages, Jekyll, and Markdown) behind
  this blog. The relevant files in `UPPERCASE.md`.
  - README.md :: this overview
  - ISSUES.md :: list of global TODOs (generally: put TODOs as close as
    possible to the point of action.)
  - HOW-TO-CONTRIBUTE.md :: how to write the proper mix of markdown and
    liquid-syntax for this blog
  - LICENSE.md :: ???TODO necessary???

# Documentation

For reproducibility -- and in case we totally break the system --
let's document the technology and steps to get this site online

## Ruby

- Ruby :: programming language
- Gem and RubyGems :: a Ruby package and Ruby's package manager
- Gemfile :: specifies which packages (but not necessarily which
  version) a Ruby program requires/you want to use. Then install with
  :

      bundle install

- Gemfile.lock :: will be written with the exact package versions (for
  easier distribution/reproducibility). On the next `bundle install`
  these (stricter) requirements will be used (instead of Gemfile's)
- Jekyll :: a static site generator written in Ruby

## Jekyll

## Markdown

## ?Liquid-Syntax?

for everything that Markdown can't do, like toc and
:smile:

## Troubleshooting

If your page does not build, you'll receive an email-notification and
the content of the email is also displayed in the repository's Setting >
Options > GitHub Pages. Unfortunately, this is usually quite
uninformative. You may have to `bundle exec jekyll serve` for better
information through a local run.



# @Future

## TODOs

- [ ] add a timestamp "last modified: <file-date>" to template
- Do we need a LICENSE file?
- Have 1 disclaimer (possibly as part of about) and link from this
  readme and the footer
- [ ] fix links from pages to posts
- [ ] blog posts need to start with an image; default: photo of the presenter
- [ ] pick and add a favicon/logo
- [ ] add search functionality

https://guides.github.com/features/issues/

## Wishlist

- Search: jekyll plugins are generally disabled for github pages, so in
  particular the [search
  plugin](https://github.com/slashdotdash/jekyll-lunr-js-search/issues/82)

# Disclaimer -- see also contact.md

This is a purely private endeavor and not an official
publication of our employer or the university. The views and advice
presented here are therefore completely nonbinding -- in any
direction. Use at your own risk.
