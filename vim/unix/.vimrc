" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set backspace=indent,eol,start
set incsearch

" Switch syntax highlighting on
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
  setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

color apprentice

let g:pandoc#syntax#conceal#blacklist = ["atx"]
let g:pandoc#folding#fdc = 0
let g:pandoc#folding#level = 5
let g:pandoc#spell#enabled = 0

" Javascript symbol manipulation
let g:javascript_conceal_function   = "λ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "→"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

execute pathogen#infect()
