"inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
"
"" allow modifying the completeopt variable, or it will
"" be overridden all the time
"let g:asyncomplete_auto_completeopt = 0
"
"set completeopt=menuone,noinsert,noselect,preview
"" let g:asyncomplete_auto_popup = 0
"
"autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
"
"function! s:check_back_space() abort
"    let col = col('.') - 1
"    return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
"
"" remap and refresh on c-j
"inoremap <silent><expr> <C-j>
"
"au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
"    \ 'name': 'file',
"    \ 'allowlist': ['*'],
"    \ 'priority': 10,
"    \ 'completor': function('asyncomplete#sources#file#completor')
"    \ }))
"

"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"

if has('python3')
    "let g:UltiSnipsExpandTrigger="<c-e>"
    call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'allowlist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif

let g:asyncomplete_auto_popup = 1
let g:asyncomplete_remove_duplicates = 1
let g:lsp_async_completion = 1

function! ExpandSnippetOrReturn()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\<C-Y>" " select without newline in popup
  endif
endfunction
function! ExpandSnippetOrTab()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\t" " select without newline in popup
  endif
endfunction

inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrReturn()<CR>" : "\<CR>"
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "<C-R>=ExpandSnippetOrTab()<CR>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
