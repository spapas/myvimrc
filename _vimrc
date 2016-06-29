set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"Use this to make clipboard work as normal with vim - or else use the * register for example
" "*yy
" other registers can be used f.e "add "ayy "ap etc
"set clipboard=unnamed

set autoindent
set enc=utf-8
set expandtab

"To expand special characters
"set list

set nowrap
set number
set hlsearch

" Number of spaces to use for each step of (auto)indent. 
set shiftwidth=4

" When a bracket is inserted, briefly jump to the matching one.
set showmatch

" Number of spaces that a <Tab> in the file counts for.
set tabstop=4

" http://vimdoc.sourceforge.net/htmldoc/options.html#'foldcolumn'
" play with zM zm zr zR and more http://vimdoc.sourceforge.net/htmldoc/usr_28.html
set foldcolumn=2
set foldmethod=indent
set foldlevel=12

" allow delete over all things
set backspace=indent,eol,start

" this is already set by behave mswin (makes shift + arrows etc work to select)
"set keymodel=startsel,stopsel

" make selecting easier for windows
set selection=exclusive
set virtualedit=onemore
"or
"set selection=inclusive

set nobackup
set writebackup
"set selectmode=mouse,key
syntax on
colorscheme desert

" Delete trailing characters
autocmd BufWritePre,FileWritePre *.py mark x|exe "%s/[ ]*$//g"|'x

