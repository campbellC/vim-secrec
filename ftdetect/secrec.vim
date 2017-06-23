au BufNewFile,BufRead *.sc set filetype=secrec syntax=secrec
au BufNewFile,BufRead *.sc normal zR
au InsertEnter *.sc if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
au InsertLeave,WinLeave *.sc if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif
