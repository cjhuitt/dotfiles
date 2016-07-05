
"syn keyword gtkmmFunction 
"syn keyword gtkmmTypedef 
"syn keyword gtkmmConstant 
"syn keyword gtkmmStruct 
syn keyword gtkmmClass _GtkBoxChild ComboBoxEntry GlyphString OptionMenu TableList _GtkTableChild ComboBoxEntryText TargetEntry ComboBoxEntryText::TextModelColumns HandleBox Page TargetList AboutDialog ComboBoxText HBox PageIterator TearoffMenuElem AccelGroup ComboBoxText::TextModelColumns HButtonBox PageList TearoffMenuItem AccelKey ComboDropDown HPaned Paned Text AccelLabel ComboDropDownItem HRuler Pixbuf TextAttribute Action ComboDropDownList HScale PixbufAnimation TextAttributes Action Component HScrollbar PixbufAnimationIter TextBuffer ActionGroup Container HSeparator PixbufError TextChildAnchor Adjustment Context Hyperlink PixbufFormat TextIter Alignment Coverage Hypertext PixbufLoader TextMark Analysis Cursor Pixmap TextTag Arrow Curve IconFactory Plug TextTagTable AspectFrame IconInfo Point TextView AtomStringTraits Device IconSet ProgressBar ToggleAction AttrColor Dialog IconSize ToggleButton AttrFloat Display IconSource RadioAction ToggleToolButton AttrFontDesc DisplayManager IconTheme RadioButton Toolbar Attribute Document IconThemeError RadioButtonGroup ToolButton Attribute DragContext IconView RadioMenuElem ToolItem AttributeTraits Drawable Image RadioMenuItem Tooltips AttributeTraits DrawingArea Image RadioToolButton TreeDragDest AttrInt Image Range TreeDragSource AttrIter Editable ImageMenuElem RC TreeIter AttrLanguage EditableText ImageMenuItem RcStyle TreeIterBase AttrList Element Implementor Rectangle TreeModel AttrShape Element InputDialog Rectangle TreeModelColumn AttrString Element Invisible Region TreeModelColumnBase EndElem Item Relation TreeModelColumnRecord Bin Entry Item RelationSet TreeModelFilter Bitmap EntryCompletion ItemTraits Renderer TreeModelSort Box Event RgbCmap TreeNodeChildren BoxList EventBox Label Ruler TreePath BuiltinStockID Expander Language TreeRow Button Layout Scale TreeRowReference ButtonBox FileChooser Layout Screen TreeSelection FileChooserButton LayoutIter Scrollbar TreeSortable Calendar FileChooserDialog LayoutLine ScrolledWindow TreeStore CellEditable FileChooserError LayoutLineTraits Selection TreeValueProxy CellLayout FileChooserWidget LayoutRun SelectionData TreeView CellRenderer FileFilter ListStore Separator TreeViewColumn CellRendererCombo FileFilter::Info SeparatorElem CellRendererPixbuf FileSelection Main SeparatorMenuItem UIManager CellRendererProgress Fixed Menu SeparatorToolItem CellRendererText Font MenuBar Settings Value CellRendererToggle FontButton MenuElem SizeGroup VBox CellView FontDescription MenuElem Socket VButtonBox CheckButton FontFace MenuItem SpinButton Viewport CheckMenuElem FontFamily MenuList StateSet Visual CheckMenuItem FontMap MenuShell Statusbar VPaned Child FontMetrics MenuToolButton StockID VRuler Child FontSelection MessageDialog StockItem VScale Clipboard FontSelectionDialog Misc StockMenuElem VScrollbar Color Fontset StreamableContent VSeparator Color Frame NoOpObject Style ColorButton Notebook Widget Colormap GammaCurve TabArray Window ColorSelection GC Object TabElem Window ColorSelectionDialog GlyphGeometry Object Table WindowGroup Combo Tree List CTree CList
"syn keyword gtkmmMacro 
"syn keyword gtkmmEnum 
"syn keyword gtkmmDefine 
syn keyword gtkmmNamespace Gtk

" Default highlighting
if version >= 508 || !exists("did_gtk_syntax_inits")
  if version < 508
    let did_gtkmm_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink gtkmmFunction Function
"  HiLink gtkmmTypedef Type
"  HiLink gtkmmConstant Constant
"  HiLink gtkmmStruct Type
  HiLink gtkmmClass Class
"  HiLink gtkmmUnion Type
"  HiLink gtkmmMacro Macro
"  HiLink gtkmmEnum Type
"  HiLink gtkmmDefine Constant
  HiLink gtkmmNamespace Namespace
  delcommand HiLink
endif

