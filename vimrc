set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" vim configuration including vimrc
" required!
Bundle 'drvirgilio/vim-config'

" original repos on GitHub
Bundle 'idris-hackers/idris-vim'
Bundle 'jnwhiteh/vim-golang'

" vim-scripts repos
Bundle 'verilog_systemverilog.vim'

filetype plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

