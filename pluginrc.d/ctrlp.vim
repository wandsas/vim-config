" https://github.com/ctrlpvim/ctrlp.vim

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" c - dir of current file
" r - nearest ancestor that contains one of: .git .hg .svn .bzr _darcs
" a - like c, but only applies when current working directory outside of CtrlP
" 0 or '' (empty string) - disable feature 
let g:ctrlp_working_path_mode = 'ra'

" if none of the default markers (.git, .hg, .svn, .bzr, _darcs)  are present
" in a project, you can define additional ones with:
let g:ctrlp_root_markers = ['pom.xml', '.p4ignore']

" if a file is already open, open it again in a new pane instead of switch
" to the existing pane.
let g:ctrlp_switch_buffer = 'et'

" Exclude files and dirs like vim's wildignore
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
  \ }

" Specify external tool to use for listing files
let g:ctrlp_user_command = 'find %s -type f' 

" Single vcs listing command
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_user_command = ['.hg', 'hg --cwd %s locate -I .']

