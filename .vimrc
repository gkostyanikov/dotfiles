set guifont=San-Francisco:h12
set guioptions-=T
"set guioptions-=e

syntax on
set termguicolors

set shell=/bin/bash

"autocmd VimEnter * colorscheme solarized

"set nocompatible               " be iMproved
filetype off                   " required!
"set invlist
set autoindent
set autowrite
set hlsearch
set incsearch
"set textwidth=80
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
set shortmess=atI

" Improve vim's scrolling speed
"et ttyfast
set lazyredraw
set nostartofline

set mouse=a
set clipboard+=unnamedplus


set laststatus=2
set showtabline=0

"2 spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Autoreload file and autosave on buffer focus enter/left
au FocusGained,BufEnter,BufWinEnter,CursorHold,CursorMoved * :checktime


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

call plug#begin('~/.vim/plugged')

" Productivity
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --clang-completer --gocode-completer --racer-completer' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'unimpaired.vim'
Plug 'majutsushi/tagbar'
Plug 'gkz/vim-ls'
Plug 'tpope/vim-flagship'
Plug 'tpope/vim-fugitive'
" Plug 'snoe/nvim-parinfer.js'

" Syntax, Indentination & Language-Centric Stuff
Plug 'cakebaker/scss-syntax.vim'
Plug 'c.vim'
Plug 'Markdown'
Plug 'kchmck/vim-coffee-script'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'derekwyatt/vim-scala'
Plug 'Blackrush/vim-gocode'
Plug 'wting/rust.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'tpope/vim-vinegar'
Plug 'chrisbra/csv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-obsession'
Plug 'tmux-plugins/vim-tmux'
"Plug 'racer-rust/vim-racer'


"ColorScheme
"Plug 'desert-warm-256'
Plug 'w0ng/vim-hybrid'

call plug#end()




filetype plugin indent on     " required!
"set t_Co=256
"colorscheme hybridolorscheme desert-warm-256
set background=dark
colorscheme hybrid

"slim highlights for slm ft
autocmd BufNewFile,BufRead *.slm set ft=slim


" Mappings

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails          = 1
let mapleader                     = ','

nmap <Leader><C-t> :TagbarToggle<CR>
nmap <C-p> :FZF<CR>

"Go highlights
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"end

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

cnoremap w!! %!sudo tee > /dev/null %

autocmd FileType c nnoremap <buffer> <silent> <C-]> :YcmCompleter GoTo<cr>

autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
 
"Bubble singe lines
nmap <C-j> [e
nmap <C-k> ]e
vmap <C-j> [egv
vmap <C-k> ]egv

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Ignore images and log files
set wildignore+=*.gif,*.jpg,*.png,*.log

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Ignore custom folders
set wildignore+=*/resources/*

" Ignore node modules
set wildignore+=node_modules/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Disable osx index files
set wildignore+=.DS_Store
"let g:python_host_prog = "/usr/local/lib/python2.7/site-packages"
"let g:python3_host_prog = "/usr/local/lib/python3.5/site-packages"
"
let g:ycm_rust_src_path = '$HOME/.rust/src/'
