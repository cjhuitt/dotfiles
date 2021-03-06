" Vim syntax file
" Language: C vte extension (for version 0.11.9)
" Maintainer: David Nečas (Yeti) <yeti@physics.muni.cz>
" Last Change: 2005-03-08
" URL: http://trific.ath.cx/Ftp/vim/syntax/gtk-syntax.tar.gz
" Generated By: vim-syn-gen.py
" Options: let vte_enable_deprecated = 1
"          enables highlighting of deprecated declarations (if any).

syn keyword vteFunction vte_bg_get vte_bg_get_pixbuf vte_bg_get_pixmap vte_bg_get_type vte_reaper_get vte_reaper_get_type vte_terminal_accessible_factory_get_type vte_terminal_accessible_factory_new vte_terminal_accessible_get_type vte_terminal_accessible_new vte_terminal_copy_clipboard vte_terminal_copy_primary vte_terminal_erase_binding_get_type vte_terminal_feed vte_terminal_feed_child vte_terminal_fork_command vte_terminal_get_adjustment vte_terminal_get_allow_bold vte_terminal_get_audible_bell vte_terminal_get_char_ascent vte_terminal_get_char_descent vte_terminal_get_char_height vte_terminal_get_char_width vte_terminal_get_column_count vte_terminal_get_cursor_position vte_terminal_get_emulation vte_terminal_get_encoding vte_terminal_get_font vte_terminal_get_has_selection vte_terminal_get_icon_title vte_terminal_get_mouse_autohide vte_terminal_get_padding vte_terminal_get_row_count vte_terminal_get_status_line vte_terminal_get_text vte_terminal_get_text_range vte_terminal_get_type vte_terminal_get_using_xft vte_terminal_get_visible_bell vte_terminal_get_window_title vte_terminal_im_append_menuitems vte_terminal_is_word_char vte_terminal_match_add vte_terminal_match_check vte_terminal_match_clear_all vte_terminal_match_remove vte_terminal_match_set_cursor vte_terminal_match_set_cursor_type vte_terminal_new vte_terminal_paste_clipboard vte_terminal_paste_primary vte_terminal_reset vte_terminal_set_allow_bold vte_terminal_set_audible_bell vte_terminal_set_background_image vte_terminal_set_background_image_file vte_terminal_set_background_saturation vte_terminal_set_background_tint_color vte_terminal_set_background_transparent vte_terminal_set_backspace_binding vte_terminal_set_color_background vte_terminal_set_color_bold vte_terminal_set_color_dim vte_terminal_set_color_foreground vte_terminal_set_colors vte_terminal_set_cursor_blinks vte_terminal_set_default_colors vte_terminal_set_delete_binding vte_terminal_set_emulation vte_terminal_set_encoding vte_terminal_set_font vte_terminal_set_font_from_string vte_terminal_set_mouse_autohide vte_terminal_set_scroll_background vte_terminal_set_scroll_on_keystroke vte_terminal_set_scroll_on_output vte_terminal_set_scrollback_lines vte_terminal_set_size vte_terminal_set_visible_bell vte_terminal_set_word_chars
syn keyword vteConstant VTE_DEBUG_CURSOR VTE_DEBUG_EVENTS VTE_DEBUG_IO VTE_DEBUG_KEYBOARD VTE_DEBUG_LIFECYCLE VTE_DEBUG_MISC VTE_DEBUG_PARSE VTE_DEBUG_PTY VTE_DEBUG_RING VTE_DEBUG_SELECTION VTE_DEBUG_SIGNALS VTE_DEBUG_SUBSTITUTION VTE_DEBUG_UPDATES VTE_ERASE_ASCII_BACKSPACE VTE_ERASE_ASCII_DELETE VTE_ERASE_AUTO VTE_ERASE_DELETE_SEQUENCE
syn keyword vteStruct VteBg VteBgClass VteCharAttributes VteReaper VteReaperClass VteRing VteTerminal VteTerminalAccessible VteTerminalAccessibleClass VteTerminalAccessibleFactory VteTerminalAccessibleFactoryClass VteTerminalClass VteTerminalPrivate vte_buffer vte_capability_quark vte_capability_string vte_draw vte_draw_impl vte_draw_text_request vte_glyph vte_glyph_cache vte_rgb_buffer
syn keyword vteMacro VTE_BG VTE_BG_CLASS VTE_BG_GET_CLASS VTE_IS_BG VTE_IS_BG_CLASS VTE_IS_REAPER VTE_IS_REAPER_CLASS VTE_IS_TERMINAL VTE_IS_TERMINAL_ACCESSIBLE VTE_IS_TERMINAL_ACCESSIBLE_CLASS VTE_IS_TERMINAL_ACCESSIBLE_FACTORY VTE_IS_TERMINAL_ACCESSIBLE_FACTORY_CLASS VTE_IS_TERMINAL_CLASS VTE_IS_TERMINAL_ERASE_BINDING VTE_REAPER VTE_REAPER_CLASS VTE_REAPER_GET_CLASS VTE_TERMINAL VTE_TERMINAL_ACCESSIBLE VTE_TERMINAL_ACCESSIBLE_CLASS VTE_TERMINAL_ACCESSIBLE_FACTORY VTE_TERMINAL_ACCESSIBLE_FACTORY_CLASS VTE_TERMINAL_ACCESSIBLE_FACTORY_GET_CLASS VTE_TERMINAL_ACCESSIBLE_GET_CLASS VTE_TERMINAL_CLASS VTE_TERMINAL_GET_CLASS
syn keyword vteEnum VteDebugFlags VteTerminalEraseBinding
syn keyword vteUserFunction VteRingFreeFunc
syn keyword vteDefine VTE_CONV_GUNICHAR_TYPE VTE_DRAW_DOUBLE_WIDE_CHARACTERS VTE_DRAW_MAX_LENGTH VTE_DRAW_OPAQUE VTE_DRAW_SINGLE_WIDE_CHARACTERS VTE_META_MASK VTE_NUMLOCK_MASK VTE_TYPE_BG VTE_TYPE_REAPER VTE_TYPE_TERMINAL VTE_TYPE_TERMINAL_ACCESSIBLE VTE_TYPE_TERMINAL_ACCESSIBLE_FACTORY VTE_TYPE_TERMINAL_ERASE_BINDING vte_glyph_all vte_glyph_double_underline

" Default highlighting
if version >= 508 || !exists("did_vte_syntax_inits")
  if version < 508
    let did_vte_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink vteFunction Function
  HiLink vteTypedef Type
  HiLink vteConstant Constant
  HiLink vteStruct Type
  HiLink vteUnion Type
  HiLink vteMacro Macro
  HiLink vteEnum Type
  HiLink vteUserFunction Type
  HiLink vteDefine Constant
  delcommand HiLink
endif

