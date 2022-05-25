.vim
====

This configuration setup allows me work faster with editing ordinary files to
write codes like in IDE(competition, fast overview, grepping, ...).

When I started with Vim there was *no* IDE good for Linux kernel programming and
over the time I started to use Vim everywhere.

Thank you guys (Miroslav Bendík and Tomas Baca) for initial inspiration of
your *.vimrc* files.

## How to clone the repository

    git clone https://github.com/Kaisrlik/.vim.git

## Installation

Just call a `make` :]

**WARN**: If you will call `make istall` it will relink base configuration file
like `~/.vim/` to this repo.

In any case I strongly recommend to take a look what [Makefile](Makefile) contains.

## Plugins

### ale

language client and currently used for syntax check/lint in shell, will be dropped soon

### languageclient-neovim

language client, this plugin fully replaces `ale` or `ycm`

### ccls

is a C/C++/Objective-C language server

### supertab

is a Vim plugin which allows you to use `<Tab>` for all your insert completion needs.

### nerdtree

is a file system explorer for the Vim editor.

### vim-airline

Lean & mean status/tabline for vim

### powerline

is a statusline plugin for vim, and provides statuslines and prompts for several
other applications, including zsh, bash, fish, tmux, IPython, Awesome, i3 and
Qtile.

### vim-fugitive

git wrapper

### calendar

Ng calendar :]

### taglist

is a source code browser plugin for Vim and provides an overview of the
structure of source code files and allows you to efficiently browse through
source code files for different programming languages.

### fzf.vim

Wrapper allowing you to use fzf for basic vim function.

### fzf

fzf is a general-purpose command-line fuzzy finder. To be removed since the
most of distros already having the tool.

### orgmode

Brings `.org` file support to Vim

### UltiSnips

UltiSnips is the solution for having snippets in Vim.

### vim-snippets

Basic sets of snippets for almost all programming language.

### vim-startify

starting screen.

### targets

is a Vim plugin that adds various text objects to give you more targets to
operate on. It expands on the idea of simple commands like di' (delete inside
the single quotes around the cursor) to give you more opportunities to craft
powerful commands that can be repeated reliably. One major goal is to handle all
corner cases correctly.  path = bundle/targets

### vim-sensible

basic setup where everyone can agree on - will be removed.

### searchcomplete

tab for autocompletition in search - will be removed
