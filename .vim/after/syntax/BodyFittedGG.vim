
"syn keyword bodyfittedGGFunction 
"syn keyword bodyfittedGGTypedef 
"syn keyword bodyfittedGGConstant 
"syn keyword bodyfittedGGStruct 
syn keyword bodyfittedGGClass BaseStepButton FindRegionsButton FindSurfaceGridButton LoadBodiesButton FindBodyFittedButton DisplayManager TopRow RegionContainerRow BodyContainerRow TopRegionsRow TopSurfaceRow BodyRow TopBodiesRow StructuredBodyContainerRow UnstructuredRegion UnstructuredBodyContainerRow StructuredBody UnstructuredBody TriangleBody ObjectManager SplitIntoRegionsInterface SplitIntoRegionsWidget HybridGGTaskManager RegionNumberInterface MergeRegionsInterface SplitRegionInterface SplitRegionWidget MergeRegionsWidget SurfaceContainerRow StructuredSurfaceGrid SurfaceGridInterface SurfaceGridWidget TopBodyFittedRow BodyFittedContainerRow UnstructuredBodyFittedGrid
"syn keyword bodyfittedGGMacro 
syn keyword bodyfittedGGEnum GridSteps
"syn keyword bodyfittedGGDefine 
syn keyword bodyfittedGGNamespace BodyFittedGG

" Default highlighting
if version >= 508 || !exists("did_bodyfittedGG_syntax_inits")
  if version < 508
    let did_bodyfittedGG_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink bodyfittedGGFunction Function
"  HiLink bodyfittedGGTypedef Type
"  HiLink bodyfittedGGConstant Constant
"  HiLink bodyfittedGGStruct Type
  HiLink bodyfittedGGClass Class
"  HiLink bodyfittedGGUnion Type
"  HiLink bodyfittedGGMacro Macro
  HiLink bodyfittedGGEnum Type
"  HiLink bodyfittedGGDefine Constant
  HiLink bodyfittedGGNamespace Namespace
  delcommand HiLink
endif

