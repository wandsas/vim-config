" vimwiki.vim
" https://github.com/vimwiki/vimwiki

" Vimwiki setup
" https://opensource.com/article/18/6/vimwiki-gitlab-notes

" Vim help: Vimwiki mappings
" :h vimwiki-mappings

" wiki_1
let wiki_1 = {}
let wiki_1.path = '~/vimwiki'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

" wiki_2
let wiki_2 = {}
let wiki_2.path = '~/vimwiki/private'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'

let g:vimwiki_list = [wiki_1, wiki_2]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
