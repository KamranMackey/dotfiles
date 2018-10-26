" ------------------------------
" My personal vim configuration.
" ------------------------------

""" -------------------------------
""" Startup Settings
""" -------------------------------
if has('vim_starting')
    set nocompatible            " Disable compatibility with vi.
endif

""" -------------------------------
""" Basic & Visual Settings
""" -------------------------------
set title			" Set the title of the terminal window.
set number                      " Enable line numbers.
set laststatus=2		" Enable the status line always..
set ruler                       " Enable the bottom bar line/column ruler.
set hidden                      " Hide files in buffers instead of closing them.
set fileformats=unix,dos,mac    " Set the file formats.
syntax on                       " Enable syntax highlighting for files.
filetype indent on              " Enable filetype-specific indent rules.

""" -------------------------------
""" Tab Settings
""" -------------------------------
set tabstop=4                   " Set hard tabs to 4.
set softtabstop=4               " Set soft tabs to 4.
set shiftwidth=4                " Set the shift width to 4.
set expandtab                   " Insert spaces instead of tabs. 

""" -------------------------------
""" Encoding & other misc. Settings
""" -------------------------------
set encoding=utf-8              " Set the main encoding to UTF-8.
set fileencoding=utf-8          " Set the file encoding to UTF-8 as well.
set binary                      " Enable the editing of binary files.
set ttyfast                     " Redraw windows when scrolling.
set modeline			" Enable modeline detection.
set modelines=10		" Set the max number of modelines to 10.
set backspace=indent,eol,start  " Correct the backspace behavior.
