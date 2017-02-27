""""""""""""""""""""
" begin vundle setup
""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" plugins
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'

" color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'tyrannicaltoucan/vim-quantum'

call vundle#end()
filetype plugin indent on
""""""""""""""""""""
" end vundle setup
""""""""""""""""""""

if !exists("g:syntax_on") " enable syntax unless it's already on
  syntax enable
endif

set wrap
set ruler
set nowrap
set incsearch
set relativenumber

" default tab and space behavior
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" syntastic plugin settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""
" Automatic commands
""""""""""""""""""""

" filetype whitespace settings
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype terraform setlocal ts=4 sts=4 sw=4 expandtab
autocmd BufNewFile,BufRead Berksfile,Gemfile,Guardfile set ft=ruby
" remove trailing whitespace before 'save'
autocmd BufWritePre * :%s/\s\+$//e

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --- Key Mappings ---
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " " " configure leader key

nnoremap <Leader>a :edit #<CR>              " toggle alternative file
nnoremap <Leader>k :Explore<CR>             " jump to directory view
nnoremap <Leader>p :set paste!<CR>:set paste?<CR>          " toggle paste mode
nnoremap <Leader>n :set relativenumber!<CR> " toggle line numbers
