" ------------------------------------------------------------------------------
"  1. General Settings
" ------------------------------------------------------------------------------
syntax on               " turn on color syntax highlighting
set nocompatible        " not compatible with the old-fashion vi mode
set history=100         " sets how many lines of history VIM has to remember
set background=dark     " better readability on a dark background
set mousehide           " hide the mouse when typing

" ------------------------------------------------------------------------------
"  2. Tabulators
" ------------------------------------------------------------------------------
set tabstop=4           " an indentation every four columns
set expandtab           " tab is replaced by spaces
set softtabstop=4       " let backspace delete indent
set autoindent          " indent at the same level of the previous line

" ------------------------------------------------------------------------------
"  3. Bottom Panel
" ------------------------------------------------------------------------------
set ruler               " show the ruler
set showcmd             " show what is typing as a command
set wildmenu            " show list instead of just completing

" ------------------------------------------------------------------------------
"  4. Lines
" ------------------------------------------------------------------------------
set cursorline          " highlight current line
set number              " show line numbers
set numberwidth=3       " using at least 3 columns (+1 space) for number column
set wrap                " wrap long lines
" set relativenumber    " show relative line numbers
" set nowrap            " do not wrap long lines

" color settings for cursorline
highlight CursorLine ctermbg=235 gui=none cterm=none

" ------------------------------------------------------------------------------
"  5. Search
" ------------------------------------------------------------------------------
set hlsearch            " highlight search terms
set ignorecase          " case insensitive search
set incsearch           " find as you type search

" ------------------------------------------------------------------------------
"  6. Backups
" ------------------------------------------------------------------------------
set nobackup            " remove backup files
set noswapfile          " remove swap files

