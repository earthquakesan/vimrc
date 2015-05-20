""" Vundle config
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/addons')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" File manager for vim
Plugin 'scrooloose/nerdtree'

" Tab Completion
Plugin 'ervandew/supertab'

" Javascript
" http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'

"Golang
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'fatih/vim-go'

"Dockerfile
Plugin 'ekalinin/Dockerfile.vim'

" bracket autocompletion
Plugin 'Raimondi/delimitMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""" General

set number

""" Indentation
set smartindent
set expandtab
set modeline
set tabstop=4
set shiftwidth=2
set softtabstop=2

""" Special commands
imap <C-c> <CR><Esc>O

" Interface tweaks
"set guifont=Courier\ 14
set t_Co=256
syntax on
set background=dark
set guifont=Courier\ 18
colorscheme distinguished

" Enable hidden buffers
set hidden

" Enable mouse (for window resize)
set mouse=a

" Key bindings
let mapleader = ","

" Programming related
" For python
au FileType python setlocal smartindent modeline ts=8 et sw=4 sts=4

" For python
au FileType go setlocal smartindent modeline ts=8 et sw=4 sts=4

" For javascript
au FileType javascript setlocal smartindent modeline ts=4 et sw=2 sts=2

" For javascript
au FileType css setlocal smartindent modeline ts=4 et sw=2 sts=2

"Enable spell checking
autocmd FileType tex setlocal spell spelllang=en_us

""" Plugin specific

"NERDTree
map <leader>n :NERDTreeToggle<CR>

"New tab
map <leader>t :tabnew<CR>
map <leader>] :tabn<CR>
map <leader>[ :tabp<CR>

"Set system clipboard as default
set clipboard=unnamedplus

"Syntastic
let g:syntastic_check_on_open=1

"YouCompleteMe
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

"""Autocommands
"" Comment out
autocmd FileType javascript nnoremap <buffer> <leader>c I//<esc>
autocmd FileType python     nnoremap <buffer> <leader>c I#<esc>
"" Latex
"autocmd BufWritePost *.tex !pdflatex %
