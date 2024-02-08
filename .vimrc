syntax on
set nonumber
set norelativenumber
set errorbells
set nowrap
set linebreak
set wildmenu
set expandtab
set exrc
set backspace=2
set nohlsearch
set incsearch
set ignorecase
set ruler
set splitbelow
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set lazyredraw
set clipboard=unnamed
"set mouse=nv

noremap j gj
noremap k gk

nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

xnoremap p "_dP

nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

nnoremap <C-f> :Explore<CR>
nnoremap <C-s> :Sex<CR>
nnoremap <C-c> :Vex<CR>

nnoremap <C-t> :terminal<CR>

map Q <Nop>

let g:netrw_sort_by = "name"
