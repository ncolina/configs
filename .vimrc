set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " requiredcmd

" Mapping jj to the ESC key
imap jj <Esc>

" Turn on syntax highlighting
syntax on 

"Turning on line numbers
set number

" Enabling use of the mouse
set mouse=a


" Encoding
set encoding=utf-8

" Status bar
set laststatus=2

" Display options
set showmode
" Open nerd tree if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Turn on spell checking
"set spell 
set spelllang=en_us
"Define syntax highlight for md and txt files
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.txt set filetype=text
"Spellcheck for md and txt files
autocmd FileType markdown setlocal spell
autocmd FileType text setlocal spell
