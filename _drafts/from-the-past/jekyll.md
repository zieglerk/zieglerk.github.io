---
title: Moving from Wordpress to Github Pages and Jekyll
---

After enjoying the easy setup of github pages for one of my projects,
I decided to move my blog as well. So far, I've been smoothly following [Barry
Clark's
Instructions](https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/).

# Jekyll

## Installing Ruby and Jekyll

basically via Michael Chelen's
[Instructions](http://michaelchelen.net/81fa/install-jekyll-2-ubuntu-14-04/)
using the fabolous
[Ubuntu-ppa](https://www.brightbox.com/docs/ruby/ubuntu/) for Ruby by Brightbox
to adjust for the legacy problems with Ubuntu 14.04

- Install Ruby and Ruby Gems from the repositories
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:brightbox/ruby-ng
$ sudo apt-get update

Now, we need at least Ruby2.0. Today, we choose the latest
: $ sudo apt-get install ruby2.3 ruby2.3-dev make gcc nodejs

If this is the only ruby version on your machine, you're all set.
Otherwise you might want to
: $ sudo apt-get install ruby-switch
: $ ruby-switch --list
: $ sudo ruby-switch --set ruby2.3

Then add the gems for Jekyll and github-pages (excluding the
documentation for speed)
: $ sudo gem install jekyll --no-rdoc --no-ri
: $ sudo gem install github-pages --no-rdoc --no-ri
Later replace `install` with `update` to do so.


Alternative: get the bleeding-edge version from
https://gorails.com/setup/ubuntu/14.04

- The Jekyll Gem -- or for better synchronization with github -- the
  github-pages gem
: $ gem install jekyll
: $ gem install github-pages
then specify in the `Gemfile` and
: $ bundle install

## Local (pre)view

preview your site at `localhost:4000`
: $ bundle exec jekyll serve
use the option --watch to rebuild when content changes
use the option --drafts to include posts from the (otherwise excluded)
_draft-folder

build site locally (generate content in _site-folder)
: $ jekyll build

## Customization

themes are defined in main.css, for templates see
- http://jekyllthemes.org/
- https://www.jekyllthemes.net/

# Initialziation :

    $ jekyll new .    # --force if the directory is non-empty
    $ jekyll add .    # auto-generated .gitignore excludes generated content
    $ git commit -m "setup jekyll"
    $ git push

# layouts and static pages

we start with three layout files (stored in _layouts): `post.html`, `page.html`, and
`default.html`. For the
moment, the only real difference is that the former include as Disquis
block for comments and the date.

.html and .md files in the root of our repo will be processed via
page.html. So, about.md is served as <site-url>/about.

The .md from _posts via post.html?! (?Why then specify the
layout explicitely in the header?)

# (blog) posts vs. (static) pages

## Posts
- need the format YEAR-MONTH-DAY-title.md
- and are served at <site-url>/category/YEAR/MONTH/DAY/title.html
- you cannot change this, but bypass it with the permalink property:

    permalink:   better-title

  and thus create <site-url>/better-title/index.html with can be
  retrieved from <site-url>/better-title

## Pages
- option 1: foobar.md will turn into <site-url>/foobar.html
- option 2: foobar/index.md will turn into <site-url>/foobar/index.html
  and is available at <site-url>/foobar/

# Page/Post-Layout

The main difference between the `post`- and the `page`-layout is that the
former apparently contains a comments-block and a date; the latter doesn't.

# File Header

has to follow YAML-specification, i.e. "colon+space"

mandatory:
- title
- layout
optional:
- date: 2016-10-27 19:00 +0200    # for posts, but not for pages
- tags: [foo, bar]
- category: baz
- permalink


# Images

Include images like

: ![description](/images/file.png)

and yes, this means that we store all images in the folder `/image/`.

# Links

https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/

[Jekyll installation
instructions](http://jekyllrb.com/docs/installation/)
[Jekyll configuration](https://jekyllrb.com/docs/configuration/)

# Markdown/kramdown

We write/use kramdown, a super-set of markdown, see
http://kramdown.gettalong.org/. The nomenclature may be confusing:
markdown is

"""“Markdown” is two things: (1) a plain text formatting syntax; and (2)
a software tool, written in Perl, that converts the plain text
formatting to HTML.""" -- https://daringfireball.net/projects/markdown/

Similarly, kramdown is a superset of markdown (in the first sense) and a
Ruby library for conversion and parsing (in the second sense).

There are several markdown flavors. Jekyll supports `kramdown`,
`redcarpet`, `rdiscount`. These are all different from
"Github-flavored markdown" (`GFM`) where the specs don't seem to be
public. :-(

# Plugins

You can add functionality to Jekyll via plugins, but beware: GitHub
Pages only
[support](https://help.github.com/articles/adding-jekyll-plugins-to-a-github-pages-site/)
the subset in the GitHub Pages gem. This excludes for example the
`search`-plugin. You could still build your site locally and then push
the static files ... (But I vote against this change of the default
workflow.)

# Tags and Categories

could be specified in the md-header and then served with plugins, but
github currently supports none.

# Links

- Jekyll [documentation](http://jekyllrb.com/docs/home/)
