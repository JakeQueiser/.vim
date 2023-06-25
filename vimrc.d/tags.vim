autocmd BufWritePost *.{c,h,cpp,cu,py} silent! !ctags -R 2>/dev/null
