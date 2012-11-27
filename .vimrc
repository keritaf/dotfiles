set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Plugins
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/tComment'
Bundle 'torandu/vim-bufexplorer'
Bundle 'taglist.vim'
Bundle 'c.vim'
Bundle 'a.vim'

" Color themes
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'croaker/mustang-vim'

" General settings
syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.
set nobackup  " Don't make a backup before overwriting a file.
set nowritebackup " And again
set noswapfile  " Don't create swap file
set directory=$HOME/.vim/tmp " Keep swap files there
set ignorecase  " Case-insensitive search
set smartcase  " Case-sensetive search if expression contains a capital letter
set backspace=indent,eol,start    " Intuitive backspacing
set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set expandtab
set secure  " Allow to write files without permissions?
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set history=1000
au FocusLost * :wa " Autosave everything
set autowriteall

set mouse=a       "Enable mouse
set number        " Show line numbers
set laststatus=2      " Show the status line all the time
set showtabline=2     " Show tabs bar
set incsearch       " Highlight matches as you type
set nohlsearch        " Highlight matches

set showcmd         " Display incomplete commands
set showmode        " Display the mode

set visualbell        " No beeping

set wildmenu        " Enhanced command line completion
set wildmode=list:longest     " Complete files like a shell
set wildignore+=.tmp/**
set wildignore+=log/**

" Colors
set t_Co=256
colorscheme mustang

" Plugin: NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
map <Leader>n :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Plugin: PowerLine
let g:Powerline_symbols = 'fancy'
filetype plugin indent on

" Enable Omnicomplete
set ofu=syntaxcomplete#Complete
