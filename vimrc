set nocompatible " be iMproved

execute pathogen#infect()

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

"autocmd vimenter * NERDTree        "Open NERDtree on vim enter
autocmd vimenter * wincmd w "Change to last right-top window
"CTRL_n toggles NERDtree
map <C-n> :NERDTreeToggle<CR>
"Allow quit when NERDtree is the only opened window"
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"set autoindent " Auto indention should be on
"set smartindent
set expandtab
set tabstop=2

"defaulting to old regex engine
"because of slowness in ruby syntax highligthing
"http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
set re=1

"Mapping <F2> to tabprevious, <F3> to tabnext and <F4> to tabnew
"Since Ctrl+PgUp, Ctrl+PgDwn doesn't work when running from konsole+ tmux+vim
nnoremap <F2> :tabp<CR>
inoremap <F2> <Esc>:tabp<CR>
vnoremap <F2> :tabp<CR>

nnoremap <F3> :tabn<CR>
inoremap <F3> <Esc>:tabn<CR>
vnoremap <F3> :tabn<CR>

nnoremap <F4> :tabnew<CR>:NERDTreeToggle<CR>:wincmd w<CR>
inoremap <F4> <Esc>:tabnew<CR>:NERDTreeToggle<CR>:wincmd w<CR>
vnoremap <F4> :tabnew<CR>:NERDTreeToggle<CR>:wincmd w<CR>

nnoremap <F9> :tabclose<CR>
inoremap <F9> <Esc>:tabclose<CR>
vnoremap <F9> :tabclose<CR>


" Mapping :ls and :buffer X to F5 key. Press and select number
nnoremap <F5> :buffers<CR>:buffer<Space> 
nnoremap <F6> :buffers<CR>:bdelete<Space>

" Swaping lines on insert and visual modes Alt+j Alt+k
" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv
"
syntax on                 " Enable syntax highlighting

filetype plugin indent on

" Configs to make Molokai look great
set background=dark
"let g:molokai_original=1
"let g:rehash256=1
set t_Co=256
colorscheme molokai

set colorcolumn=80

" Show trailing whitespace and spaces before a tab:
" :highlight ExtraWhitespace ctermbg=red guibg=red
" :autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Lovely linenumbers
set nu

" Searching
set hlsearch
" set incsearch
" set ignorecase
" set smartcase

" highlight the current line
set cursorline
" Highlight active column
" set cuc cul"

