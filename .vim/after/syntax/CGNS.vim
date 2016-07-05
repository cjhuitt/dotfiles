" Vim syntax file
" Language: C++ cgns extension (for version 2.6.0)
" Maintainer: Caleb Huitt
" Last Change: 2005-06-03

syn match cgnsFunction "cg_[A-Za-z_]\+[^A-Za-z_]"me=e-1
"syn match cgnsTypedef 
"syn keyword cgnsConstant 
"syn keyword cgnsStruct 
"syn keyword cgnsClass 
"syn keyword cgnsMacro 
syn match cgnsEnum "[A-Za-z]\+_t[^A-Za-z_]"me=e-1
"syn keyword cgnsUserFunction 
"syn keyword cgnsDefine 
"syn keyword cgnsNamespace

" Default highlighting
if version >= 508 || !exists("did_cgns_syntax_inits")
  if version < 508
    let did_cgns_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cgnsFunction Function
"  HiLink cgnsTypedef Type
"  HiLink cgnsConstant Constant
"  HiLink cgnsStruct Type
"  HiLink cgnsClass Class
"  HiLink cgnsUnion Type
"  HiLink cgnsMacro Macro
  HiLink cgnsEnum Type
"  HiLink cgnsUserFunction Type
"  HiLink cgnsDefine Constant
"  HiLink cgnsNamespace Namespace
  delcommand HiLink
endif

