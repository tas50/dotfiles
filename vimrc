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

" Use incremental searching (starts as soon as  you type)
:set incsearch

" Ignore case in search unless I specify an upper case
:set ignorecase
:set smartcase

" Load pathogen
call pathogen#infect()
call pathogen#helptags()
