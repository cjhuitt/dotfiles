
"syn keyword CADFunction 
"syn keyword CADTypedef 
"syn keyword CADConstant 
"syn keyword CADStruct 
syn keyword CADClass CADPane CADDisplayManager BodyContainerRow  StructuredBodyContainerRow StructuredBody TriangleBody UnstructuredBodyContainerRow UnstructuredBody RotorObject RotorNumBladesInterface RotorRadiusInterface TranslateInterface RotorConeAngleInterface DrawPreviewInterface RotorCutOutRadiusInterface RotorHingeOffsetInterface RotorPitchAngleInterface RotorBankAngleInterface RotorCutOutRadiusWidget RotorTranslateWidget RotorBankAngleWidget RotorHingeOffsetWidget RotorRadiusWidget RotorNumBladesWidget TranslateWidget TranslateWidget RotorConeAngleWidget RotorPitchAngleWidget CADObjectManager RotorCreateDialog CADFileSelectSave CommonData CADTaskManager ScaleInterface ScaleWidget RotateInterface RotateWidget TransformHistoryInterface ReportOutputInterface RotorReferenceTwistInterface RotorReferenceTwistWidget RotorBoxInterface RotorBoxWidget RotorDataPointsInterface RotorDataPointsWidget DataPointColumnEntry DataPointsEntryWindow RotorAirfoilTablesInterface RotorAirfoilTablesWidget UnstructuredCGNSBody StructuredCGNSBody UnstructuredCGNSContainerRow StructuredCGNSContainerRow FELBodyContainerRow CGNSBodyContainerRow
"syn keyword CADMacro 
syn keyword CADEnum BoxType DataPointsType CADFileSaveType
"syn keyword CADDefine 
syn keyword CADNamespace CAD

" Default highlighting
if version >= 508 || !exists("did_CAD_syntax_inits")
  if version < 508
    let did_CAD_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink CADFunction Function
"  HiLink CADTypedef Type
"  HiLink CADConstant Constant
"  HiLink CADStruct Type
  HiLink CADClass Class
"  HiLink CADUnion Type
"  HiLink CADMacro Macro
  HiLink CADEnum Type
"  HiLink CADDefine Constant
  HiLink CADNamespace Namespace
  delcommand HiLink
endif

