" ------------------------------
" My personal vim configuration.
" ------------------------------

""" -------------------------------
""" Startup Settings
""" -------------------------------
if has('vim_starting')
    set nocompatible		    " Disable compatibility with vi.
endif

""" -------------------------------
""" vim-plug Settings & Plugins
""" -------------------------------
let g:plug_shallow = 0		    " Do not create shallow clones.
call plug#begin('~/.vim/plugged')   " Initialize vim-plug.
Plug 'scrooloose/nerdtree'	    " Add a better file system explorer to Vim.
call plug#end()			    " Load the plugins.

""" -------------------------------
""" NERDTree Configuration
""" -------------------------------
let g:NERDTreeShowHidden=1	    " Automatically display hidden files.
let g:NERDTreeWinSize=50	    " Set NERDTree's width to 50.
autocmd VimEnter * NERDTree	    " Load NERDTree upon vim enter.

""" -------------------------------
""" Basic Settings
""" -------------------------------
set title			    " Set the title of the terminal window.
set number			    " Enable line numbers.
set laststatus=2		    " Always display the status line.
set ruler			    " Enable the bottom bar line/column ruler.
set hidden			    " Hide files in buffers instead of closing them.
syntax on			    " Enable syntax highlighting for files.
filetype indent on		    " Enable filetype-specific indent rules.

""" -------------------------------
""" Tab Settings
""" -------------------------------
set tabstop=8			    " Set hard tabs to 8.
set softtabstop=4		    " Set soft tabs to 4.
set shiftwidth=4		    " Set the shift width to 4.
set expandtab			    " Insert spaces instead of tabs.

""" -------------------------------
""" Encoding & other misc. Settings
""" -------------------------------
set encoding=utf-8		    " Set the main encoding to UTF-8.
set fileencoding=utf-8		    " Set the file encoding to UTF-8 as well.
set binary			    " Enable the editing of binary files.
set ttyfast			    " When scrolling, redraw the window.
set modeline			    " Enable the detection of modelines in files.
set modelines=10		    " Set the max amount of modelines to 10.
set backspace=indent,eol,start	    " Correct the backspace behavior.

