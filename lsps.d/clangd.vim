if executable('clangd')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'clangd',
                \ 'cmd': {server_info->['clangd']},
                \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp', 'cuda'],
                \ })
    "autocmd FileType c setlocal omnifunc=lsp#complete
    "autocmd FileType cpp setlocal omnifunc=lsp#complete
    "autocmd FileType objc setlocal omnifunc=lsp#complete
    "autocmd FileType objcpp setlocal omnifunc=lsp#complete
    "autocmd FileType cuda setlocal omnifunc=lsp#complete
endif
