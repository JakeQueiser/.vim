set nocompatible              " be iMproved, required
set hidden
set encoding=utf-8

call plug#begin()
" themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'jacoborus/tender.vim'

" snippets
Plug 'SirVer/ultisnips'

" workspace and project tools
Plug 'vim-airline/vim-airline'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'

" window management
Plug 'simeji/winresizer'
Plug 'christoomey/vim-tmux-navigator'

" latex 
Plug 'lervag/vimtex'

"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" arduino
Plug 'stevearc/vim-arduino'

" lsp and autocomplete tools
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'

"Plug '/home/jake/Code/vim-remote'
call plug#end()

set incsearch

" this was specifically set to speed up esc with jj
set timeoutlen=300

filetype plugin on
syntax on

" enable line numbers
set number
set relativenumber

" tabs 4 spaces 
set softtabstop=4
set tabstop=4
set shiftwidth=4

" tabs to spaces
set expandtab

" enable highlighting
set hlsearch

" window splits
set splitbelow
set splitright

" Cursors
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Some servers have issues with backup files 
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=0

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" jj to escape
imap jj <Esc>

" set folding mode
set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()
set foldlevel=100000

" load lsp
runtime! lsps.d/*.vim

" import other (non-file specific) config files
runtime! vimrc.d/*.vim

