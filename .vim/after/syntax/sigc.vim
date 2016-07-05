
syn keyword sigcFunction bind slot
"syn keyword sigcTypedef 
"syn keyword sigcConstant 
"syn keyword sigcStruct 
syn keyword sigcClass Signal0 Signal1 Signal2 Signal3 Signal4 Signal5 Signal6 Connection
"syn keyword sigcMacro 
"syn keyword sigcEnum 
"syn keyword sigcDefine 
syn keyword sigcNamespace SigC 

" Default highlighting
if version >= 508 || !exists("did_sigc_syntax_inits")
  if version < 508
    let did_sigc_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink sigcFunction Function
"  HiLink sigcTypedef Type
"  HiLink sigcConstant Constant
"  HiLink sigcStruct Type
  HiLink sigcClass Class
"  HiLink sigcUnion Type
"  HiLink sigcMacro Macro
"  HiLink sigcEnum Type
"  HiLink sigcDefine Constant
  HiLink sigcNamespace Namespace
  delcommand HiLink
endif

