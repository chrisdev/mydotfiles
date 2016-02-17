"" Make vim terminal more useful
filetype off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on
syntax on

set nocompatible
set modelines=0

"" White space
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
set list
set listchars=tab:▸\ ,eol:¬
set columns=80
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
set laststatus=2
set relativenumber
set undofile
set linebreak
set nolist
"" Disable the arrow keys so i can start usinin hjkl
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
"" Deal with backups, undos and and turn off my swap file
set backup                        " enable backups
set noswapfile                    " it's 2013, Vim.

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

"" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

"" Sane seaching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
"" nnoremap <leader><space>:noh<cr>   " turn of the search highlite
nnoremap <CR> :noh<CR><CR>
inoremap ;; <ESC>
nnoremap <tab> %
vnoremap <tab> %


"" Mappings
let mapleader  = ","

nmap <F2> :NERDTreeToggle<CR>       " mapping f2 to NERDTreeToggle

let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index', '*\.egg']
                    "\ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
                    "\ '.*\.o$', 'db.db', 'tags.bak', '.*\.pdf$', '.*\.mid$',
                    "\ '.*\.midi$']

"" let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
let NERDTreeShowHidden = 0
""" Python mode
let g:pymode_folding=1 
let g:pymode_rope=0


inoremap <F1> <ESC>
nnoremap <F1> <ESC>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
let macvim_skip_colorscheme = 1

" insert ipython break point
nnoremap <leader>p oimport ipdb; ipdb.set_trace() ### BREAK-POINT
"GotoDefinition  Shortcut
nnoremap gd :RopeGotoDefinition<CR>
""" HTML matching with MatchAlwaysTags
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'htmldjango' : 1,
    \}

""" Switch my cursor between modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"if has('gui-running')
    ""set guifont=Monaco:h14
    ""color slate
    
    ""set guicursor=n-c:block-Cursor-blinkon0
    ""set guicursor+=v:block-vCursor-blinkon0
    ""set guicursor+=i-ci:ver20-iCursor

"else
    "set mouse=a
"endif
set mouse=a
set clipboard=unnamed
