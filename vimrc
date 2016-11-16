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

" color schemes

call vundle#end()
filetype plugin indent on
""""""""""""""""""""
" end vundle setup
""""""""""""""""""""

syntax on
set relativenumber
set incsearch
