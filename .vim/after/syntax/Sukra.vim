
"syn keyword sukraFunction 
"syn keyword sukraTypedef 
"syn keyword sukraConstant 
"syn keyword sukraStruct 
" Defined in sukrabase:
syn keyword sukraClass Array ChartFileManager CommandLine Exception FileIO FilePath InputFile InputFileWriter Pointer ConstPointer Pointer2 ConstPointer2 Processes ProcessSequenceControl ProcessSequence
" Defined in sukramath:
syn keyword sukraClass Matrix44
" Defined in sukragtkmm:
syn keyword sukraClass Adjustment BaseTool ButtonGroup ColorSelectWindow FileChangeManager GenericWindow HelpObj Menubar ModalWindowManager Pixmap ProgressWindow SmartEntry SmartLabel SortedFileList Toolbar ToolbarRadioButton glerrors ButtonApply ButtonCancel ButtonDismiss ButtonDone ButtonHelp ButtonLoad ButtonNo ButtonOK ButtonReset ButtonUnload ButtonYes ColorButton ColorComboButton IconButton ObjectToggleButton SmartButton TipButton AboutWindow ExitQueryDialog FileExists FileSelectDialog FileSelectDialogBase GenericDialog InfoDialogs NeverShowAgainDialog PrintDialog WorkingDialog FloatEntry IntegerEntry Entry FileInfoManager FileSelectWidget FileSelectEntryField BaseUndo JustRedo JustUndo UndoExceptions UndoNonEvent UndoSequence UndoSingle BaseWizardPage WizardStepList WizardWindow UndoManager SpinButton ToolbarButton ColumnEntry ColumnEntryData AnimatedPixmap
"syn keyword sukraMacro 
syn keyword sukraEnum AdvanceError ColumnEntryType
"syn keyword sukraDefine 
syn keyword sukraNamespace Sukra

" Default highlighting
if version >= 508 || !exists("did_sukra_syntax_inits")
  if version < 508
    let did_sukra_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink sukraFunction Function
"  HiLink sukraTypedef Type
"  HiLink sukraConstant Constant
"  HiLink sukraStruct Type
  HiLink sukraClass Class
"  HiLink sukraUnion Type
"  HiLink sukraMacro Macro
  HiLink sukraEnum Type
"  HiLink sukraDefine Constant
  HiLink sukraNamespace Namespace
  delcommand HiLink
endif

