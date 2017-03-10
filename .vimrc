" This causes the filetypes to be loaded, and also indenting to be modified 
" based on the filetype.
filetype indent on
" This causes filetype plugins to work as well
filetype plugin on
" This should be set by the detected filetype, usually.
"set smartindent
"set cindent

" This adds qbs file type detection
au BufRead,BufNewFile *.qbs     setfiletype javascript
" This line adds the detected filetype's syntax definitions to the dictionary,
" which adds them to auto-completion.  vim.org tip #498
au FileType * exe('setl dict+='.$VIMRUNTIME.'/syntax/'.&filetype.'.vim')



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" This block sets the indent values.
" Set "normal" indent to be 1 shiftwidth
set cinoptions=>s
" Set additional indent for {-not-on-beginning-of-line to 0
set cinoptions+=e0
" Set additional indent for control statement not in braces to 0
set cinoptions+=n0
" Indent added _before_ an opening brace on its own line, for all blocks.
" Also increases indent level for inclosed statements.  Set to 0.
set cinoptions+=f0
" Indent added _before_ an opening brace on its on line, for braces already
" inclosed in at least 1 block.  Does not increase indent level for inclosed
" statements.  Set to 0.
set cinoptions+={0
" Offset closing braces the given amount from the opening brace.  Negative
" allowed.  Set to 0 to align the braces.
set cinoptions+=}0
" Add given indent to the prevailing indent inside a set of braces if the
" opening brace is in column 0 (i.e., starts a function).  Can be negative.
" Set to 0 to not change indent.
set cinoptions+=^0
" Set indent for case labels inside of a switch statement to no indent.
set cinoptions+=:0
" Set indent for statements occurring after a case label in a switch statement
" to one full indent.
set cinoptions+==s
" If this is not equal to zero, the statements after a case label will align
" with the case label instead of the statement after the case label.
set cinoptions+=l0
" Do not indent c++ scope declarations (public, protected, private) one full
" indent from the prevailing setting.
set cinoptions+=g0
" Indent statements after a c++ scope declaration one full indent from the
" prevailing setting.
set cinoptions+=hs
" Parameter declarations for K&R-style function declarations?  One full
" indent.
set cinoptions+=ps
" Set the indent for a function return type declaration to 0.
set cinoptions+=t0
" Set the indent for a continuation line (a line that spills onto the next
" line) 1 full indents.
set cinoptions+=+s
" Set an indent amount for comment lines after the comment opener, when there
" is no other text with which to align, to 3.  (One space for the '/', one for
" the '*', and one more for clarity.)
set cinoptions+=c3
" If non-zero, this would cause the comment indent above to be applied whether
" or not there is other text to align.
set cinoptions+=C0
" Set to indent comment lines 0 extra from the rest of the text.
set cinoptions+=/0
" This controls the indent for inside unclosed parentheses.  If a number other
" than 0 is given, indent by that much.  If 0, it lines up the following lines
" with the first non-whitespace character after the open parentheses.
set cinoptions+=(4
" This is the same as above for unclosed parentheses, but one level deeper
" (i.e. two or more unclosed parentheses).  Set to 0 to correspond with
" previous setting.
set cinoptions+=u0
" This sets the indent for the previous two indent levels to be used when the
" opening paranthesis is the first non-white character on a line.
set cinoptions+=\U1
" If non-zero, this would cause the unclosed parentheses stuff to line up with
" the first following character, whether whitespace or not.
set cinoptions+=w0
" Some closing parantheses garbage.  Leave to 0 to not use.
set cinoptions+=m0
" If set to 1, indent java anonymous classes correctly.
set cinoptions+=j0
" How far vim should search for closing parentheses, in lines.  Smaller makes
" faster.  20 is the default.
set cinoptions+=)20
" How far vim should search for closing comments, in lines.  Smaller makes
" faster.  30 is the default.
set cinoptions+=*30
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" This sets the size of the tabstop to the given number of spaces
" (my preference is 4)
set tabstop=4
" This makes sure the shiftwidth is a tab's length
set shiftwidth=4
" This makes sure that the tab is changed into spaces
set expandtab

" Set so that long lines go off the side of the screen, instead of wrapping
"set wrap 
set nowrap
" Set the number of characters that scroll at once when you reach the side of
" the screen
set sidescroll=1
" Set so that the top/bottom leave 5 lines when scrolling (i.e. they stop the
" cursor and start scrolling at top+5 or bottom-5)
set scrolloff=5

" I don't like the silly search highlighting.
set nohlsearch
" Set for incremental positioning during a search.
set incsearch

" Set so that the backspace key will backspace over autoindenting, over the 
" EOL, and over the start of an insert.
set bs=2

" Folding - requires vim >= 6
if version >= 600
    set foldmethod=indent
endif


" completion options - requires vim >= 7
if version >= 700
    " this gets rid of the stupid menu pop-up that I hate.
    set completeopt="preview"
endif


" Show line numbers
set number


" Command height = 1 line
set ch=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always have a statusline
set laststatus=2
" Set the status-line
" %< : Truncate start
" %f : Relative path to the file in the buffer
" %n : Buffer number
" %h : Help buffer flag
" %m : Modified flag
" %r : Read-only flag
" %y : type of file loaded.
" %= : Move from left-side items to right-side items
" %l : line number
" %v : virtual column number 
" %P : Percentage through file of displayed window.
set statusline=%<%f%h%m%r\ %y\ (%02n)%=\ \ \ %l,%v\ %P
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" Setting textwidth will cause vim to automatically wrap long lines.
" TODO: Someday figure out how to make this file-dependent, so that certain
" files, such as latex, will have it while other files, such as code files,
" won't.
set textwidth=80



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comment stuff:

" vim-style comments - This will cause vim-style comments (starting with a 
" double-quote) to be automatically inserted at the beginning of the line
" after you hit <enter>.
set comments+=:\"

" lhs comments
" Each of these lines enables the use of ,C (where C is a character) to put 
" the appropriate comment delimiter at the beginning of each line.
" # Comment
map ,# :s/^/#/<CR> <Esc>:nohlsearch <CR>
" // Comment
map ,/ :s/^/\/\//<CR> <Esc>:nohlsearch <CR>
" > Comment
map ,> :s/^/> /<CR> <Esc>:nohlsearch<CR>
" " Comment
map ," :s/^/\"/<CR> <Esc>:nohlsearch<CR>
" % Comment
map ,% :s/^/%/<CR> <Esc>:nohlsearch<CR>
" ! Comment
map ,! :s/^/!/<CR> <Esc>:nohlsearch<CR>
" ; Comment
map ,; :s/^/;/<CR> <Esc>:nohlsearch<CR>
" - Comment
map ,- :s/^/--/<CR> <Esc>:nohlsearch<CR>
" wrapping comments
" Each of these lines enables the use of ,C (where C is a character) to 
" put wrapping comments on each line.  The begin-comment delimiter is placed
" at the beginning of each line, and the end-comment delimiter is placed at the
" end of each line.
" /* Comment */
map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR> <Esc>:nohlsearch<CR>
" (* Comment *)
map ,( :s/^\(.*\)$/\(\* \1 \*\)/<CR><Esc>:nohlsearch <CR>
" <!-- Comment -->
map ,< :s/^\(.*\)$/<!-- \1 -->/<CR> <Esc>:nohlsearch<CR>
" These clear the comment delimiters from the screen.  The first is for
" lhs-style, the second for wrapping-style.
map ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR> <Esc>:nohlsearch<CR>
map ,d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR> <Esc>:nohlsearch<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Function key mapping.

" Neat file-switching options
" Uses incbufswitch.vim to enable switching between buffers by typing the file
" name for the buffer.
" http://www.vim.org/scripts/script.php?script_id=685
map <F1> :IncBufSwitch<CR>
" Goes to previous file in the buffer list
map <F2> <Esc>:bp<CR>
" Goes to the next file in the buffer list
map <F3> <Esc>:bn<CR>
" Switchs C/h files, if you have the a.vim script installed to switch between
" alternate files.
" http://www.vim.org/scripts/script.php?script_id=31
map <F4> <Esc>:A<CR>

"Set ninja as make program
set makeprg=../../docker_build.py
" Cool compile options
function! s:ActiveFileMake()
    let makefile_path = expand("%:h")
    while filereadable(makefile_path . "/Makefile") == FALSE
        let makefile_path = 
    endwhile
endfunction
" short-lists all the current make errors
map <F5>  <Esc>:cl<CR>
" long-lists all the current make errors (exact output from make)
map <F6>  <Esc>:cl!<CR>
" Goes to the previous error in the list
map <F7>  <Esc>:cp<CR>
" Goes to the next error in the list
map <F8>  <Esc>:cn<CR>
" calls up the make command and waits for a target
map <F9> <Esc>:make check<CR>
" does a make depend in the directory that vim was run from
map <F11> <Esc>:make depends<CR>
" does a make in the directory that vim was run from.
map <F12> <Esc>:make -j 7<CR>
"map <F12> <Esc>:cexpr system("MakeHelper " . expand("%:p"))<CR>
"map <F12> <Esc>:make\ %<.o<CR>
" Does a make lint for the current file, and loads the lint file as the error
" list
map ,l <Esc>:!rm /tmp/errors.lint<CR> :!autolint <C-R>=expand("%:p")<CR> /tmp/errors.lint<CR>:cfile /tmp/errors.lint<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Programming abbreviations.

" Ydef   insert "#define" at start of line
ab Ydef   <ESC>0i#define

" Yinc   insert "#include" at start of line
ab Yinc   <ESC>0i#include "<ESC>i"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto-typing options.
function! s:insert_separator()
    execute "normal A//==================================================================================================="
    normal ==
    normal 0
    normal 80lD
endfunction
command! -nargs=0 Separator :call <SID>insert_separator()
nmap    _S      :call <SID>insert_separator()<CR>

function! s:insert_header()
        let curr_year = strftime("%Y")
        execute "set paste"
        normal O
        call <SID>insert_separator()
        execute "normal jO///"
        execute "normal jO/// "
        execute "normal jO///"
        execute "normal jO// Copyright " . curr_year . " Ag Leader Technology, Inc."
        normal jO
        call <SID>insert_separator()
        execute "set nopaste"
        normal 5k
        call <SID>insert_doxy_filename()
endfunction

function! s:update_doxy_filename()
        let save_cursor = getpos(".")
        normal gg
        if search( "\\file " )
            normal ddk
            call <SID>insert_doxy_filename()
            call setpos('.', save_cursor)
        else
            if search( "#ifndef ", 'c', line("w0") )
                normal jj
            endif
            call <SID>insert_header()
            normal gg
            if search( "#ifndef ", 'c', line("w0") )
                normal 5j$
            else
                normal 3j$
            endif
        endif
endfunction

function! s:update_file_guard()
        let save_cursor = getpos(".")
        normal gg
        if search( "#ifndef ", 'c', line("w0") )
            normal 2dd
            normal Gdd
        endif
        call <SID>insert_file_guard()
        call setpos('.', save_cursor)
endfunction

function! s:insert_doxy_filename()
        let full_file_name = expand("%:p")
        let trunc_file_name = substitute(full_file_name, "^.*Application/", "", "")
        let trunc_file_name = substitute(trunc_file_name, "^.*Components/", "", "")
        let trunc_file_name = substitute(trunc_file_name, "^.*Platforms/", "", "")
        let trunc_file_name = substitute(trunc_file_name, "^.*Common/", "", "")
        if full_file_name == trunc_file_name
            let file_name = expand( "%" )
        else
            let file_name = trunc_file_name
        endif
        execute "normal jO \\file " . file_name
endfunction

function! s:insert_file_guard()
        let full_file_name = expand("%:p")
        let trunc_file_name = substitute(full_file_name, "^.*Application/", "", "")
        let trunc_file_name = substitute(trunc_file_name, "^.*Components/", "", "")
        let trunc_file_name = substitute(trunc_file_name, "^.*Platforms/", "", "")
        let trunc_file_name = substitute(trunc_file_name, "^.*Common/", "", "")
        if full_file_name == trunc_file_name
            let file_name = expand( "%" )
        else
            let file_name = trunc_file_name
        endif
        let file_name = substitute(file_name, "[A-Z]", "_&", "g" )
        let file_name = substitute(file_name, "[/.]", "_", "g" )
        let file_name = substitute(file_name, "__", "_", "g" )
        let file_name = substitute(file_name, "^_", "", "" )
        let gatename = toupper(file_name)
        execute "set paste"
        execute "normal ggO#ifndef " . gatename
        execute "normal o#define " . gatename
        execute "normal Go#endif // " . gatename
        execute "set nopaste"
endfunction

function! s:create_hfile()
        execute "set paste"
        execute "normal o"
        execute "set nopaste"
        execute "normal gg"
        call <SID>insert_header()
        call <SID>insert_file_guard()
        normal gg5j$
endfunction

function! s:create_cfile()
        execute "set paste"
        let include_name = substitute(expand("%:t"), "\\.c", "\\.h", "g")
        execute "normal o#include \"" . include_name . "\""
        execute "normal o"
        execute "set nopaste"
        execute "normal gg"
        call <SID>insert_header()
        normal gg3j$
endfunction

function! s:create_cppfile()
        execute "set paste"
        let include_name = substitute(expand("%:t"), "\\.cpp", "\\.h", "g")
        execute "normal o#include \"" . include_name . "\""
        execute "normal o"
        execute "set nopaste"
        execute "normal gg"
        call <SID>insert_header()
        normal gg3j$
endfunction

nmap    _H      :call <SID>insert_header()<CR>
nmap    _G      :call <SID>update_file_guard()<CR>
nmap    _P      :call <SID>update_doxy_filename()<CR>
autocmd  BufNewFile *.{h} call <SID>create_hfile()
autocmd  BufNewFile *.{cpp} call <SID>create_cppfile()
autocmd  BufNewFile *.{c} call <SID>create_cfile()
"autocmd  BufWritePre *.{h,c,cpp} call <SID>update_doxy_filename()
"autocmd  BufWritePre *.{h} call <SID>update_file_guard()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fun little item to do case-insensitive sorting for me more easily.  This will
" only work when the lines are highlighted.
vmap <silent>  _S   :sort i<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fun little item to add braces for a list of functions.  It will only work when
" the lines are highlighted.
vmap <silent> _B :s/;/<C-V><CR>{<C-V><CR>}<C-V><CR><CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This little bit changes the tab to be sensitive to what has come before it,
" in insert mode.  If at the beginning of a line, or after a semi-colon, this
" will insert three spaces.  Otherwise, it tries to complete the word.
" Multiple tabs should continue the completion attempts.  Also, shift-tab will
" run through the list, backwards.
" http://www.vim.org/tips/tip.php?tip_id=102 
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper("backward")<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
" http://www.vim.org/tips/tip.php?tip_id=2
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,sp :sp <C-R>=expand("%:p:h") . "/" <CR>
map ,w :w <C-R>=expand("%:p:h") . "/" <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags are very useful things, but we can extend their abilities.  Most of the
" time, I will be in a source-code directory.  By default, the tags command
" looks for a "tags" or "TAGS" file in the same directory as the current file,
" then in the current directory.  After that, we want to be able to move
" between source directories as necessary to follow tags.  For our usual
" working directory location, this will add the ability to read tags generated
" on the system include and local include header files:
"set tags+=../../tags,../../TAGS
" This will add the ability to change between code directories as necessary.
" This is after the system and local includes so that the "official"
" definitions that are read by the current source directory are read first.
"set tags+=../tags,../TAGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" read abbreviations from the abbreviation file.
so ~/.vim_abbr

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" p4 settings.
"
map _E :!p4 edit <C-R>=expand("%:p:s?/mnt/ssd?~?")<CR><CR>:e<CR>
map _A :!p4 add <C-R>=expand("%:p:s?/mnt/ssd?~?")<CR><CR>
map _R :!p4 revert <C-R>=expand("%:p:s?/mnt/ssd?~?")<CR><CR>:e<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit config
"
let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_blockHeader="Sep!"
let g:DoxygenToolkit_blockFooter=""
let g:DoxygenToolkit_briefTag_pre=""
let g:DoxygenToolkit_paramTag_pre="\\param[in] "
let g:DoxygenToolkit_paramTag_post="  "
let g:DoxygenToolkit_returnTag="\\return "
let g:DoxygenToolkit_authorName="Caleb Huitt"
let g:DoxygenToolkit_startCommentBlock = "///"
nmap    _D      :Dox<CR>
