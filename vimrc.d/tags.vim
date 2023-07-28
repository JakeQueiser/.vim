"autocmd BufWritePost *.{c,h,cpp,cu,py} silent! !ctags -R 2>/dev/null
" set tags=./tags,tags;
" 
" let g:gutentags_ctags_tagfile = 'tags'
" let g:gutentags_generate_on_new = 1
" let g:gutentags_generate_on_missing = 1
" let g:gutentags_generate_on_write = 1
" let g:gutentags_generate_on_empty_buffer = 0
