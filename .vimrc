" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
source ~/.vimrc.before
endif

" ================ Keymappings    ====================
let mapleader = "\<Space>"
set timeout timeoutlen=1500

map <C-c> y:e ~/tmpclipboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>
nmap 0 ^

nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

" ================ General Config ====================

set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set number                      "Line numbers are good
set relativenumber   		        "Line numbers relative to current line
set noerrorbells
set visualbell
set backspace=indent,eol,start 	"Allow backspace in insert mode
set autoread                    "Reload files changed outside vim
set hidden
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" ================ Theme Settings  ===================

colorscheme molokai
syntax on

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" ================ Pathogen ==========================

execute pathogen#infect()
filetype plugin indent on

" ================ Search ============================
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag --literal --files-with-matches --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif
