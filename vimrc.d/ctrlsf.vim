
" searching stuff
nnoremap <c-f> <Plug>CtrlSFPrompt
nnoremap <c-p> <Plug>CtrlSFCwordPath
vmap <c-f> <Plug>CtrlSFVwordPath
let g:ctrlsf_search_mode = 'async'

" search window
let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }
let g:ctrlsf_mapping = {
    \ "tabb": "<Enter>",
    \ }
