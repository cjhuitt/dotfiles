
"syn keyword UC3DFunction 
"syn keyword UC3DTypedef 
"syn keyword UC3DConstant 
"syn keyword UC3DStruct 
syn keyword UC3DClass DisplayManager BodyRefinementWidget BoxRefinementWidget BoundaryRefinementWidget BoundaryInitialDivisionWidget BoxLocationWidget ObjectManager BodyContainerRow UnstructuredBody TriangleBody BoundaryObject UnstructuredBodyContainerRow StructuredBodyContainerRow StructuredBody BodyRefinementInterface BoundaryInitialDivisionInterface BoundaryRefinementInterface UC3DGridGenTaskManager UC3DGridGenApplicationPlugin UC3DGridGenScenario BoundaryPositionInterface BoundaryPositionWidget GridFileBodyOutputInterface GridFileSpecificationOutputInterface GridFileBoxRefinementInterface SolverRotorFileRotorOutputInterface GridSelectDialog GridGenProcess GridGeneratorProcessAddArgumentsInterface SolverPlugin UC3ISolverScenario UC3ISolverTaskManager BoundaryWallsInterface ReportBoundaryOutputInterface BoundaryFreeStreamInterface BoundaryWallsWidget BoundaryFreeStreamWidget OutputBoundaryConditionsInterface ReportBodyOutputInterface TopRefinementBoxRow RefinementBox BoxPositionInterface BoxPositionWidget
"syn keyword UC3DMacro 
syn keyword UC3DEnum InitialDivisionSide RefinementSide FileType Planes PositionType UnstructuredGridFormat StartupResult WallSide WallType WallValue
"syn keyword UC3DDefine 
syn keyword UC3DNamespace UC3DGridGen UC3ISolver

" Default highlighting
if version >= 508 || !exists("did_UC3D_syntax_inits")
  if version < 508
    let did_UC3D_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink UC3DFunction Function
"  HiLink UC3DTypedef Type
"  HiLink UC3DConstant Constant
"  HiLink UC3DStruct Type
  HiLink UC3DClass Class
"  HiLink UC3DUnion Type
"  HiLink UC3DMacro Macro
  HiLink UC3DEnum Type
"  HiLink UC3DDefine Constant
  HiLink UC3DNamespace Namespace
  delcommand HiLink
endif

