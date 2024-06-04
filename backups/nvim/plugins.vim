call plug#begin('~/.vim/autoload/plugged')
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/rainbow_parentheses.vim',  
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/NERDTree', { 'on':  'NERDTreeToggle' }
    Plug 'AyushmanTripathy/VimCompletesMe', 
    Plug 'mattn/emmet-vim',
    
  Plug 'prettier/vim-prettier', {
    \ 'do': 'npm install',
    \ 'for': ['javascript','sql' ,'css','scss', 'json', 'svelte', 'markdown', 'html', 'c'] }

call plug#end()

let g:v_warnings=1

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
autocmd FileType javascript,md,html,css,scss,svelte EmmetInstall

" You Complete Me
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_add_preview_to_completeopt = 0
