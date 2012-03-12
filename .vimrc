runtime bundle/vim-pathogen/autoload/pathogen.vim

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()


syntax on
let mapleader=","
"load filetype plugins and indent files
filetype plugin indent on

colorscheme peaksea

if &t_Co > 2 || has("gui_running")
    syntax on
endif

if has("gui_running")
    set lines=45
    set columns=84
    "set gui font
    set guifont=Courier\ 12
endif
set background=dark
set tabstop=4
set softtabstop=4
set shiftwidth=4
"delete tab when press 'backspace'

set smarttab
set expandtab
set autoindent
set shiftround
set copyindent

set ignorecase
set smartcase
set showmatch
"hightlight search words
set hlsearch
set incsearch

set scrolloff=5
set backspace=2

"show the line number
set number

"show current coordiance
set ruler 

"hightlight the cursor line
set cursorline
set visualbell
set noerrorbells

set pastetoggle=<F2>

"make backup and set the backup directory
set backup
set backupdir=/tmp
set directory=/tmp

"always show status line
set laststatus=2

set autoread
set showcmd
set wrap

nnoremap <silent><F5> :redraw!<CR>
let python_hightlight_all=1

"NERDTree plugin
let NERDTreeWinPos = "left" "where NERD tree window is placed on the screen
let NERDTreeWinSize = 15 "size of the NERD tree
nmap <F7> <ESC>:NERDTreeToggle<RETURN>"

imap jk <ESC>

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

let g:SuperTabDefaultCompletionType = "context"
let g:pydiction_location = '/usr/share/pydiction/complete-dict'
map <leader>td <Plug>TaskList
au FileType python set omnifunc=pythoncomplete#Complete
set foldmethod=indent
set completeopt=menuone,longest,preview
set foldlevel=99
set list listchars=tab:»·,trail:·

map <leader>e :e! ~/.vimrc<cr>
autocmd! bufwritepost vimrc source ~/.vimrc

set wildmenu
map <buffer> K :execute "!pydoc " . expand("<cword>")<CR>
imap <silent> <C-C> <C-R>=string(eval(input("calculate: ")))<CR>
