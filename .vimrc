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

" vimwiki things
let g:vimwiki_list = [{'syntax': 'markdown'}]

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
