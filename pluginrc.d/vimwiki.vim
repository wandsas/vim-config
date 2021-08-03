" Vimwiki.vim plugin
" https://github.com/vimwiki/vimwiki

" Vimwiki setup
" https://opensource.com/article/18/6/vimwiki-gitlab-notes

" Vimwiki keybindings
" :h vimwiki-mappings

" Vimwiki Tips and Snips
" https://vimwiki.github.io/vimwikiwiki/Tips%20and%20Snips.html

" Main configuration
let g:vimwiki_list = [{'path': '~/.vimwiki/index.md',
         \        'path_html': '~/.vimiki/html/index.html',
         \           'syntax': 'markdown',
         \              'ext': '.md',
         \            'index': 'index',
         \ 'custom_wiki2html': '~/.vimwiki/scripts/wiki2html.sh',
         \   'diary_rel_path': strftime('diary/%Y')}]

" Whenever vimwiki is openend, it autochanges to the root wiki folder (set in g:vimwiki_list).
let g:vimwiki_auto_chdir = 1

" Commit vimwiki changes to git repo, when BufWritePost autocmd event is executed.
autocmd BufWritePost ~/vimwiki/* execute '! git add ~/.vimwiki/ && git commit -m "$(date)"'
" Read about Vim autocmd in general: https://7id.xray.aps.anl.gov/software/vim/usr_40.html#40.3
" More advanced autocmds: https://7id.xray.aps.anl.gov/software/vim/autocmd.html

" Temporary Wikis
" treat every file with configured file-extension as a wiki
let g:vimwiki_global_ext = 1

" Treat all files with the extensions asc|gpg|md|pgp as gpg keyrings 
let g:GPGFilePattern = '*.\(gpg\|asc\|pgp\)\(.md\)\='

" =============================================================================
" Vimwiki Tasks
" =============================================================================
let g:vimwiki_tasks_annotate_origin = 1
"let g:vimwiki_tasks_tags_nodue = ''
"let g:vimwiki_tasks_tags_duetime = ''
"let g:vimwiki_tasks_tags_duedate = ''

function! VimwikiFindIncompleteTasks()
  lvimgrep /- \[ \]/ %:p
  lopen
endfunction

function! VimwikiFindAllIncompleteTasks()
  VimwikiSearch /- \[ \]/
  lopen
endfunction

nmap <Leader>wa :call VimwikiFindAllIncompleteTasks()<CR>
nmap <Leader>wx :call VimwikiFindIncompleteTasks()<CR>

" =============================================================================
" Vimwiki custom wiki2html converter
" =============================================================================

" Custom markdown to html converter
autocmd FileType vimwiki call SetMarkdownOptions()

function! SetMarkdownOptions()
	call VimwikiSet('syntax', 'markdown')
	call VimwikiSet('custom_wiki2html', 'wiki2html.sh')
endfunction

nmap <Leader>wh :call VimwikiAll2HTML()<CR>


" =============================================================================
" Vimwiki calendar
" =============================================================================

au BufRead,BufNewFile *.md set filetype=markdown
:autocmd FileType vimwiki map d :VimwikiMakeDiaryNote

function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction
:autocmd FileType vimwiki map c :call ToggleCalendar()


" vim:fenc=utf-8:ft=vim:ts=2:sts=2:sw=2:et:
