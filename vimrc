set nocompatible              " be iMproved, required
set hidden
set encoding=utf-8

call plug#begin()
" lang server
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" snips 
Plug 'SirVer/ultisnips'
Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'


Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'jacoborus/tender.vim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'stevearc/vim-arduino'
Plug 'vimwiki/vimwiki'

" autocomplete tools
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
Plug 'Donaldttt/fuzzyy'

Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'simeji/winresizer'
Plug 'christoomey/vim-tmux-navigator'

Plug '/home/jake/Code/vim-remote'
call plug#end()


" import other (non-file specific) config files
runtime! vimrc.d/*.vim

" use ctrl-y to copy to the system clipboard (wayland only)
nnoremap <C-y> :call system("wl-copy", @")<CR>

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

" remap folding: folding reconfigured in LSP settings
nnoremap <space> za

" enable highlighting
set hlsearch

" turn off the tabline
set showtabline=0
let g:airline#extensions#tabline#enabled = 0

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
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" JJ to escape
imap jj <Esc>

" toggle status line
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>

" disable command history
nnoremap q: <nop>
nnoremap Q <nop>

" load lsp
runtime! lsps.d/*.vim
