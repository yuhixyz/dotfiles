" escape 
inoremap jj <esc>

map s <nop>
nmap ss <Plug>(easymotion-s2)

" write quit source
nnoremap W :w<CR> 
nnoremap Q :q<CR>
nnoremap S :source $MYVIMRC<CR>

" switch buffer tab 
noremap L :bnext<CR>
noremap H :bprev<CR>

"better navigation for complete
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>
cnoremap <C-j> <C-n>
cnoremap <C-k> <C-p>

" better tabbing
vnoremap < <gv
vnoremap > >gv

" " supported by plugin: bbye
" " close single buffer
" nnoremap <C-q> :Bdelete<CR>
