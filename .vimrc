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
set softtabstop=2

" enable a horizontal cursor on the line being edited
set cursorline

" visual autocomplete command menu
set wildmenu 

" highlight the second part of matchig pairs in parens and such
set showmatch

" Enable syntax highlighting
syntax enable

" Highlight search results
set hlsearch

" Use incremental searching (starts as soon as  you type)
set incsearch

" Ignore case in search unless I specify an upper case
set ignorecase
set smartcase

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^V<C-R>=escape(b:comment_leader,'/')<CR>//e<CR>:nohlsearch<CR>

" Load pathogen
"call pathogen#infect()
"call pathogen#helptags()
