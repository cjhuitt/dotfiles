
"syn keyword SolverIPCFunction 
"syn keyword SolverIPCTypedef 
"syn keyword SolverIPCConstant 
"syn keyword SolverIPCStruct 
syn keyword SolverIPCClass ProcessInfo SharedMemory
"syn keyword SolverIPCMacro 
syn keyword SolverIPCEnum SharedMemorySeg
"syn keyword SolverIPCDefine 
syn keyword SolverIPCNamespace SolverIPC

" Default highlighting
if version >= 508 || !exists("did_SolverIPC_syntax_inits")
  if version < 508
    let did_SolverIPC_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink SolverIPCFunction Function
"  HiLink SolverIPCTypedef Type
"  HiLink SolverIPCConstant Constant
"  HiLink SolverIPCStruct Type
  HiLink SolverIPCClass Class
"  HiLink SolverIPCUnion Type
"  HiLink SolverIPCMacro Macro
  HiLink SolverIPCEnum Type
"  HiLink SolverIPCDefine Constant
  HiLink SolverIPCNamespace Namespace
  delcommand HiLink
endif

