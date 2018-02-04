" task juggler project file type
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufNewFile,BufRead *.pro,*.pri                       set ft=qmake
    au! BufNewFile,BufRead *.tpp,                            set ft=cpp
augroup END
