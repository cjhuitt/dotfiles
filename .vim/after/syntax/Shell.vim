
"syn keyword ShellFunction 
"syn keyword ShellTypedef 
"syn keyword ShellConstant 
"syn keyword ShellStruct 
syn keyword ShellClass AboutWindow BaseDisplayManager BaseInterface BaseInterfaceWidget BaseObject BasePane BasePaneTool BaseZoomTool BoundingBox CommandLine CommonData ContainerRow DefineCurrentViewWindow DialogTemplate DisplayManager DisplayObject DisplaySetup DOPointer RIPointer EventLoop FastTool IDInterface LeafRow Menubar MeshHelper MovieManager NoObjectsLoaded ObjectManager ObjectPropertiesArea ObjectSelectTool Plugin PreferencesController PreferencesInfo PreferencesWindow RotateTool RotationPointSelectTool RowItem ShellPane SmartFastTool SmartRotateTool Toolbar TransformInformation TransformsWindow TranslateTool TreeOptionMenu UnloadFilesWindow UpdateFileDialog ViewportTaskManager VisibilityInterface ZoomInTool ZoomOutTool LoadByInterface InfoInterface CopyInterface SelectInterface IntersectInterface
"syn keyword ShellMacro 
syn keyword ShellEnum Dimensionality
"syn keyword ShellDefine 
syn keyword ShellNamespace Shell

" Default highlighting
if version >= 508 || !exists("did_Shell_syntax_inits")
  if version < 508
    let did_Shell_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink ShellFunction Function
"  HiLink ShellTypedef Type
"  HiLink ShellConstant Constant
"  HiLink ShellStruct Type
  HiLink ShellClass Class
"  HiLink ShellUnion Type
"  HiLink ShellMacro Macro
  HiLink ShellEnum Type
"  HiLink ShellDefine Constant
  HiLink ShellNamespace Namespace
  delcommand HiLink
endif

