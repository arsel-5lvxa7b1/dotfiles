vim9script

# When started as "evim", evim.vim will already have done these settings, bail
# out.
if v:progname =~? "evim"
  finish
endif

# Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

# Load plugins if they exist
if filereadable(expand('~/.vim/plugins.vim'))
  source ~/.vim/plugins.vim
endif

# Undo, backup, swap files settings
set undofile         # Enable undo
set undolevels=1000  # How many undos
set undoreload=10000 # Number of lines to save for undo

set backup                          # Enable backups
set swapfile                        # Enable swaps
set undodir=$HOME/.vim/tmp/undo     # Undo files
set backupdir=$HOME/.vim/tmp/backup # Backups
set directory=$HOME/.vim/tmp/swap   # Swap files

if str2nr(&t_Co) > 2 || has("gui_running")
  # Switch on highlighting the last used search pattern.
  set hlsearch
endif

# Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  # For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

# Add optional packages.
#
# The matchit plugin makes the % command work better, but it is not backwards
# compatible.
# The ! means the package won't be loaded right away but when plugins are
# loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif


# My custom commands

colo habamax

set listchars=lead:·,trail:·,tab:╶─╴
set list

set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

set nowrap number relativenumber

set encoding=UTF-8

