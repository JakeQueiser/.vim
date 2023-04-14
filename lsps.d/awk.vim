if executable('awk-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'awk-language-server',
        \ 'cmd': {server_info->['awk-language-server']},
        \ 'allowlist': ['awk'],
        \ })
endif
