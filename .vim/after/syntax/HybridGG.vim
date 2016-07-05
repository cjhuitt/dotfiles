
"syn keyword hybridGGFunction 
"syn keyword hybridGGTypedef 
"syn keyword hybridGGConstant 
syn keyword hybridGGStruct SurfaceRegionsStruct BodyGridStruct VolumeGridStruct
syn keyword hybridGGClass ObjectManager HybridGGPlugin BodyFittedTaskMan UnstructuredGGTaskManager HybridGGScenario ObjectValidInterface ShowLinesInterface ShowPointsInterface AddCornerInterface GetSectionElementsInterface AddBorderWidget AddCornerWidget SectionContainerRow SectionBorder SectionCorner SectionBorderContainerRow SectionCornerContainerRow UpdateSurfaceSectionPointersInterface CreateUpdateSectionsInterface GetElementInterface AdjustSurfaceSectionInterface AddBorderOnSurfaceWidget ConnectElementsWidget AddBorderInterface ObjectValidWidget CollapseCornerInterface CollapseCornerWidget UpdateBodyGridSectionPointersInterface ExtrudedGridInterface ExtrudedGridWidget GridShellBufferInterface GridShellBufferWidget UpdateShellGridInterface SectionRegion SectionRegionContainerRow SurfaceGrid SurfaceGridContainerRow BodyFittedGrid 
"syn keyword hybridGGMacro 
syn keyword hybridGGEnum GridSteps AddBorderMethod AddCornerMethod
"syn keyword hybridGGDefine 
syn keyword hybridGGNamespace HybridGG

" Default highlighting
if version >= 508 || !exists("did_hybridGG_syntax_inits")
  if version < 508
    let did_hybridGG_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink hybridGGFunction Function
"  HiLink hybridGGTypedef Type
"  HiLink hybridGGConstant Constant
  HiLink hybridGGStruct Type
  HiLink hybridGGClass Class
"  HiLink hybridGGUnion Type
"  HiLink hybridGGMacro Macro
  HiLink hybridGGEnum Type
"  HiLink hybridGGDefine Constant
  HiLink hybridGGNamespace Namespace
  delcommand HiLink
endif

