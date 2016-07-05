
"syn keyword flowvizFunction 
"syn keyword flowvizTypedef 
"syn keyword flowvizConstant 
syn keyword flowvizStruct UnsElements
syn keyword flowvizClass FlowVizTaskManager FVObjectManager MoviesWizard  Animation
"syn keyword flowvizMacro 
"syn keyword flowvizEnum 
"syn keyword flowvizDefine 
syn keyword flowvizNamespace FlowViz

" Default highlighting
if version >= 508 || !exists("did_flowviz_syntax_inits")
  if version < 508
    let did_flowviz_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink flowvizFunction Function
"  HiLink flowvizTypedef Type
"  HiLink flowvizConstant Constant
  HiLink flowvizStruct Type
  HiLink flowvizClass Class
"  HiLink flowvizUnion Type
"  HiLink flowvizMacro Macro
"  HiLink flowvizEnum Type
"  HiLink flowvizDefine Constant
  HiLink flowvizNamespace Namespace
  delcommand HiLink
endif

