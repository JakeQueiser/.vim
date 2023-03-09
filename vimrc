set nocompatible              " be iMproved, required

call plug#begin()
" lang server
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" snips 
Plug 'SirVer/ultisnips'
Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'


Plug 'preservim/nerdtree'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'jacoborus/tender.vim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'stevearc/vim-arduino'
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'liuchengxu/vista.vim'

" autocomplete tools
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
call plug#end()


" import other (non-file specific) config files
runtime! vimrc.d/*.vim

" import coc extnensions
runtime extensions.vim
" use Ctrl + @ to copy to the system clipboard (wayland only)
nnoremap <C-@> :call system("wl-copy", @")<CR>

filetype plugin on
syntax on

" enable line numbers
set number
set relativenumber

" remap folding: folding reconfigured in LSP settings
nnoremap <space> za



" enable highlighting
set hlsearch

" change tab switch keys
nnoremap <Right> gt
nnoremap <Left> gT

" window splits
set splitbelow
set splitright

" window naviagation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Cursors
" let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
" let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
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

