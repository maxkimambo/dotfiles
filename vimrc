" General Settings
set nocompatible              " Be iMproved
syntax on                     " Enable syntax highlighting
filetype plugin on            " Enable filetype detection
set number                    " Show line numbers
set cursorline                " Highlight current line
set noerrorbells              " No audio bells
set tabstop=4                 " Number of spaces in tab
set shiftwidth=4              " Number of spaces to use for each step of (auto)indent
set expandtab                 " Use spaces instead of tabs
set smartindent               " Autoindent new lines
set nowrap                    " Don't wrap lines
set incsearch                 " Incremental search
set hlsearch                  " Highlight search results
set scrolloff=10              " Keep 10 lines when scrolling
set clipboard=unnamedplus     " Use system clipboard

" Disable backup files
set nobackup                  " Do not keep a backup file
set noswapfile                " Do not use swap file

" Simple key mappings
@REM nnoremap <C-s> :w<CR>         " Ctrl + S to save
@REM nnoremap <C-q> :q<CR>         " Ctrl + Q to quit
@REM nnoremap <C-a> ggVG           " Ctrl + A to select all

" Colorscheme
colorscheme desert            " Default desert colorscheme
set background=dark           " Dark background

" Turn off line wrapping
set nowrap
