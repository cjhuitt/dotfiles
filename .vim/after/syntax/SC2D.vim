
"syn keyword SC2DFunction 
syn keyword SC2DTypedef RatioType
"syn keyword SC2DConstant 
"syn keyword SC2DStruct 
syn keyword SC2DClass DisplayManager ObjectManager BodyContainerRow UnstructuredBody TriangleBody BoundaryObject UnstructuredBodyContainerRow StructuredBodyContainerRow StructuredBody TaskManager Plugin Scenario BoundaryPositionInterface BoundaryPositionWidget GridFileBodyOutputInterface GridFileSpecificationOutputInterface GridFileBoxRefinementInterface SolverRotorFileRotorOutputInterface GridGenProcess GridGeneratorProcessAddArgumentsInterface BoundaryWallsInterface ReportBoundaryOutputInterface BoundaryFreeStreamInterface BoundaryWallsWidget BoundaryFreeStreamWidget OutputBoundaryConditionsInterface ReportBodyOutputInterface SC2DGridGenPlugin TopLayerRow MidLayerRow LayerRow BodyRefinementLayers XRefinementLayers YRefinementLayers ZRefinementLayers XBodyLayer YBodyLayer ZBodyLayer AddLayerInterface AddLayerWidget BodyBoundsInterface BodyObjectsInterface BodyLayerDimensionsInterface BodyLayerDimensionsWidget LayerGridlinesInterface BodyLayerRow LayerGridlinesWidget LayerBoundaryInterface FreeSpaceRefinementLayers TopRefinementLayers BottomRefinementLayers FrontRefinementLayers BackRefinementLayers RightRefinementLayers LeftRefinementLayers FreeSpaceLayerRow TopFreeSpaceLayer BottomFreeSpaceLayer FrontFreeSpaceLayer BackFreeSpaceLayer RightFreeSpaceLayer LeftFreeSpaceLayer MidFreeSpaceLayerRow StartPositionInterface BodySuppliedBoundsInterface BodyLayerSuppliedBoundsInterface BodyLayerObjectsInterface LayerFileSpecificationOutputInterface LayerFileNumberOutputInterface LayerRatioInterface LayerRatioWidget FreeSpaceSizeInterface FreeSpaceSizeWidget BoundarySpecificationInterface BodyLayerGridLineClampInterface BodyLayerGridLineClampWidget ReportBodyLayerInterface ReportFreeSpaceLayerInterface
"syn keyword SC2DMacro 
syn keyword SC2DEnum StartupResult WallSide WallType WallValue
"syn keyword SC2DDefine 
syn keyword SC2DNamespace SC2DGridGen 

" Default highlighting
if version >= 508 || !exists("did_SC2D_syntax_inits")
  if version < 508
    let did_SC2D_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink SC2DFunction Function
  HiLink SC2DTypedef Type
"  HiLink SC2DConstant Constant
"  HiLink SC2DStruct Type
  HiLink SC2DClass Class
"  HiLink SC2DUnion Type
"  HiLink SC2DMacro Macro
  HiLink SC2DEnum Type
"  HiLink SC2DDefine Constant
  HiLink SC2DNamespace Namespace
  delcommand HiLink
endif

