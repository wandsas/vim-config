augroup reload_vimrc
    autocmd!
        autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
    augroup END
