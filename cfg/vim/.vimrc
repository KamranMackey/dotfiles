" ------------------------------
" My personal vim configuration.
" ------------------------------

""" ---------------------------------
""" Startup Settings
""" ---------------------------------
if has('vim_starting')
    set nocompatible			" Disable compatibility with vi.
endif

""" ---------------------------------
""" vim-plug Settings & Plugins
""" ---------------------------------
let g:plug_shallow=0			" Do not clone using shallow clones.
call plug#begin('~/.vim/plugged')	" Begin vim-plug initialization.
Plug 'ayu-theme/ayu-vim'		" The Ayu colorscheme.
Plug 'scrooloose/nerdtree'		" Add a file explorer to Vim.
Plug 'vim-airline/vim-airline'		" Better statusline for Vim.
Plug 'rust-lang/rust.vim'		" Improve Rust language support.
call plug#end()				" End vim-plug initialization.

""" ---------------------------------
""" NERDTree Configuration
""" ---------------------------------
let g:NERDTreeMinimalUI=1		" Enable NERDTree's minimal UI.
let g:NERDTreeShowHidden=1		" Show hidden files in NERDTree.
let g:NERDTreeWinSize=50		" Set the NERDTree size to 50.

""" ---------------------------------
""" vim-airline Configuration
""" ---------------------------------
let g:airline_powerline_fonts=1		" Populate the airline symbols dictionary.

""" ---------------------------------
""" Basic & Visual Settings
""" ---------------------------------
colorscheme ayu				" Make Ayu the default colorscheme.
let g:ayucolor="dark"			" Use the 'dark' variant of the theme.
set title				" Set the title of the terminal window.
set number				" Show line numbers for files.
set laststatus=2			" Always show the status line.
set termguicolors			" Enable true color support.
set ruler				" Enable the bottom-bar ruler.
set hidden				" Move files to hidden buffers instead of closing them.
syntax on				" Enable syntax highlighting.
filetype plugin indent on		" Enable filetype-specific indent rules.

""" --------------------------------
""" Tab Settings
""" --------------------------------
set tabstop=8				" Set hard tabs to 8.
set softtabstop=4			" Set soft tabs to 4.
set shiftwidth=4			" Set the shift width to 4.
set expandtab				" Use spaces instead of tabs.

""" --------------------------------
""" Files & Backup-related Settings
""" --------------------------------
set nobackup				" Disable backups, since we have git.
set nowb				" Disable the writing of backups.
set noswapfile				" Disable the swap file.

""" --------------------------------
""" Encoding & other misc. Settings
""" --------------------------------
set encoding=utf-8			" Set the main encoding to UTF-8.
set fileencoding=utf-8			" Set the file encoding to UTF-8 too.
set binary				" Enable the editing of binary files within Vim.
set ttyfast				" Redraw windows when scrolling.
set modeline				" Enable modeline detection.
set modelines=10			" Set the max amount of modelines to 10.
set backspace=indent,eol,start		" Correct the behavior of backspaces.

""" --------------------------------
""" Key & Leader Mappings
""" --------------------------------
let mapleader = ","			" Set the leader to the , key.
map <F7> gg=G
