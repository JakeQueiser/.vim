inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 0

set completeopt=menuone,noinsert,noselect,preview
" let g:asyncomplete_auto_popup = 0

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" remap and refresh on c-j
inoremap <silent><expr> <C-j>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<C-j>" :
  \ asyncomplete#force_refresh()
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-h>"

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'allowlist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))
