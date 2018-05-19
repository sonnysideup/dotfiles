"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --- Vundle setup ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" plugins
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'
Plugin 'hashivim/vim-terraform'
Plugin 'tpope/vim-fireplace'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mattn/webapi-vim'
Plugin 'cespare/vim-toml'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-commentary'

" color schemes
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --- General settings ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if !exists("g:syntax_on") " enable syntax unless it's already on
  syntax enable
endif

" yank contents to system clipboard when supported
if has("clipboard")
  set clipboard=unnamed
endif

"colorscheme base16-tomorrow-night

set ruler
set nowrap
set incsearch
set cursorline

set cursorcolumn
highlight CursorColumn cterm=NONE ctermfg=NONE ctermbg=236

set colorcolumn=80
highlight ColorColumn ctermbg=0
set relativenumber
set backspace=indent,eol,start " fix backspace in vIM 8.0

" default tab and space behavior for all files
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --- Automatic commands ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" filetype whitespace settings
autocmd Filetype ruby      setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype terraform setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype groovy    setlocal ts=4 sts=4 sw=4 expandtab

autocmd BufNewFile,BufRead Berksfile,Gemfile,Guardfile set ft=ruby
autocmd BufNewFile,BufRead Jenkinsfile set ft=groovy

" remove trailing whitespace before 'save'
autocmd BufWritePre * :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --- Key Mappings ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " " " use the spacebar as the leader key

nnoremap <Leader>a :edit #<CR>                    " toggle alternative file
nnoremap <Leader>k :Explore<CR>                   " jump to directory view
nnoremap <Leader>p :set paste!<CR>:set paste?<CR> " toggle paste mode
nnoremap <Leader>n :set relativenumber!<CR>       " toggle line numbers

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --- Plugin Configurations ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ctrlp
let g:ctrlp_custom_ignore = 'vendor'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_rust_checkers = ['cargo']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --- Golang Settings ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype go setlocal ts=8 sts=0 sw=8 noexpandtab

autocmd Filetype go nmap <leader>r <Plug>(go-run)
autocmd Filetype go nmap <leader>b <Plug>(go-build)
autocmd Filetype go nmap <leader>t <Plug>(go-test)
autocmd Filetype go nmap <leader>c <Plug>(go-coverage-tool)

let g:go_highlight_types     = 1
let g:go_highlight_fields    = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods   = 1
