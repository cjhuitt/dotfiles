
"syn keyword SY3DFunction 
syn keyword SY3DTypedef RatioType
"syn keyword SY3DConstant 
"syn keyword SY3DStruct 
syn keyword SY3DClass DisplayManager ObjectManager BodyContainerRow UnstructuredBody TriangleBody BoundaryObject UnstructuredBodyContainerRow StructuredBodyContainerRow StructuredBody TaskManager Plugin Scenario BoundaryPositionInterface BoundaryPositionWidget GridFileBodyOutputInterface GridFileSpecificationOutputInterface GridFileBoxRefinementInterface SolverRotorFileRotorOutputInterface GridGenProcess GridGeneratorProcessAddArgumentsInterface BoundaryWallsInterface ReportBoundaryOutputInterface BoundaryFreeStreamInterface BoundaryWallsWidget BoundaryFreeStreamWidget OutputBoundaryConditionsInterface ReportBodyOutputInterface SY3DGridGenPlugin TopLayerRow MidLayerRow LayerRow BodyRefinementLayers XRefinementLayers YRefinementLayers ZRefinementLayers XBodyLayer YBodyLayer ZBodyLayer AddLayerInterface AddLayerWidget BodyBoundsInterface BodyObjectsInterface BodyLayerDimensionsInterface BodyLayerDimensionsWidget LayerGridlinesInterface BodyLayerRow LayerGridlinesWidget LayerBoundaryInterface FreeSpaceRefinementLayers TopRefinementLayers BottomRefinementLayers FrontRefinementLayers BackRefinementLayers RightRefinementLayers LeftRefinementLayers FreeSpaceLayerRow TopFreeSpaceLayer BottomFreeSpaceLayer FrontFreeSpaceLayer BackFreeSpaceLayer RightFreeSpaceLayer LeftFreeSpaceLayer MidFreeSpaceLayerRow StartPositionInterface BodySuppliedBoundsInterface BodyLayerSuppliedBoundsInterface BodyLayerObjectsInterface LayerFileSpecificationOutputInterface LayerFileNumberOutputInterface LayerRatioInterface LayerRatioWidget FreeSpaceSizeInterface FreeSpaceSizeWidget BoundarySpecificationInterface BodyLayerGridLineClampInterface BodyLayerGridLineClampWidget ReportBodyLayerInterface ReportFreeSpaceLayerInterface
"syn keyword SY3DMacro 
syn keyword SY3DEnum StartupResult WallSide WallType WallValue
"syn keyword SY3DDefine 
syn keyword SY3DNamespace SY3DGridGen 

" Default highlighting
if version >= 508 || !exists("did_SY3D_syntax_inits")
  if version < 508
    let did_SY3D_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink SY3DFunction Function
  HiLink SY3DTypedef Type
"  HiLink SY3DConstant Constant
"  HiLink SY3DStruct Type
  HiLink SY3DClass Class
"  HiLink SY3DUnion Type
"  HiLink SY3DMacro Macro
  HiLink SY3DEnum Type
"  HiLink SY3DDefine Constant
  HiLink SY3DNamespace Namespace
  delcommand HiLink
endif

