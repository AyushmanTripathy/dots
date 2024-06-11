let mapleader = "\\"

" NORMAL MODE 
nnoremap ; :

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

nnoremap <Tab>n :NERDTreeToggle <CR>
nnoremap <Tab>r :source ~/.config/nvim/init.vim<CR> 
nnoremap <Tab>p :PrettierAsync <CR>
nnoremap <Tab>i gg=G
nnoremap <Tab>c :%y+<cr>
nnoremap <Tab>s :vsplit <cr>
nnoremap <Tab>f :FzfLua files previewer=false<cr>
nnoremap <Tab>h :set hlsearch!<cr>

" moving through screens
nnoremap <Tab><left>  <C-W>h
nnoremap <Tab><down>  <C-W>j
nnoremap <Tab><up>  <C-W>k
nnoremap <Tab><right>  <C-W>l

nnoremap <Tab>[ :bprev<cr>
nnoremap <Tab>] :bnext<cr>

" VISUAL MODE

" copying & pasting 
vnoremap d "+d
vnoremap y "+y
vnoremap p "+p

" INSERT MODE
inoremap <leader><leader> <C-x><C-o>
inoremap <leader><cr> <C-o>o
inoremap <leader>o <C-x><C-o>
inoremap <leader>f <C-x><C-f>

function! MapBoth(keys, rhs)
    execute 'vnoremap' a:keys a:rhs
    execute 'noremap' a:keys a:rhs
    execute 'inoremap' a:keys a:rhs
    execute 'cnoremap' a:keys a:rhs
endfunction

call MapBoth('<leader>`', '~')
call MapBoth('<leader>0',')' )
call MapBoth('<leader>1','!')
call MapBoth('<leader>2','@')
call MapBoth('<leader>3','#')
call MapBoth('<leader>4','$')
call MapBoth('<leader>5','%')
call MapBoth('<leader>6','^')
call MapBoth('<leader>7','&')
call MapBoth('<leader>8','*')

call MapBoth('<leader>]','}')
call MapBoth('<leader>;',':')
call MapBoth('<leader>.','>')
call MapBoth('<leader>,','<')
call MapBoth('<leader>=','+')
call MapBoth('<leader>-','_')
call MapBoth('<leader>`','~')
call MapBoth('<leader>/','?')
call MapBoth('<leader>`','~')

call MapBoth('<leader>[','{}<Left>')
call MapBoth('<leader>9','()<Left>')

noremap <leader>' "
inoremap <leader>' "
cnoremap <leader>' "

" Modify the up/down keys so that they move per virtual (rather than
" physical) line if a line is displayed wrapped and no count for the
" command has been specified. Always use logical line steps for quickfix

nnoremap <expr> k ((v:count) ? 'k' : ((&buftype == 'quickfix') ? 'k' : 'gk'))
nnoremap <expr> j ((v:count) ? 'j' : ((&buftype == 'quickfix') ? 'j' : 'gj'))
nnoremap <expr> <Up> ((v:count) ? 'k' : ((&buftype == 'quickfix') ? 'k' : 'gk'))
nnoremap <expr> <Down> ((v:count) ? 'j' : ((&buftype == 'quickfix') ? 'j' : 'gj'))
xnoremap k gk
xnoremap j gj
vnoremap <Up> gk
vnoremap <Down> gj

" Move to start and end of virtual line (this will default to normal behaviour
" if the line isn't wrapped)
nnoremap 0 g0
nnoremap <Home> g0
nnoremap ^ g^
nnoremap $ g$
nnoremap <End> g$

" had problem with ale
" These mappings need to deal with virtual line numbers in 'insert' mode,
" but they need to do it without messing up normal 'completion menu' operation
" inoremap <expr> <Up> pumvisible() ? "\<Up>" : "\<C-o>gk"
" inoremap <expr> <Down> pumvisible() ? "\<Down>" : "\<C-o>gj"
