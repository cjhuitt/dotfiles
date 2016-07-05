" Vim syntax file
" Language: C linc extension (for version 1.1.1)
" Maintainer: David Nečas (Yeti) <yeti@physics.muni.cz>
" Last Change: 2005-03-08
" URL: http://trific.ath.cx/Ftp/vim/syntax/gtk-syntax.tar.gz
" Generated By: vim-syn-gen.py
" Options: let linc_enable_deprecated = 1
"          enables highlighting of deprecated declarations (if any).

syn keyword lincFunction linc_connection_disconnect linc_connection_from_fd linc_connection_get_status linc_connection_get_type linc_connection_initiate linc_connection_read linc_connection_set_max_buffer linc_connection_state_changed linc_connection_wait_connected linc_connection_write linc_connection_writev linc_get_tmpdir linc_init linc_io_add_watch linc_io_remove_watch linc_main_get_loop linc_main_idle_add linc_main_iteration linc_main_loop_run linc_main_pending linc_mutex_new linc_object_get_mutex linc_object_ref linc_object_unref linc_server_get_type linc_server_setup linc_set_threaded linc_set_tmpdir linc_shutdown linc_source_create_watch linc_source_set_condition linc_write_options_free linc_write_options_new
syn keyword lincTypedef LincSockLen
syn keyword lincConstant LINC_CONNECTION_BLOCK_SIGNAL LINC_CONNECTION_LOCAL_ONLY LINC_CONNECTION_NONBLOCKING LINC_CONNECTION_SSL LINC_IO_FATAL_ERROR LINC_IO_OK LINC_IO_QUEUED_DATA LINC_PROTOCOL_NEEDS_BIND LINC_PROTOCOL_SECURE
syn keyword lincStruct LINCConnection LINCConnectionClass LINCConnectionPrivate LINCProtocolInfo LINCServer LINCServerClass LINCServerPrivate LINCWriteOpts LincWatch
syn keyword lincMacro LINC_CONNECTION LINC_CONNECTION_CLASS LINC_IS_CONNECTION LINC_IS_CONNECTION_CLASS LINC_IS_SERVER LINC_IS_SERVER_CLASS LINC_MUTEX_LOCK LINC_MUTEX_UNLOCK LINC_SERVER LINC_SERVER_CLASS LINC_TYPE_IS_CONNECTION LINC_TYPE_IS_SERVER STATE_NAME d_printf
syn keyword lincEnum LINCConnectionOptions LINCConnectionStatus LINCIOStatus LINCProtocolFlags
syn keyword lincUserFunction LINCProtocolDestroyFunc LINCProtocolGetSockInfoFunc LINCProtocolIsLocal LINCProtocolSetupFunc
syn keyword lincDefine INADDR_NONE LINC_SSL_SUPPORT LINC_TYPE_CONNECTION LINC_TYPE_SERVER LINC_UNIX_PATH_MAX NI_MAXHOST NI_MAXSERV

" Default highlighting
if version >= 508 || !exists("did_linc_syntax_inits")
  if version < 508
    let did_linc_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink lincFunction Function
  HiLink lincTypedef Type
  HiLink lincConstant Constant
  HiLink lincStruct Type
  HiLink lincUnion Type
  HiLink lincMacro Macro
  HiLink lincEnum Type
  HiLink lincUserFunction Type
  HiLink lincDefine Constant
  delcommand HiLink
endif

