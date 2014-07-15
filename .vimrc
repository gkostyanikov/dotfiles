set guifont=Monaco:h12
set guioptions-=T

syntax on

set shell=/bin/bash

"autocmd VimEnter * colorscheme solarized

set nocompatible               " be iMproved
filetype off                   " required!
"set invlist
set shiftwidth=4
set autoindent
set autowrite
set hlsearch
set incsearch
set textwidth=80
set number
"Exp section
"set spell
"set cursorline
set showmode
set backspace=indent,eol,start
set wildmenu
set wildmode=list:longest,full
set scrolljump=5
set foldenable
set scrolloff=3
set noswapfile


" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

"Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" Force saving root required files
cmap w!! %!sudo tee > /dev/null %

" Clear search highlights
noremap <silent><Leader>/ :nohls<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Productivity
Plugin 'Valloric/YouCompleteMe'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'unimpaired.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'gkz/vim-ls'

" Syntax, Indentination & Language-Centric Stuff
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'c.vim'
Plugin 'Markdown'
Plugin 'tpope/vim-rake'
Plugin 'jimenezrick/vimerl'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rails.vim'
Plugin 'vim-scripts/slimv.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'sickill/vim-pasta'
Plugin 'Blackrush/vim-gocode'
Plugin 'wting/rust.vim'
Plugin 'Lokaltog/vim-easymotion'

" Other stuff
Plugin 'ekoeppen/taskpaper.vim'

"ColorScheme
Plugin 'desert-warm-256'

call vundle#end()

filetype plugin indent on     " required!
set t_Co=256
colorscheme desert-warm-256

" Mappings
let g:ctrlp_map        = '<C-p>'
let g:ctrlp_cmd        = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails          = 1
let mapleader                     = ','

nmap <Leader><C-t> :TagbarToggle<CR>
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
let g:ctrlp_custom_ignore = 'vendor\/bundle$'
"let g:ctrlp_lazy_update = 350
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 'a'

if !has('python')
    echo 'In order to use pymatcher plugin, you need +python compiled vim'
else
    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif

if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
endif
