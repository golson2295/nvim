call plug#begin('~/.vim/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/goyo.vim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'blindFS/vim-taskwarrior'
    Plug 'tpope/vim-surround'
call plug#end()

let mapleader=','
inoremap jk <esc>

filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=0

nnoremap <leader>w :%s/\s\+$//e<cr>:wa<cr>
nnoremap <leader>q :wq<cr>

nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

nnoremap <up>    :resize +2<cr>
nnoremap <down>  :resize -2<cr>
nnoremap <left>  :vertical resize +2<cr>
nnoremap <right> :vertical resize -2<cr>

set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
nnoremap // :let @/=""<cr>

let g:netrw_winsize=35
let g:netrw_liststyle=3

nnoremap <leader>wt :tabnew<cr>:TW<cr>
nnoremap <leader>t :Lexplore<cr>
nnoremap <leader>l :ls<cr>:b<space>
nnoremap <leader>rc :tabnew<cr>:e $MYVIMRC<cr>
nnoremap <leader>src :source $MYVIMRC<cr>
nnoremap <leader>yo :Goyo<cr>

nnoremap _ :tabprevious<cr>
nnoremap + :tabNext<cr>
set listchars=tab:>·,trail:~,precedes:·

let g:goyo_width='80%'
let g:goyo_height='85%'
let g:goyo_liner='10'

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal nowrap
    autocmd FileType vim :iabbrev <buffer> nm nnoremap
    autocmd FileType vim :iabbrev <buffer> im inoremap
    autocmd FileType vim :iabbrev <buffer> om onoremap
    autocmd FileType vim :iabbrev <buffer> ib :iabbrev <buffer>
    autocmd FileType vim :iabbrev <buffer> s set
    autocmd FileType vim :iabbrev <buffer> a autocmd
    autocmd FileType vim :iabbrev <buffer> af autocmd<space>Filetype
    autocmd FileType vim :iabbrev <buffer> afv autocmd<space>Filetype<space>vim
    autocmd FileType vim :iabbrev <buffer> afj autocmd<space>Filetype<space>javascript
    autocmd FileType vim :iabbrev <buffer> afp autocmd<space>Filetype<space>python
    autocmd FileType vim :iabbrev <buffer> afc autocmd<space>Filetype<space>c
    autocmd FileType vim :iabbrev <buffer> ag augroup
    autocmd FileType vim :iabbrev <buffer> age augroup<space>END
    autocmd FileType vim setlocal statusline=[\%4l/\%4L]:\%2c\%5Y
    autocmd Filetype vim nnoremap <leader>o :normal!0i" <cr>
    autocmd Filetype vim nnoremap <leader>i :normal!0xx<cr>
    autocmd Filetype vim vnoremap <leader>o :normal!0i" <cr>
    autocmd Filetype vim vnoremap <leader>i :normal!0xx<cr>
augroup END

augroup filetype_markdown
    autocmd Filetype markdown nnoremap <leader>mh 0Ypv$r=
    autocmd Filetype markdown nnoremap <leader>uh 0Ypv$r=
augroup END

augroup filetype_make
   autocmd Filetype make set list
augroup END

augroup filetype_yaml
    autocmd Filetype yaml setlocal tabstop=4
    autocmd Filetype yaml setlocal shiftwidth=4
augroup END

