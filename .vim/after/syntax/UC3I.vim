
"syn keyword UC3IFunction 
"syn keyword UC3ITypedef 
"syn keyword UC3IConstant 
syn keyword UC3IStruct SharedMemorySeg
syn keyword UC3IClass SolverPlugin UC3ISolverScenario UC3ISolverTaskManager SolverProcess ProcessFile SharedMemory ProcessInfo RestartSelectDialog UC3IScenarioMonitor
"syn keyword UC3IMacro 
syn keyword UC3IEnum SolverSteps SolverState ProcessState ProcessFileInfo
"syn keyword UC3IDefine 
syn keyword UC3INamespace UC3ISolver UC3I_IPC

" Default highlighting
if version >= 508 || !exists("did_UC3I_syntax_inits")
  if version < 508
    let did_UC3I_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink UC3IFunction Function
"  HiLink UC3ITypedef Type
"  HiLink UC3IConstant Constant
  HiLink UC3IStruct Type
  HiLink UC3IClass Class
"  HiLink UC3IUnion Type
"  HiLink UC3IMacro Macro
  HiLink UC3IEnum Type
"  HiLink UC3IDefine Constant
  HiLink UC3INamespace Namespace
  delcommand HiLink
endif

