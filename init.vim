call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
 Plug 'dracula/vim'
 Plug 'morhetz/gruvbox'
"Plug 'ryanoasis/vim-devicons'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'ekalinin/Dockerfile.vim'
 Plug 'navarasu/onedark.nvim'
 Plug 'tpope/vim-surround'
 Plug 'Lenovsky/nuake'
 Plug 'kyazdani42/nvim-web-devicons'
 Plug 'mechatroner/rainbow_csv'
call plug#end()

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=150                  " set an 150 column border for good coding style
set relativenumber
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set scrolloff=10
set ttyfast                 " Speed up scrolling in Vim
set redrawtime=10000        " To load code syntax on larger files
set encoding=UTF-8
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
" “ color schemes
 if (has("termguicolors"))
 set termguicolors
 endif

syntax enable
syntax sync minlines=10000
set redrawtime=10000

" “ colorscheme evening
colorscheme onedark
" open new split panes to right and below
set splitright
set splitbelow

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jj <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" Open nuake terminal using f4 
nnoremap <F4> :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n>:Nuake<CR>

" Clear search mapping 
nmap <silent> <space> <space>:nohlsearch<CR>:match<CR>:diffupdate<CR>
nnoremap <nowait><silent> <C-C> :noh<CR>
" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"set shell=C:\\WINDOWS\\sysnative\\WindowsPowerShell\\v1.0\\powershell.exe
"set shell=C:\\Windows\\System32\\WindowsPowerShel\\v1.0\\powershell.exe
"set shell=powershell

noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
