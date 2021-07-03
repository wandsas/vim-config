" vimwiki.vim
" https://github.com/vimwiki/vimwiki

" Tips and Snips
" https://vimwiki.github.io/vimwikiwiki/Tips%20and%20Snips.html

" Vimwiki setup
" https://opensource.com/article/18/6/vimwiki-gitlab-notes

" Vim help: Vimwiki mappings
" :h vimwiki-mappings

" wiki_1
let wiki_1 = {}
let wiki_1.path = '~/vimwiki'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let g:vimwiki_list = [wiki_1]

let g:vimwiki_list = [{'path': '~/vimwiki/', 'path_html': '~/vimiki/html', 'syntax': 'markdown', 'ext': '.md'}]

" Temporary Wikis
" treat every file with configured file-extension as a wiki
"let g:vimwiki_global_ext = 0

let g:GPGFilePattern = '*.\(gpg\|asc\|pgp\)\(.md\)\='

function! VimwikiFindIncompleteTasks()
  lvimgrep /- \[ \]/ %:p
  lopen
endfunction

" Vimwiki Tasks

let g:vimwiki_tasks_annotate_origin = 1
"let g:vimwiki_tasks_tags_nodue = ''
"let g:vimwiki_tasks_tags_duetime = ''
"let g:vimwiki_tasks_tags_duedate = ''

function! VimwikiFindAllIncompleteTasks()
  VimwikiSearch /- \[ \]/
  lopen
endfunction

nmap <Leader>wa :call VimwikiFindAllIncompleteTasks()<CR>
nmap <Leader>wx :call VimwikiFindIncompleteTasks()<CR>

" vim:fenc=utf-8:ft=vim:ts=2:sts=2:sw=2:et:
