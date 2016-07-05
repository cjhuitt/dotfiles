
"syn keyword Rot3DCFunction 
"syn keyword Rot3DCTypedef 
"syn keyword Rot3DCConstant 
"syn keyword Rot3DCStruct 
syn keyword Rot3DCClass AboutWindow ApplicationPage ApplicationPlugin BaseScenario BaseTaskManager CoordinatePage DefineCurrentViewWindow DimensionsPage EventLoop MainWindow Menubar MonitorScenariosWindow NamePage NewScenarioWizardList PreferencesController PreferencesFileIO PreferencesInfo PreferencesWindow ScenarioApplication ScenarioFileIO ScenarioProfile ScriptManager StartupWindow StructuredPage SummaryPage Toolbar VehiclesPage
"syn keyword Rot3DCMacro 
syn keyword Rot3DCEnum PaneType PredefinedViewType RedrawType OpenFileType
"syn keyword Rot3DCDefine 
syn keyword Rot3DCNamespace Rot3DC

" Default highlighting
if version >= 508 || !exists("did_Rot3DC_syntax_inits")
  if version < 508
    let did_Rot3DC_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink Rot3DCFunction Function
"  HiLink Rot3DCTypedef Type
"  HiLink Rot3DCConstant Constant
"  HiLink Rot3DCStruct Type
  HiLink Rot3DCClass Class
"  HiLink Rot3DCUnion Type
"  HiLink Rot3DCMacro Macro
  HiLink Rot3DCEnum Type
"  HiLink Rot3DCDefine Constant
  HiLink Rot3DCNamespace Namespace
  delcommand HiLink
endif

