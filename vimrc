set nocompatible              " be iMproved, required

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'jacoborus/tender.vim'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'dyng/ctrlsf.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'stevearc/vim-arduino'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()


syntax on
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'override' : {
  \         'linenumber_fg' : ['#C31A1A', '179']
  \       }
  \     }
  \   }
  \ }
colorscheme PaperColor


" Backspace fix on macos
if has('macunix')
	set backspace=indent,eol,start	
" 	highlight Normal ctermbg=NONE
" 	highlight nonText ctermbg=NONE
endif

" enable line numbers
set number
set relativenumber

" enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> = za

" NERDTree config
nnoremap <silent> <C-e> = :NERDTreeToggle<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

let NERDTreeCustomOpenArgs={'file':{'where': 't'}}
" Refresh the current folder if any changes
autocmd BufEnter NERD_tree_* | execute 'normal R'
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif

" Reload the window if directory is changed
augroup DIRCHANGE
	au!
	autocmd DirChanged global :NERDTreeCWD
augroup END

" enable highlighting
set hlsearch

" change tab switch keys
nnoremap <Right> = gt
nnoremap <Left> = gT

" window splits
set splitbelow
set splitright

" window naviagation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Cursors
let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode

" Ultisnips configuration
let g:UltiSnipsEditSplit="vertical"



" searching stuff
nnoremap f = <Plug>CtrlSFPrompt
nnoremap F = <Plug>CtrlSFCwordPath
let g:ctrlsf_search_mode = 'async'

" search window
let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }
let g:ctrlsf_mapping = {
    \ "tabb": "<Enter>",
    \ }

" Some servers have issues with backup files 
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackSpace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_prev = '<s-tab>'
let g:coc_snippet_next = '<tab>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" JJ to escape
imap jj <Esc>

" global extensions
let g:coc_global_extensions = ['coc-pyright', 'coc-clangd', 'coc-snippets', 'coc-texlab'] 

let g:tex_flavor = 'latex'

" vimtex pdf viewing
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options
                \ = '-reuse-instance -forward-search @tex @line @pdf'
                \ . ' -inverse-search "gvim --servername ' . v:servername
                \ . ' --remote-send \"^<C-\^>^<C-n^>'
                \ . ':drop \%f^<CR^>:\%l^<CR^>:normal\! zzzv^<CR^>'
                \ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
                \ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
                \ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'
