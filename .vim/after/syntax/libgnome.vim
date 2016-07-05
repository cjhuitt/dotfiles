" Vim syntax file
" Language: C libgnome extension (for version 2.8.0)
" Maintainer: David Nečas (Yeti) <yeti@physics.muni.cz>
" Last Change: 2005-03-08
" URL: http://trific.ath.cx/Ftp/vim/syntax/gtk-syntax.tar.gz
" Generated By: vim-syn-gen.py
" Options: let libgnome_enable_deprecated = 1
"          enables highlighting of deprecated declarations (if any).

syn keyword libgnomeFunction g_extension_pointer gnome_bonobo_module_info_get gnome_clearenv gnome_config_assemble_vector gnome_config_clean_file_ gnome_config_clean_key_ gnome_config_clean_section_ gnome_config_drop_all gnome_config_drop_file_ gnome_config_get_bool_with_default_ gnome_config_get_float_with_default_ gnome_config_get_int_with_default_ gnome_config_get_string_with_default_ gnome_config_get_translated_string_with_default_ gnome_config_get_vector_with_default_ gnome_config_has_section_ gnome_config_init_iterator_ gnome_config_init_iterator_sections_ gnome_config_iterator_next gnome_config_make_vector gnome_config_pop_prefix gnome_config_push_prefix gnome_config_set_bool_ gnome_config_set_float_ gnome_config_set_int_ gnome_config_set_set_handler gnome_config_set_string_ gnome_config_set_sync_handler gnome_config_set_translated_string_ gnome_config_set_vector_ gnome_config_sync gnome_config_sync_file_ gnome_execute_async gnome_execute_async_fds gnome_execute_async_with_env gnome_execute_async_with_env_fds gnome_execute_shell gnome_execute_shell_fds gnome_execute_terminal_shell gnome_execute_terminal_shell_fds gnome_file_domain_get_type gnome_gconf_get_app_settings_relative gnome_gconf_get_gnome_libs_settings_relative gnome_help_display gnome_help_display_desktop gnome_help_display_desktop_with_env gnome_help_display_uri gnome_help_display_uri_with_env gnome_help_display_with_doc_id gnome_help_display_with_doc_id_and_env gnome_help_error_get_type gnome_help_error_quark gnome_i18n_get_language_list gnome_i18n_pop_c_numeric_locale gnome_i18n_push_c_numeric_locale gnome_module_info_get_type gnome_prepend_terminal_to_vector gnome_program_get gnome_program_get_app_id gnome_program_get_app_version gnome_program_get_human_readable_name gnome_program_get_type gnome_program_init gnome_program_init_paramv gnome_program_initv gnome_program_install_property gnome_program_locate_file gnome_program_module_load gnome_program_module_register gnome_program_module_registered gnome_program_parse_args gnome_program_postinit gnome_program_preinit gnome_score_get_notable gnome_score_init gnome_score_log gnome_setenv gnome_sound_connection_get gnome_sound_init gnome_sound_play gnome_sound_sample_load gnome_sound_shutdown gnome_trigger_type_get_type gnome_triggers_add_trigger gnome_triggers_do gnome_triggers_vadd_trigger gnome_triggers_vdo gnome_unsetenv gnome_url_error_get_type gnome_url_error_quark gnome_url_show gnome_url_show_with_env gnome_user_accels_dir_get gnome_user_dir_get gnome_user_private_dir_get gnome_util_user_shell libgnome_module_info_get
syn keyword libgnomeConstant GNOME_FILE_DOMAIN_APP_CONFIG GNOME_FILE_DOMAIN_APP_DATADIR GNOME_FILE_DOMAIN_APP_HELP GNOME_FILE_DOMAIN_APP_LIBDIR GNOME_FILE_DOMAIN_APP_PIXMAP GNOME_FILE_DOMAIN_APP_SOUND GNOME_FILE_DOMAIN_CONFIG GNOME_FILE_DOMAIN_DATADIR GNOME_FILE_DOMAIN_HELP GNOME_FILE_DOMAIN_LIBDIR GNOME_FILE_DOMAIN_PIXMAP GNOME_FILE_DOMAIN_SOUND GNOME_FILE_DOMAIN_UNKNOWN GNOME_HELP_ERROR_INTERNAL GNOME_HELP_ERROR_NOT_FOUND GNOME_URL_ERROR_LAUNCH GNOME_URL_ERROR_NOT_SUPPORTED GNOME_URL_ERROR_NO_DEFAULT GNOME_URL_ERROR_PARSE GNOME_URL_ERROR_URL GNOME_URL_ERROR_VFS GTRIG_COMMAND GTRIG_FUNCTION GTRIG_MEDIAPLAY GTRIG_NONE
syn keyword libgnomeStruct GnomeModuleInfo GnomeModuleRequirement GnomeProgram GnomeProgramClass GnomeProgramPrivate GnomeTrigger
syn keyword libgnomeMacro GNOME_CALL_PARENT GNOME_CALL_PARENT_WITH_DEFAULT GNOME_CLASS_BOILERPLATE GNOME_IS_PROGRAM GNOME_IS_PROGRAM_CLASS GNOME_PROGRAM GNOME_PROGRAM_CLASS GNOME_REGISTER_TYPE gnome_config_clean_file gnome_config_clean_key gnome_config_clean_section gnome_config_drop_file gnome_config_get_bool gnome_config_get_bool_with_default gnome_config_get_float gnome_config_get_float_with_default gnome_config_get_int gnome_config_get_int_with_default gnome_config_get_real_path gnome_config_get_string gnome_config_get_string_with_default gnome_config_get_translated_string gnome_config_get_translated_string_with_default gnome_config_get_vector gnome_config_get_vector_with_default gnome_config_has_section gnome_config_init_iterator gnome_config_init_iterator_sections gnome_config_private_clean_file gnome_config_private_clean_key gnome_config_private_clean_section gnome_config_private_drop_file gnome_config_private_get_bool gnome_config_private_get_bool_with_default gnome_config_private_get_float gnome_config_private_get_float_with_default gnome_config_private_get_int gnome_config_private_get_int_with_default gnome_config_private_get_real_path gnome_config_private_get_string gnome_config_private_get_string_with_default gnome_config_private_get_translated_string gnome_config_private_get_translated_string_with_default gnome_config_private_get_vector gnome_config_private_get_vector_with_default gnome_config_private_has_section gnome_config_private_init_iterator gnome_config_private_init_iterator_sections gnome_config_private_set_bool gnome_config_private_set_float gnome_config_private_set_int gnome_config_private_set_string gnome_config_private_set_translated_string gnome_config_private_set_vector gnome_config_private_sync_file gnome_config_set_bool gnome_config_set_float gnome_config_set_int gnome_config_set_string gnome_config_set_translated_string gnome_config_set_vector gnome_config_sync_file gnome_util_home_file gnome_util_prepend_user_home
syn keyword libgnomeEnum GnomeFileDomain GnomeHelpError GnomeTriggerType GnomeURLError
syn keyword libgnomeUserFunction GnomeModuleClassInitHook GnomeModuleHook GnomeModuleInitHook GnomeTriggerActionFunction
syn keyword libgnomeDefine BONOBO_EXPLICIT_TRANSLATION_DOMAIN GNOME_BONOBO_MODULE GNOME_DOT_GNOME GNOME_DOT_GNOME_PRIVATE GNOME_HELP_ERROR GNOME_PARAM_APP_DATADIR GNOME_PARAM_APP_ID GNOME_PARAM_APP_LIBDIR GNOME_PARAM_APP_PREFIX GNOME_PARAM_APP_SYSCONFDIR GNOME_PARAM_APP_VERSION GNOME_PARAM_CREATE_DIRECTORIES GNOME_PARAM_ENABLE_SOUND GNOME_PARAM_ESPEAKER GNOME_PARAM_GNOME_DATADIR GNOME_PARAM_GNOME_LIBDIR GNOME_PARAM_GNOME_PATH GNOME_PARAM_GNOME_PREFIX GNOME_PARAM_GNOME_SYSCONFDIR GNOME_PARAM_HUMAN_READABLE_NAME GNOME_PARAM_NONE GNOME_PARAM_POPT_CONTEXT GNOME_PARAM_POPT_FLAGS GNOME_PARAM_POPT_TABLE GNOME_PROGRAM_STANDARD_PROPERTIES GNOME_TYPE_FILE_DOMAIN GNOME_TYPE_HELP_ERROR GNOME_TYPE_MODULE_INFO GNOME_TYPE_PROGRAM GNOME_TYPE_TRIGGER_TYPE GNOME_TYPE_URL_ERROR GNOME_URL_ERROR LIBGNOME_MODULE
if exists("libgnome_enable_deprecated")
syn keyword libgnomeMacro g_concat_dir_and_file g_copy_vector g_file_exists g_unix_error_string gnome_config_file gnome_datadir_file gnome_is_program_in_path gnome_libdir_file gnome_pixmap_file gnome_sound_file gnome_unconditional_config_file gnome_unconditional_datadir_file gnome_unconditional_libdir_file gnome_unconditional_pixmap_file gnome_unconditional_sound_file gnome_util_user_home
endif

" Default highlighting
if version >= 508 || !exists("did_libgnome_syntax_inits")
  if version < 508
    let did_libgnome_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink libgnomeFunction Function
  HiLink libgnomeTypedef Type
  HiLink libgnomeConstant Constant
  HiLink libgnomeStruct Type
  HiLink libgnomeUnion Type
  HiLink libgnomeMacro Macro
  HiLink libgnomeEnum Type
  HiLink libgnomeUserFunction Type
  HiLink libgnomeDefine Constant
  delcommand HiLink
endif
