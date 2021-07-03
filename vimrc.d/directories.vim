" directories.vim

if empty($XDG_CACHE_HOME)
	let $XDG_CACHE_HOME = fnamemodify("~/.cache", ":p:h")
endif


if !isdirectory($XDG_CACHE_HOME . "/vim/undo")
	call mkdir($XDG_CACHE_HOME . "/vim/undo", "p")
endif
set undodir=$XDG_CACHE_HOME/vim/undo//

if !isdirectory($XDG_CACHE_HOME . "/vim/backup")
	call mkdir($XDG_CACHE_HOME . "/vim/backup", "p")
endif
set backupdir=$XDG_CACHE_HOME/vim/backup//

set viminfo+=n$XDG_CACHE_HOME/vim/viminfo

" {{{ footer
" vim:fenc=utf-8:ft=vim:ts=2:sts=0:sw=2:et:foldmethod=marker:foldlevel=0:
" }}}
