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

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

let g:pandoc#syntax#conceal#blacklist = ["atx"]
let g:pandoc#folding#fdc = 0
let g:pandoc#folding#level = 5
let g:pandoc#spell#enabled = 0

" Enable Racket Support
if has("autocmd")
    syntax off
endif


execute pathogen#infect()
