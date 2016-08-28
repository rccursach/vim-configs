set nocompatible "be IMproved

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required

"airline
let g:airline_extensions = ['branch', 'tabline']
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_powerline_fonts=1


"nerdtree
autocmd vimenter * wincmd w "Change to last right-top window
map <C-n> :NERDTreeToggle<CR>

"tabs identation
set expandtab
"set tabstop=2
set shiftwidth=2
set softtabstop=2
syntax on
filetype plugin indent on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"ui stuff
set t_Co=255
colorscheme monokai-chris 
set colorcolumn=80
set nu
set cursorline
set hlsearch
