set noautoindent
set nosmartindent
set ts=4 sts=4 sw=4 expandtab
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e `` 


func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" match ErrorMsg '\%>79v.\+'
