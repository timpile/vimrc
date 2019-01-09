" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
source ~/.vimrc.before
endif

" ================ General Config ====================

set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set number                      "Line numbers are good
set relativenumber   		"Line numbers relative to current line
set noerrorbells
set visualbell
set backspace=indent,eol,start 	"Allow backspace in insert mode
highlight LineNr ctermfg=grey
set autoread                    "Reload files changed outside vim
set hidden
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/


" Enables copy/paste for visual selection outside of vim
map <C-c> y:e ~/tmpclipboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

" turn on syntax highlighting
syntax on

" Syntax for multiple languages supported via vim-polyglot
" To install run:
" cd ~/.vim/bundle && \
" git clone https://github.com/sheerun/vim-polyglot.git

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","
set timeout timeoutlen=1500

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" How to install pathogen plugins
" cd ~/.vim/bundle && \
" git clone ...

execute pathogen#infect()
filetype plugin indent on
