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
""" Basic Settings
""" -------------------------------
set title                       " Set the title of the terminal window.
set number                      " Enable line numbers.
set ruler                       " Enable the bottom bar line/column ruler.
set hidden                      " Hide files in buffers instead of closing them.
syntax on                       " Enable syntax highlighting for files.
filetype indent on              " Enable filetype-specific indent rules.

""" -------------------------------
""" Encoding & other misc. Settings
""" -------------------------------
set encoding=utf-8              " Set the main encoding to UTF-8.
set fileencoding=utf-8          " Set the file encoding to UTF-8 as well.
set binary                      " Allow binary files to be edited within vim.
set ttyfast                     " Redraw windows when scrolling.
set backspace=indent,eol,start  " Fix the backspace behavior.

""" -------------------------------
""" Tab Settings
""" -------------------------------
set tabstop=8                   " Set hard tabs to 8.
set softtabstop=4               " Set soft tabs to 4.
set shiftwidth=4                " Set the shift width to 4.
set expandtab                   " Insert spaces instead of tabs. 
