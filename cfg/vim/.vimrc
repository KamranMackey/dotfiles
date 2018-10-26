" ------------------------------
" My personal vim configuration.
" ------------------------------

""" -------------------------------
""" Startup Settings
""" -------------------------------
if has('vim_starting')
    set nocompatible		    " Disable compatibility with vi.
endif

""" ------------------------------
""" Basic & Visual Settings
""" ------------------------------
set title                       " Set the title of the terminal window.
set number			            " Enable line numbers.
set laststatus=2                " Always display the statusline.
set ruler			            " Enable the bottom bar line/column ruler.
set hidden			            " Hide files in buffers instead of closing them.
set fileformats=unix,dos,mac	" Set the fileformats.
syntax on			            " Enable syntax highlighting for files.
filetype indent on		        " Enable filetype-specific indent rules.

""" -----------------------------
""" Tab Settings
""" -----------------------------
set tabstop=4                   " Set the main encoding to UTF-8.
set softtabstop=4               " Set the file encoding to UTF-8.
set shiftwidth=4
set expandtab
