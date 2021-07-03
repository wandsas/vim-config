" settings.vim

set noswapfile
set backup
set history=1000          " Huge history and undofile
set undofile
set undolevels=1000

" File handling
set autoread
set autowrite

" No bells
set novisualbell
set noerrorbells

" Search
set hlsearch        " highlight search pattern matches
set incsearch       " incrementally search
set ignorecase      " search lower/upper case letters ignoring case sensitive, consider only letters
set smartcase       " case sensitive search for lower-case string

" Ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.db,*.o,*.a
set tags=./.tags:/
set tags+=.git/tags

" Cursor
set backspace=indent,eol,start
set matchpairs+=<:>

" Line numbers
set number
set numberwidth=4
set relativenumber
set scrolloff=5

" Status bar
set laststatus=2
set noshowmode
set lazyredraw

" Last line
set listchars=tab:.\ ,eol:¬,extends:❯,precedes:❮
set showcmd         " command history
set showmatch       " matching braces
set linebreak       " line wrapping
set modeline        " modeline set number of lines (beginning and end of file)
                    " vim checks for initializations

set path+=**        " set path to $PWD
set sessionoptions+=tabpages,globals,winpos,winsize,blank,resize " remember tab names in sessions

" Window splits
" ctrl+w v vertical
" ctrl+w s horizontal
" ctrl+w hjkl to switch between panes
set splitbelow
set splitright

let g:GPGExecutable="gpg2"
set dictionary=/usr/share/dict/words

if has("gui_running")
  set columns=80
  set lines=50
  set guifont=Fixed\ Medium\ Semi-Condensed\ 10

  " Lightweight interface
  set guioptions=aegitl

  " Nonblinking cursor
  set gcr=a:blinkon0
endif

if &diff
  " don't fold
  set diffopt+=context:1000000
  highlight! link DiffText MatchParen
  highlight! link DiffChange Normal
  highlight! link DiffDelete Conceal
end

syntax on
filetype plugin indent on

set tabstop=4         " Indendation rules
set softtabstop=4     " default ts=4 sts=4 sw=4
set shiftwidth=4      " toggle ts=2 sts=2 sw=2 with <leader>t/T
set expandtab

set colorcolumn=80
set textwidth=100

set autoindent
set smartindent
set copyindent

set smarttab
set breakindent
set magic
