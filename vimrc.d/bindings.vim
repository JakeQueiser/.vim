" Tabs
nnoremap <silent> <C-u> :tabprevious<CR>
nnoremap <silent> <C-p> :tabnext<CR>
nnoremap <silent> <leader>nt :tabnew<CR>
nnoremap <silent> <leader>t :tabs<CR>:tab <C-R>=input("Tab number: ")<CR><CR>

" term
nnoremap <silent> <F4> :FloatermNew<CR>
tnoremap <silent> <F4> <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <F5> :FloatermToggle<CR>
tnoremap <silent> <F5> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <C-u> <C-\><C-n>:FloatermNext<CR>
tnoremap <silent> <C-p> <C-\><C-n>:FloatermPrev<CR>

" wayland clipboard
nnoremap <C-y> :call system("wl-copy", @")<CR>

" disable command history
nnoremap q: <Nop>
nnoremap Q <Nop>

" quick find replace
nnoremap <c-s> :let @/ = '\<'.expand('<cword>').'\>'<CR>:set hlsearch<CR>:%s##<Left>

" toggle hide
nnoremap <S-h> :call ToggleHiddenAll()<CR>

" use spacebar for folding
nnoremap <space> za

" LSP
function! On_lsp_buffer_enabled_keys() abort
    nmap <buffer> gd <plug>(lsp-peek-definition)
    nmap <buffer> <c-g>d <plug>(lsp-definition)
    nmap <buffer> \gd :vsp<cr><plug>(lsp-definition)
    nmap <buffer> -gd :sp<cr><plug>(lsp-definition)

    nmap <buffer> gD <plug>(lsp-peek-declaration)
    nmap <buffer> <c-g>D <plug>(lsp-declaration)
    nmap <buffer> \gD :vsp<cr><plug>(lsp-declaration)
    nmap <buffer> -gD :sp<cr><plug>(lsp-declaration)

    nmap <buffer> gi <plug>(lsp-peek-implementation)
    nmap <buffer> <c-g>i <plug>(lsp-implementation)
    nmap <buffer> \gi :vsp<cr><plug>(lsp-implementation)
    nmap <buffer> -gi :sp<cr><plug>(lsp-implementation)

    nmap <buffer> gt <plug>(lsp-peek-type-definition)
    nmap <buffer> <c-g>t <plug>(lsp-type-definition)
    nmap <buffer> \gt :vsp<cr><plug>(lsp-type-definition)
    nmap <buffer> -gt :sp<cr><plug>(lsp-type-definition)

    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> <c-g>s <plug>(lsp-workspace-symbol-search)

    nmap <buffer> gr <plug>(lsp-references)

    nmap <buffer> <c-g>r <plug>(lsp-rename)

    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)

    nmap <buffer> K <plug>(lsp-hover)

    nmap <buffer> gh <plug>(lsp-call-hierarchy-incoming)
    nmap <buffer> gH <plug>(lsp-call-hierarchy-outgoing)
    "nnoremap <buffer> <expr><c-k> lsp#scroll(+4)
    "nnoremap <buffer> <expr><c-j> lsp#scroll(-4)
endfunction

" async-complete
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>
"inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrReturn()<CR>" : "\<CR>"
"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "<C-R>=ExpandSnippetOrTab()<CR>"
"vnoremap <Tab>  :call StoreAndDeleteSnips()<CR>
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" FZF
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>j :Jumps<CR>
nnoremap <silent> <Leader>l :Lines<CR>
nnoremap <silent> <Leader>m :Marks<CR>
nnoremap <silent> <Leader>w :Windows<CR>

" Command Mode
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap jj <Esc>

" Fugitive
nnoremap <silent> <Leader>[ :diffget //2<CR>
nnoremap <silent> <Leader>] :diffget //3<CR>

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Tmux navigator
noremap <silent> <C-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <C-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <C-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <C-l> :<C-U>TmuxNavigateRight<cr>
"noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

