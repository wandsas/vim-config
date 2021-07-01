" fzf

let $FZF_DEFAULT_COMMAND= 'rg --files --hidden --follow --glob "!.git/*"'
let g:fzf_layout = { 'down': '~40%' }

nnoremap <leader>b :Buffers<CR>
nnoremap <leader>f :Files<CR>
