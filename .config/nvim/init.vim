syntax on
set number
set relativenumber
set errorbells
set incsearch
set scrollback=300
set nowrap
set linebreak
set wildmenu
set expandtab
set exrc
set clipboard=unnamedplus
set backspace=2
set nohlsearch
set ruler
set encoding=UTF-8
set splitbelow
set nofixendofline
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set lazyredraw
set ignorecase
set guicursor=i:block

nnoremap k gk
nnoremap j gj

nnoremap <silent><C-h> :wincmd h<CR>
nnoremap <silent><C-j> :wincmd j<CR>
nnoremap <silent><C-k> :wincmd k<CR>
nnoremap <silent><C-l> :wincmd l<CR>

nnoremap <silent><M-k> :resize -2<CR>
nnoremap <silent><M-j> :resize +2<CR>
nnoremap <silent><M-h> :vertical resize -2<CR>
nnoremap <silent><M-l> :vertical resize +2<CR>

nnoremap <silent><C-s> :Sex<CR>
nnoremap <silent><C-c> :Vex<CR>
nnoremap <silent><C-f> :Explore<CR>

nnoremap <silent><C-b> :bNext<CR>

nnoremap <silent><C-t> :split \| terminal<CR>
tnoremap <silent><Esc> <C-\><C-n>

map Q <Nop>

autocmd TermOpen * setlocal listchars = nonumber norelativenumber

augroup YankHighlight
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
