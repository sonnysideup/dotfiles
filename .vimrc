call plug#begin('~/.vim/plugged')

" Leverage fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

syntax on

set ruler
set incsearch
set relativenumber

" default space and tab behavior
set expandtab
set tabstop=2
set shiftwidth=2

set cursorline
set cursorcolumn
set colorcolumn=80

set backspace=indent,eol,start

" remove trailing whitespace before 'save'
autocmd BufWritePre * :%s/\s\+$//e

let mapleader = " "
nnoremap <Leader>k :Explore<CR>
