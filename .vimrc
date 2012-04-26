" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" vim mode
set nocompatible

" use ftplugin
filetype plugin on

" inset spaces for tab key
set expandtab

" automatically indent to level of preceding line
set autoindent

" briefly jump cursor to companion brace
set showmatch

" highlight search terms
set hlsearch

" show line numbers
set number
" show ruler
set ruler

" wrap lines
set wrap
" set text width
set textwidth=79

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" persistent undo
set undofile
set undodir=~/.vim/tmp/undo
set undolevels=1000
set undoreload=1000

" syntax coloring
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized
