" ------------------------------
" My personal vim configuration.
" ------------------------------

""" ---------------------------------
""" Startup Settings
""" ---------------------------------
if has('vim_starting')
    set nocompatible			    " Disable compatibility with vi.
endif

""" ---------------------------------
""" vim-plug Settings & Plugins
""" ---------------------------------
let g:plug_shallow=0			    " When cloning plugins, do not use shallow clones.
call plug#begin('~/.vim/plugged')	    " Begin vim-plug initialization.
Plug 'ayu-theme/ayu-vim'		    " The Ayu colorscheme.
Plug 'scrooloose/nerdtree'		    " NERDTree, the file explorer for Vim.
Plug 'vim-airline/vim-airline'		    " Enhance the vim statusline with new functionality.
Plug 'rust-lang/rust.vim'		    " Improve Rust language support.
call plug#end()				    " End vim-plug initialization.

""" ---------------------------------
""" NERDTree Configuration
""" ---------------------------------
let g:NERDTreeMinimalUI=1		    " Enable NERDTree's minimal UI.
let g:NERDTreeShowHidden=1		    " Show hidden files in NERDTree.
let g:NERDTreeWinSize=50		    " Set NERDTree's size to 50.

""" ---------------------------------
""" vim-airline Configuration
""" ---------------------------------
let g:airline_powerline_fonts=1		    " Use powerline symbols.

""" ---------------------------------
""" Basic & Visual Settings
""" ---------------------------------
colorscheme ayu
let g:ayucolor="dark"
set title
set number
set laststatus=2
set termguicolors
set ruler
set hidden
syntax on
filetype plugin indent on

""" ---------------------------------
""" Tab Settings
""" ---------------------------------
set tabstop=8
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

""" ---------------------------------
""" Files & Backup-related Settings
""" ---------------------------------
set nobackup
set nowb
set noswapfile

""" ---------------------------------
""" Encoding & other misc. Settings
""" ---------------------------------
set encoding=utf-8
set fileencoding=utf-8
set binary
set ttyfast
set modeline
set modelines=10
set backspace=indent,eol,start

""" ---------------------------------
""" Key & Leader Mappings
""" ---------------------------------
let mapleader = ","
