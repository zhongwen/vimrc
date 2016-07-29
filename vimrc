set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'Vundle/Vundle.vim.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" " `:help :Glaive` for usage.
Plugin 'google/vim-glaive'

" more Plugin commands
" ...
call vundle#end()            " required

call glaive#Install()

filetype plugin indent on    " required


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
    set guifont=Monospace\ 12
endif
set background=dark
set tabstop=2
set softtabstop=2
set shiftwidth=2
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
"au FileType python set omnifunc=pythoncomplete#Complete
set foldmethod=indent
set completeopt=menuone,longest,preview
set foldlevel=99
set list listchars=tab:»·,trail:·

map <leader>e :e! ~/.vimrc<cr>
autocmd! bufwritepost vimrc source ~/.vimrc

set wildmenu
map <buffer> K :execute "!pydoc " . expand("<cword>")<CR>
imap <silent> <C-C> <C-R>=string(eval(input("calculate: ")))<CR>

let g:AutoComplPop_Behavior = { 
\ 'c': [ {'command' : "\<C-x>\<C-o>",
\ 'pattern' : ".",
\ 'repeat' : 0}
\ ] 
\}


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


au FileType python setl sw=2 sts=2 et

Glaive codefmt plugin[mappings]
