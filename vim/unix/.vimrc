" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set backspace=indent,eol,start

" Switch syntax highlighting on
set term=linux
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Set tabs to be four spaces.
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

"Enable Pathogen
execute pathogen#infect()
