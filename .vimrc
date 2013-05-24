set guifont=Monaco:h12
set guioptions-=T

syntax on

set shell=/bin/zsh

"autocmd VimEnter * colorscheme solarized

set nocompatible               " be iMproved
filetype off                   " required!
set invlist
set shiftwidth=4
set autoindent
set autowrite
set hlsearch
set incsearch
set textwidth=80
set number
"Exp section
set spell
"set cursorline
set showmode
set backspace=indent,eol,start
set wildmenu
set wildmode=list:longest,full
set scrolljump=5
set foldenable
set scrolloff=3
set noswapfile

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Productivity
Bundle 'Shougo/unite.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-endwise'
Bundle 'scrooloose/syntastic'
"Bundle 'AutoComplPop'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
Bundle 'unimpaired.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'godlygeek/tabular'
Bundle 'skammer/vim-css-color'
Bundle 'tpope/vim-fugitive'
Bundle "myusuf3/numbers.vim"

" Syntax, Indentination & Language-Centric Stuff
Bundle 'kchmck/vim-coffee-script'
Bundle 'git@github.com:slim-template/vim-slim.git'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'c.vim'
Bundle 'Markdown'
Bundle 'skwp/vim-rspec'
Bundle 'tpope/vim-rake'
Bundle 'jimenezrick/vimerl'
Bundle 'kchmck/vim-coffee-script'
Bundle 'rails.vim'
Bundle 'wting/rust.vim'

" Other stuff
Bundle 'mikewest/vimroom'
Bundle 'taskpaper.vim'

"ColorScheme
Bundle 'desert-warm-256'

filetype plugin indent on     " required!
colorscheme desert-warm-256

" Mappings
let g:ctrlp_map                   = '<C-p>'
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails          = 1
let mapleader                     = ','

nmap <Leader><C-t> :TagbarToggle<CR>
nmap <Leader><C-n> :NumbersToggle<CR>
nmap <Leader><C-c> :CtrlPClearCache<CR>

map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

nmap <Leader>l :set list!<CR>


"au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
 
"Bubble singe lines
nmap <C-j> [e
nmap <C-k> ]e
vmap <C-j> [egv
vmap <C-k> ]egv

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

