" vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'zenorocha/dracula-theme', { 'rtp': 'vim/' }

call plug#end()

" Python settings
autocmd Filetype python set expandtab

" visual stuff
set gfn=Source\ Code\ Pro\ 10
color Dracula

" mappings
let mapleader=","
nnoremap <leader>nt :NERDTreeToggle<cr>

" tab settings
set tabstop=4 " how many columns a tab counts for
set shiftwidth=4 " how many columns text is reindented using (<<|>>)
set softtabstop=4 " how many columns used when <Tab> in insert mode

" general stuff
set encoding=utf-8
set scrolloff=4 " offset line position 4 lines beneath top
set showmode
set nohidden " when closing tabs, delete buffers
set visualbell " visual bell instead of beeping
set cursorline " highlight the cursor line
set ruler " show line and column number of the cursor position
set undofile
set relativenumber
set showmatch " when a bracket is inserted, briefly jump to the matching one
set colorcolumn=80

" searching and movement settings
nnoremap / /\v
vnoremap / /\v
set ignorecase " ignore case in search patterns
set gdefault " all matches in a line are substituted
set hlsearch " highlight all search matches
nnoremap <leader><space> :noh<cr>

" swap, backup, undo folders
set undodir=~/.config/nvim/.undo//,.
set directory=~/.config/nvim/.swap//,.
set backupdir=~/.vim/backup//,.

" splitted windows movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
