
"syn keyword SolverGUIFunction 
"syn keyword SolverGUITypedef 
"syn keyword SolverGUIConstant 
"syn keyword SolverGUIStruct 
syn keyword SolverGUIClass VehiclesTab SolverParmsTab PlaneSweepsWidget FlowPropertiesWidget TimeGridWidget TimeSchemeWidget OutputTab RestartSettingsWidget BodyPressureCalcWidget RotorPerfCalcWidget ProgressTaskManager FileMonitorWidget ProgressMonitor SolverInputTaskManager
"syn keyword SolverGUIMacro 
syn keyword SolverGUIEnum TimeScheme
"syn keyword SolverGUIDefine 
syn keyword SolverGUINamespace SolverGUI

" Default highlighting
if version >= 508 || !exists("did_SolverGUI_syntax_inits")
  if version < 508
    let did_SolverGUI_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink SolverGUIFunction Function
"  HiLink SolverGUITypedef Type
"  HiLink SolverGUIConstant Constant
"  HiLink SolverGUIStruct Type
  HiLink SolverGUIClass Class
"  HiLink SolverGUIUnion Type
"  HiLink SolverGUIMacro Macro
  HiLink SolverGUIEnum Type
"  HiLink SolverGUIDefine Constant
  HiLink SolverGUINamespace Namespace
  delcommand HiLink
endif

