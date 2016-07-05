" Vim syntax file example
" Put it to ~/.vim/after/syntax/ and tailor to your needs.

syn keyword stdClass stringstream
syn keyword stdNamespace std
syn match stdConstant "\<[A-Z][A-Z_0-9]\+\>"
syn match stdEnum "\<\h\w\+_t\>"
syn keyword definedCppTypes boolean

" Default highlighting
if version >= 508 || !exists("did_std_syntax_inits")
  if version < 508
    let did_std_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink stdClass Class
  HiLink stdNamespace Namespace
  HiLink definedCppTypes Type
  delcommand HiLink
endif

if version < 600
"  so <sfile>:p:h/glib.vim
"  so <sfile>:p:h/gdk.vim
"  so <sfile>:p:h/gtk.vim
"  so <sfile>:p:h/gimp.vim
  so <sfile>:p:h/stl.vim
  so <sfile>:p:h/ifdef.vim
else
"  runtime! syntax/glib.vim
"  runtime! syntax/gdk.vim
"  runtime! syntax/gtk.vim
"  runtime! syntax/gimp.vim
  runtime! syntax/stl.vim
  runtime! syntax/ifdef.vim
endif


" vim: set ft=vim :
