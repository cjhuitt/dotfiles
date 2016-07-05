" Vim syntax file
" Language:	QMake
" Note: First part stolen shamelessly from conf.vim

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword	qmakeTodo	    contained TODO FIXME XXX
syn match	qmakeComment	"^#.*" contains=qmakeTodo
syn match	qmakeComment	"\s#.*"ms=s+1 contains=qmakeTodo
syn region	qmakeString	    start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region	qmakeString	    start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline
syn match   qmakeConstant   "\<[A-Z][A-Z_0-9]\+\>"
syn match   qmakeReferencedVar "$$\<\w\+\>"
syn match   qmakeTest       "^\s*!\?\w\+\(:!\?\w\+\)*: "me=e-2
syn match   qmakeTest       "^\s*!\?\w\+\(:!\?\w\+\)* {"me=e-2
syn match   qmakeTest       "\(} \)\?!\?\w\+\(:!\?\w\+\)* {"ms=s+2,me=e-2
syn keyword qmakeFunctionList contained transparent basename CONFIG \contains count dirname error eval exists find for include infile isEmpty join member message prompt quote replace sprintf system unique warning 
syn match   qmakeFunction  "\<\w\+\>\s*("me=e-1 contains=qmakeFunctionList 
syn match   qmakeNoSemicolons ";\s*$"

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link qmakeComment            Comment
hi def link qmakeTodo               Todo
hi def link qmakeString             String
hi def link qmakeConstant           Constant
hi def link qmakeReferencedVar      Identifier
hi def link qmakeTest               Special
hi def link qmakeFunction           Special
hi def link qmakeNoSemicolons       Error

let b:current_syntax = "qmake"

" vim: ts=8 sw=2
