---
title: "Version-Control (via Git) and File-Sharing (via Syncthing)"
layout: page
---

When working together, we will sooner or later produce something
(hopefully). In the case of computer science, this usually means files
(duh!). Several improvements have been suggested over
[filenames-with-counter-via-email-attachment](http://www.phdcomics.com/comics/archive.php?comicid=1531).

# Filesharing

- centralized (DEPRECATED): owncloud, Dropbox (~5 GB), Google Drive (~15 GB), Novell Filr
  via UPassau's ZIM (~600 MB, mounted as `H:/`)
- distributed: [Syncthing](https://syncthing.net/) (free and
  open-source, OUR CHOICE), [Resilio Sync](http://getsync.com)
  (proprietary, formerly: Bittorrent Sync)

# Sourcesharing aka git

## public hosts

  | host                               | public | private       | size limit                         | groups           |
  |------------------------------------+--------+---------------+------------------------------------+------------------|
  | [Github](https://github.com)       | oo     | none (edu: 5) | 1 GB/repo; 100 MB/file             | oo               |
  | [Bitbucket](https://bitbucket.com) | oo     | oo            | 1 GB/repo (soft); 2 GB/repo (hard) | max. 5 (edu: oo) |
  | [Gitlab](https://gitlab.com)       | oo     | oo            | 10 GB/repo                         | oo               |

  Untested alternative: [Savannah](https://savannah.gnu.org)

## private hosts

- [local gitlab](https://gitlab.dimis.uni-passau.de)
- `localhost`

## Setup

Github has its own
[tutorial](https://guides.github.com/activities/hello-world/). There is also a [tutorial by BitBucket](https://www.atlassian.com/git/tutorials/learn-git-with-bitbucket-cloud).

1. Get a bitbucket/github/gitlab-account.
2. Install the necessary software on your local computer (usually
`git`, `ssh`, and optionally some GUI).
3. Link your local machine with your bitbucket/github/gitlab-account. (You need to generate an SSH-key and
copy it to the settings.)
4. Clone your project.

### GUIs for git

If you don't want/like to interact via the command line, the git-webpage maintains an extensive list of [GUI
clients](https://git-scm.com/downloads/guis).

- [SourceTree](https://www.sourcetreeapp.com/) (Mac & Windows)
- [Github Desktop](https://desktop.github.com/) (Mac & Windows)
- [TortoiseGit](https://tortoisegit.org/) (Windows)
- [GitKraken](https://www.gitkraken.com/) (Linux, Mac & Windos;
  UNTESTED)

Field Report (git with gui on windows): Tried SourceTree at first and it
worked reasonably well, but I found the interface bloated (for our
purposes). Tried Windows on Git + TortoiseGit next (trade real GUI for
context-menu) and found that the
[instructions](https://blog.assembla.com/AssemblaBlog/tabid/12618/bid/77264/Setting-Up-Git-on-Windows-in-Four-Easy-Steps.aspx)
by Adam Feber worked almost out of the box. Thanks. I just had to
Shift-Right-Click to actually get/find the `clone` command, but that's
hopefully a one-time thing.

## Production Workflow

After the setup, your production workflow has three parts

1. Get the changes from the repository. (see "Pull" below)
2. Do the work
3. Copy your changes to the repository so that everybody else can see
them. (see "Commit & Push" below)


### Pull (before editing)

0. don't touch/open the project files yet
1. pull (and then close/minimize sourcetree)
2. OPTIONAL read log messages
3. browse with filemanager to the directory of your project and work
there

In the case of TortoiseGit, this is a right-click on the top-level
folder of your project and then "Pull"


### Commit & Push (after editing)

1. after you're done working, save and close all project files
2. if necessary open SourceTree
3. "Vormerken": mark all (changed) files that you want to upload
(exclude temporary files like Apples ... or auto-generated files like
'Thumbs.db')
3. "Commit" with a meaningful message
4. Push

In the case of TortoiseGit, this is a right-click on the top-level
folder of your project, then "Commit" -> "Msg" -> "Commit". Followed by
"Push" (and "Close").y

Q: Why are `commit` and `push` two separate steps?
A: There's a logical and a technical reason: maybe you want to
commit not all of your changes (but only some who fit logically well
together); maybe you're without internet connection (and thus can't push), but still want to "freeze" the current
state.

## Best Practices

- Don't put (external) dependencies in version control
- Don't put (binary) output in version control (use GitLFS or
  pre-/post-commit hooks)
- Use [gitignore](https://help.github.com/articles/ignoring-files/)-files, e.g. for paper-repositories ([LaTeX](https://github.com/github/gitignore/blob/master/TeX.gitignore)),
  code-repositories ([Python](https://github.com/github/gitignore/blob/master/Python.gitignore)), and [others](https://github.com/github/gitignore)
- [Single Source of
  Truth](https://en.wikipedia.org/wiki/Single_source_of_truth) is not a
  git-principle, but applies whenever you are tempted to start "just
  another file on the side" -- Why not continue/modify a given one. It's
  all version controlled!

## Pro Tips

- be faster with [git bash
  completion](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)
- get more information with a [git
  prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)

## Further Reading

- Do this interactive 15-min.
  [tutorial](https://try.github.io/levels/1/challenges/1) (beginner
  level)
- Do the [tutorial on Git and Github](http://git-lectures.github.io/)
  from EuroScipy '13
- Here's an exemplary
  [workflow](http://nvie.com/posts/a-successful-git-branching-model/)
- Read the [intro of the
  documentation](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)
- 2-page
  [cheat sheet](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf)
  from github; [Jan Krüger](https://jan-krueger.net/git-cheat-sheet-extended-edition) and [Zack Rusin](https://zrusin.blogspot.de/2007/09/git-cheat-sheet.html) posted some pretty cheat
  sheets in 2007, somebody needs to check whether they're still
  up-to-date #TODO
- a [visualization](http://ndpsoftware.com/git-cheatsheet.html) between the five areas (stash, workspace, index,
  local repo, upstream repo)
