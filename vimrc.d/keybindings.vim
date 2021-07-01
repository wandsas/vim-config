" Keybindings

" put leader to space
map <space> <leader>
map <space><space> <leader><leader>

" Navigate buffer next/prev: leader+./leader+,
noremap <leader>. :bn<CR>
noremap <leader>, :bp<CR>

" Navigate tab next/prev: tab/shift+tab
nnoremap <tab> <esc>:tabnext<cr>
nnoremap <s-tab> <esc>:tabprev<cr>

" Navigate tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>

" Window splits
" ctrl+w v window next to existing
" ctrl+w s window botton of current
"nnoremap <c-h> <c-w>h
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k
"nnoremap <c-l> <c-w>l

set pastetoggle=<F2>

" Redraw screen
nnoremap <leader>r <ESC>:redraw!<CR>

" Toggle paste mode
nnoremap <leader>n :setlocal nonumber norelativenumber<CR>
nnoremap <leader>N :setlocal number relativenumber<CR>

" Trim trailing whitespace
nnoremap <ESC>t :%s/\s\+$//<CR>

" Remove search highlight
nnoremap <ESC><ESC> :noh<CR>

" Think "little tabs" and "big tabs"
map <leader>t :set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>
map <leader>T :set tabstop=4 softtabstop=4 shiftwidth=4 expandtab<CR>

" w!! to write with sudo
cmap w!! w !sudo tee % >/dev/null

" reload vimrc
nmap <leader>s :source $MYVIMRC<cr>
