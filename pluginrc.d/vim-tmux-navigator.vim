" vim-tmux-navigator

let g:tmux_navigator_save_on_switch = 2       " write buffers before navigating from vim to Tmux
let g:tmux_navigator_disable_when_zoomed = 1  " disable tmux navigator when zooming vim panes

nnoremap <silent> <ctrl-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <ctrl-j> :TmuxNavigateDown<cr>
nnoremap <silent> <ctrl-k> :TmuxNavigateUp<cr>
nnoremap <silent> <ctrl-l> :TmuxNavigateRight<cr>
