set nocompatible
filetype plugin on
filetype indent on
syntax on

set tabstop=2
set shiftwidth=2 
set expandtab
set number

map <Right> :bn<CR>
map <Left>  :bp<CR>

colors codeschool

map <F2> :NERDTreeFocus<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :NERDTree<CR>

execute pathogen#infect()

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
let NERDTreeIgnore = ['\.pyc$']

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'SirVer/ultisnips'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'gmarik/vundle'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-scriptease'
Bundle 'vhdirk/vim-cmake'
Bundle 'derekwyatt/vim-fswitch'
