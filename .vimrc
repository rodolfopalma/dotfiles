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
set encoding=utf-8              " set encoding
set scrolloff=3                 " offset line position 3 lines beneath top
set autoindent                  " who doesn't love auto indent?
set showmode
set showcmd
set nohidden                    " when closing tabs, delete buffer
set wildmenu                    " menu tab completion
set wildmode=list:longest,full
set visualbell
set cursorline                  " highlight current line
set ttyfast
set ruler
set backspace=indent,eol,start
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
set colorcolumn=80

" good habits
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" remap f1 as ESC
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" source code pro
set gfn=Source\ Code\ Pro\ 10

" colorscheme
color Dracula

"NERDTree
nnoremap <leader>nt :NERDTreeToggle<cr>

nnoremap ´ {
nnoremap ç }

" swap, backup, undo folders
set undodir=~/.vim/.undo//,.
set directory=~/.vim/.swp//,.
set backupdir=~/.vim/backup//,.

" code folding
set foldmethod=indent
set foldlevel=99
nnoremap <leader>f za

" splitted windows movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" tasklist
nnoremap <leader>td :TaskList<cr>

" PEP8
let g:pep8_map='<leader>8'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ["flake8"]

" neocomplete + jedi-vim
autocmd FileType python setlocal omnifunc=jedi#completions
let g:neocomplete#enable_at_startup = 1
let g:jedi#force_py_version = 3
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

" tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=40
nnoremap <leader>b :TagbarToggle<cr>

" vim-go
let g:syntastic_mode_map = {
    \ "passive_filetypes": ["go"] }
let g:go_fmt_command = "goimports"

" NERDCommenter
let NERDSpaceDelims=1

" Markdown flavored syntax
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Live latex compiler
let g:livepreview_previewer = "open -a Preview"
