autocmd BufWritePost *.{c,h,cpp,cu,py} silent! !ctags -R
