" Vim syntax file example
" Put it to ~/.vim/after/syntax/ and tailor to your needs.

syn match stdConstant "\<[A-Z][A-Z_0-9]\{2\}[A-Z_0-9]\+\>"
syn match stdEnum "\<\h\w\+_t\>"
syn keyword definedCTypes uint8 uint16 uint32 uint64 int8 int16 int32 int64
syn keyword definedCTypes char8 char16 char32
syn keyword doxyTodo contained todo
syn match doxyComment "///.*" contains=doxyTodo

if version >= 508 || !exists("did_std_syntax_inits")
  if version < 508
    let did_std_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink stdConstant Constant
  HiLink stdEnum Type
  HiLink definedCTypes Type
  HiLink doxyTodo Todo
  HiLink doxyComment Comment
  delcommand HiLink
endif

if version < 600
  so <sfile>:p:h/glib.vim
  so <sfile>:p:h/gdk.vim
  so <sfile>:p:h/gtk.vim
  so <sfile>:p:h/gimp.vim
  so <sfile>:p:h/ifdef.vim
else
  runtime! syntax/glib.vim
  runtime! syntax/gdk.vim
  runtime! syntax/gtk.vim
  runtime! syntax/gimp.vim
  runtime! syntax/ifdef.vim
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight trailing whitespace characters, when the file is read.
hi WhiteSpaceEOL guibg=red
match WhiteSpaceEOL /\s\+\%#\@!$/

"Highlight spaces immediately before a tab:
"hi RedundantSpaces guibg=red
"match RedundantSpaces /\s\+$| \+\ze\t/

" Highlight improper if/for/while parenthesis spacing.
hi MissingSpaces guibg=red
match MissingSpaces /if(\|for(\|while(/

" Highlight long lines.
hi TooLongLines guibg=darkred
match TooLongLines /.\%82v.*/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" vim: set ft=vim :
