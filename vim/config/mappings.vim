" Faster save, quit & buffer delete
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Bye bye, ESC
inoremap jj <Esc>
inoremap kk <Esc>
inoremap <esc> <NOP>

" Unbind arrows
nnoremap <Up> <Esc>
vnoremap <Up> <NOP>
inoremap <Up> <NOP>
nnoremap <Down> <Esc>
vnoremap <Down> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <Esc>
vnoremap <Left> <NOP>
inoremap <Left> <NOP>
nnoremap <Right> <Esc>
vnoremap <Right> <NOP>
inoremap <Right> <NOP>

" Move pane to avoid confusion with tmux
" Usage: CTRL+[H, J, K, L]
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tabs
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv

" Clear search
nmap <silent> <Space> :silent noh<Bar>echo<CR>

" Transform DOM into CSS classes
"
" Example:
"
" <div local-class="foo">
"   <span local-class="bar">Hello</span>
" </div>
"
" Turns into
"
" .foo {
" }
"
" .bar {
" }
vmap <Leader>c :s/^.* local-class="\(.*\)".*/\.\1\ {\r\}\r/g<CR>

" Remove search highlights
nnoremap <Leader><space> :noh<cr>
