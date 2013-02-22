""" General

" Interface tweaks
set guifont=Courier\ 14
colorscheme morning

" Enable hidden buffers
set hidden

" Enable mouse (for window resize)
set mouse=a

" Key bindings
let mapleader = ","

" Programming related
set smartindent
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set modeline
" For python
au FileType python setlocal ts=8 et sw=4 sts=4

""" Plugins

"pathogen plugin manager configuration
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()

"File browser
map <leader>n :NERDTreeToggle<CR>

""" Python tweaks

"Enable folding
set foldmethod=indent
set foldlevel=99

"syntax highlighting
syntax on
filetype on
filetype indent plugin on

"Rope config
let ropevim_vim_completion=1
let ropevim_extended_complete=1
let g:ropevim_autoimport_modules = ["os.*","traceback"]
"imap <Nul> <C-R>=RopeCodeAssistInsertMode()<CR>
"imap <c-space> <C-R>=RopeCodeAssistInsertMode()<CR>

"Tab completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir,
    'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
