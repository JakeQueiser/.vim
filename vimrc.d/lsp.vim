function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    "if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
    autocmd User lsp_buffer_enabled call On_lsp_buffer_enabled_keys()
augroup END

let g:lsp_preview_float=1
let g:lsp_experimental_workspace_folders=0
let g:lsp_diagnostics_virtual_text_enabled=0
let g:lsp_text_edit_enabled = 0
let g:lsp_diagnostics_float_cursor=1
let g:lsp_diagnostics_float_delay=500
