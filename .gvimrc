" Folding - requires gvim >= 6
syntax on
if version >= 600
   highlight Folded guibg=grey40 guifg=grey60
endif

" Only do this for Vim version 5.0 and later.
if version >= 500
   " Switch on syntax highlighting if it wasn't on yet.
   highlight Normal guibg=Black guifg=Green
   highlight Cursor guibg=grey80 guifg=NONE
   highlight NonText guibg=grey40
   highlight Constant gui=NONE guibg=Black
   highlight Special gui=NONE guibg=Black
   highlight Comment guifg=grey60
   highlight Class guifg=Cyan
   highlight Namespace guifg=Blue
   highlight MatchParen None gui=underline
"   set background=light

endif

" Always use console text for warnings, instead of pop-up windows.
set guioptions+=c

if has("gui_running")
    if has("gui_macvim")
        set guifont=JetBrainsMono-Regular:h12
    endif
endif

set columns=174
set lines=55

highlight Comment guifg=grey60

" Command height = 1 line
set ch=1

" Tell gvim not to beep or flash
set vb t_vb=

noremap ,l :set bg=light<CR>

vsplit
