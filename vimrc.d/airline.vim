let g:airline_experimental = 1
let g:airline_statusline_ontop = 1
let g:airline#extensions#tabline#enabled = 1
set noshowmode
set noruler
set laststatus=1
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'C',
    \ 'i'      : 'I',
    \ 'ic'     : 'I',
    \ 'ix'     : 'I',
    \ 'n'      : 'N',
    \ 'multi'  : 'M',
    \ 'ni'     : 'N',
    \ 'no'     : 'N',
    \ 'R'      : 'R',
    \ 'Rv'     : 'R',
    \ 's'      : 'S',
    \ 'S'      : 'S',
    \ ''     : 'S',
    \ 't'      : 'T',
    \ 'v'      : 'V',
    \ 'V'      : 'V',
    \ ''     : 'V',
    \ }
" toggle status line
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        "set noshowmode
        "set noruler
        set laststatus=0
        "set noshowcmd
        "set showtabline=0
    else
        let s:hidden_all=0
        "set showmode
        "set ruler
        set laststatus=1
        "set showcmd
        "set showtabline=1
    endif
endfunction
