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

"function! ExpandSnippetOrReturn()
"  let snippet = UltiSnips#ExpandSnippetOrJump()
"  if g:ulti_expand_or_jump_res > 0
"    return snippet
"  else
"    return "\<C-Y>" " select without newline in popup
"  endif
"endfunction
"
"function! ExpandSnippetOrTab()
"    let snippet = UltiSnips#ExpandSnippetOrJump()
"    if g:ulti_expand_or_jump_res > 0
"        return snippet
"    else
"        return "\t" " select without newline in popup
"    endif
"endfunction
"
"function! StoreAndDeleteSnips()
"    call UltiSnips#SaveLastVisualSelection()
"    normal! gvd
"endfunction

" autocmd User asyncomplete_setup call asyncomplete#register_source(
"     \ asyncomplete#sources#clang#get_source_options())
