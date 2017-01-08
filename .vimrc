set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/tComment'
Plugin 'c.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'guileen/vim-node'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'slim-template/vim-slim'
Plugin 'fsouza/go.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'airblade/vim-gitgutter'

"Haskell bundles
Plugin 'Shougo/vimproc'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'ujihisa/neco-ghc'

" Color themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'croaker/mustang-vim'

call vundle#end()

" General settings
syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.
set hidden    " Hide buffers instead of closing them
set nobackup  " Don't make a backup before overwriting a file.
set nowritebackup " And again
set noswapfile  " Don't create swap file
set directory=$HOME/.vim/tmp " Keep swap files there
set ignorecase  " Case-insensitive search
set smartcase  " Case-sensetive search if expression contains a capital letter
set gdefault   " Default replacement is global
set backspace=indent,eol,start    " Intuitive backspacing
set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set expandtab
set secure  " Allow to write files without permissions?

" Text wrapping options
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

set smartindent
set autoindent
set cindent
set showmatch    " Show matching parenthesis

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

set ttyfast    " Terminal is fast. Is it?
set visualbell        " No beeping
set noerrorbells    " No error beeping

set wildmenu        " Enhanced command line completion
set wildmode=list:longest     " Complete files like a shell
set wildignore+=.tmp/**
set wildignore+=log/**

" Hidden characters listing
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

set pastetoggle=<F2>  " Toggel paste mode - usually Vim takes paste as very fast typing =)
nnoremap ; :
let mapleader=","    " Remap \ leader key to ,

" Switch Vim regex to normal regex
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr>    " Clear search by typing <leader><space>

" Use tab to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-left> <C-w>h
map <C-right> <C-w>l
map <C-up> <C-w>k
map <C-down> <C-w>j

" Use w!! to write file with forgotten sudo
cmap w!! w !sudo tee % >/dev/null

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
