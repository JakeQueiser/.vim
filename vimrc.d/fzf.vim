" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'


" nmap <leader><tab> <plug>(fzf-maps-n)

nnoremap <silent> <c-e> :Files<CR>
nnoremap <c-f> :Ag<CR>
nnoremap <silent> <c-t> :Tags<CR>
nnoremap <silent> <c-y> :BTags<CR>
nnoremap <silent> <c-b> :Buffers<CR>
