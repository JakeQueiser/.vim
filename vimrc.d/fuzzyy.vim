nnoremap <silent> <C-@>f :FuzzyFiles<CR>
nnoremap <silent> <C-@>b :FuzzyBuffers<CR>
nnoremap <silent> <C-@>s :FuzzyInBuffer<CR>
nnoremap <silent> <C-@>g :FuzzyGrep<CR>
let g:fuzzyy_keymaps = {
\     'menu_up': ["\<c-p>", "\<c-k>"],
\     'menu_down': ["\<c-n>", "\<c-j>"],
\ }
