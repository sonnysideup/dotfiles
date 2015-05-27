"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" --- General ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible          " get rid of Vi compatibility mode
filetype plugin indent on " automatically detect file types
syntax enable             " enable syntax highlighting
set t_Co=256              " enable 256 colors
set modelines=5           " allows you to set vim options inside file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" --- Vim UI ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
color distinguished " load a colorscheme
set cursorline      " highlight current line
set ruler           " show the ruler
set relativenumber  " show line numbers
set nohlsearch      " don't continue to highlight searched phrases
set incsearch       " highlight as you type your search
set ignorecase      " make searches case-insensitive
set smartcase       " case-sensitive when using uppercase characters
set listchars=tab:▸\ ,eol:¬ " set symbols to use in 'list' mode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" --- Formatting ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nowrap        " do not wrap long lines
set autoindent    " indent at the same level of the previous line
set expandtab     " use spaces in place of tab characters
set tabstop=2     " tab character counts for 2 spaces
set softtabstop=2 " tab and bspace count for 2 spaces in INSERT mode
set shiftwidth=2  " number of spaces to use for each ident
"set textwidth=80  " maximum number of characters per line

" EXPERIMENTAL
set clipboard+=unnamed " enable dual-direction clipboard sharing
set colorcolumn=80
"highlight ColorColumn ctermbg=4
set backspace=2 " fix backspace in homebrew version of Vim
"set fdm=indent " zm & zr collapse and expand, respectively; use Shift for all

" delete trailing whitespace on write
autocmd BufWritePre, * :call Preserve("%s/\\s\\+$//e")

" filetype detection
autocmd BufNewFile,BufRead Gemfile,Guardfile,Berksfile,*.ru,*.jruby,*.rake set filetype=ruby
autocmd BufNewFile,BufRead *.json set filetype=javascript

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" --- Key Mappings ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ' ' " change the default leader key ('\')

nmap <leader>l :set list!<CR>             " toggle hidden chars
nmap <leader>n :set relativenumber!<CR>   " toggle linenumbers
nmap <leader>p :set paste!<CR>            " toggle paste mode
map <leader>lcd :lcd %:p:h<CR>:pwd<CR>    " use cwd of open buffer
map <leader>a :edit#<CR>                  " toggle alternate file
"map <leader>gc :CtrlP app/controllers/

" map window focus navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" --- Functions ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" preserve editor state when issuing a command
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" --- Plugins ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" manage plugins and runtime files using pathogen
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" --- Misc Settings ---
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0

" Ignore files types in netrw
let g:netrw_list_hide = '.*\.pyc$'

set wildignore+=*.pyc

let base16colorspace=256
set background=dark
colorscheme base16-default

