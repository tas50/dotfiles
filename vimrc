" Enable filetype plugins
filetype plugin on
filetype indent on

" Show line numbers
set number

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Enable syntax highlighting
syntax enable

" Highlight search results
set hlsearch

" Load pathogen
call pathogen#infect()
call pathogen#helptags()