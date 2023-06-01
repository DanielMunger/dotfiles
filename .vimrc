set shell=/bin/bash
" basic settings
filetype off                  " required
set nocompatible              " be iMproved, required
filetype plugin indent on
syntax on 
set re=0 " you should look into why this works vs fixing syntax highlighting for code files
set number relativenumber

set clipboard=unnamed

" folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

