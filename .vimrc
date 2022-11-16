set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
filetype plugin indent on

" spacing configration
set tabstop=2         " Set Tabstop
set shiftwidth=2      " Set indent width
set expandtab         " Expand tab as spaces

" options for viminfo
set viminfo='100,h,:100
set number

set hlsearch

" Mac ClipBoard
vmap <silent> sy :!pbcopy; pbpaste<CR>
map <silent> sp <esc>o<esc>v:!pbpaste<CR>

call plug#begin()

Plug 'rust-lang/rust.vim'
Plug 'thinca/vim-quickrun'

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'previm/previm'

Plug 'kana/vim-submode'
Plug 'preservim/nerdtree'

" requires vim to be compiled with `python3`
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

Plug 'hashivim/vim-terraform'

call plug#end()

" 各種設定の読み込み
call map(sort(split(globpath(&runtimepath, '_config/*.vim'))), {->[execute('exec "so" v:val')]})

