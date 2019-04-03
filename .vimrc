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

" Make it obvious where 80 characters is
" set textwidth=80
" set colorcolumn=+1
" highlight ColorColumn ctermbg=7

highlight LineNr ctermfg=grey
set autoread                    "Reload files changed outside vim
set hidden
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
syntax on
" Enables copy/paste for visual selection outside of vim
map <C-c> y:e ~/tmpclipboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" ================ File Explorer Config ===========

" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" NERDtree Config
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" let NERDTreeAutoDeleteBuffer = 1
" let NERDTreeShowHidden = 1
" let g:NERDTreeDirArrowExpandable="▸"
" let g:NERDTreeDirArrowCollapsible="▾"
" let g:NERDTreeNodeDelimiter = "\u00a0" " Fixes weird character bug


" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","
set timeout timeoutlen=1500


execute pathogen#infect()
filetype plugin indent on

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
