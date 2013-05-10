"" --- General ---
set nocompatible          " get rid of Vi compatibility mode
filetype plugin indent on " automatically detect file types
syntax enable             " enable syntax highlighting
set t_Co=256              " enable 256 colors
set modelines=5           " allows you to set vim options inside file

"" --- Vim UI ---
color distinguished " load a colorscheme
set cursorline      " highlight current line
set ruler           " show the ruler
set number          " show line numbers
set nohlsearch      " don't continue to highlight searched phrases
set incsearch       " highlight as you type your search
set ignorecase      " make searches case-insensitive

set list                    " display hidden characters
set listchars=tab:▸\ ,eol:¬ " set symbols to use in 'list' mode

"" --- Formatting ---
set nowrap        " do not wrap long lines
set autoindent    " indent at the same level of the previous line
set expandtab     " use spaces in place of tab characters
set tabstop=2     " tab character counts for 2 spaces
set softtabstop=2 " tab and bspace count for 2 spaces in INSERT mode
set shiftwidth=2  " number of spaces to use for each ident

" filetype-specific formatting and detection
autocmd BufNewFile,BufRead Gemfile set filetype=ruby

"" --- Key Mappings ---
let mapleader = ',' " change the default leader key ('\')

nmap <leader>l :set list!<CR> " toggle `set list`

"" --- Plugins ---

