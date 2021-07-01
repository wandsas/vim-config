
" Jump last known cursor position

" When editing a file, always jump to the last known  relativenumber!cursor position
" Don't do that when position is invalid, or when inside an event handler
" (e.g. when dropping a file on gvim), or for a commit message.

" ":augroup vimStartup | au! | augroup END"
augroup vimStartup
  au!
autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
augroup END
