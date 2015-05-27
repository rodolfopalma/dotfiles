" pathogen init
execute pathogen#infect()
syntax on
filetype plugin indent on

" get rid of vi compatibility
set nocompatible

" prevent security exploits
set modelines=0

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" random stuff
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set number
set laststatus=2
set undofile
set relativenumber

" remap leader key
let mapleader=","

" remap searching/movement
nnoremap / /\v
vnoremap / /\v
set ignorecase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" handling long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" good habits
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" remap f1 as ESC
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" source code pro
set gfn=Source\ Code\ Pro\ 10

" ultisnips, snippets completed on return
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" colorscheme
colorscheme desert

"NERDTree
nnoremap <leader>t :NERDTreeToggle<cr>

" python-mode
let g:pymode_python = 'python'
let g:pymode_rope_completion = 0
let g:pymode_folding = 0
nnoremap <leader>q :!python3 "%" &<cr>
