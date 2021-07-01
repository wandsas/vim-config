" Omnicompletion

autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
set completeopt=menuone,longest
set complete-=i

if exists("+omnifunc")
    autocmd Filetype *
           \ if &omnifunc == "" |
           \     setlocal omnifunc=syntaxcomplete#Complete |
           \ endif
endif
