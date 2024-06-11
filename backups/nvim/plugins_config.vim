let g:v_warnings=1

" surround
vmap s S

" Rainbow Parentasis
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['{', '}'],['[',']'],['(',')']]
let g:rainbow#blacklist = [233, 234]

" NerdTree
let g:NERDTreeShowHidden=1

" Coc
let g:coc_disable_startup_warning = 1 
autocmd FileType scss setl iskeyword+=@-@
let g:coc_start_at_startup=0

" Emmet
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','
autocmd FileType javascript,markdown,html,css,scss,svelte EmmetInstall

