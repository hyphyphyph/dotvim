set nocompatible
filetype on
filetype plugin on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'minibufexpl.vim'

Bundle 'tpope/vim-surround'
Bundle 'ciaranm/detectindent'
Bundle 'docunext/closetag.vim'
Bundle 'matchit.zip'

Bundle 'digitaltoad/vim-jade'
Bundle 'groenewege/vim-less'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-scripts/vim-stylus'

set comments=
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
" set showbreak=↪

" call pathogen#infect()

" let g:Powerline_symbols = 'fancy'
" let g:Powerline_cache_enabled = 1

set go-=m
set go-=T
set go+=i " Use a friggin icon
set mouse=a

map <C-n> :set mouse-=a<cr>
map <C-m> :set mouse+=a<cr>

syntax on
set background=dark
let g:solarized_termcolors=256
" colorscheme solarized
colorscheme molokai

map <leader><esc> :CtrlPBuffer<cr>

" set guifont=Monospace\ 10
" set guifont=monofur\ 14
set guifont=M+\ 1m\ 10
" set guifont=Verily\ Serif\ Mono\ 10
" set guifont=Ubuntu\ Mono\ 12
" set guifont=Terminus\ 14
" set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
" set guifont=Clean\ 10
" set guifont=Monofur\ 12
" set guifont=Envy\ Code\ R\ Powerline\ 10

set preserveindent
set magic
set ignorecase

set scrolloff=1
set linespace=-1

set showmatch
set matchtime=1024 " Because... I can

" Tab mappings.
map <C-Up> :tabnew<cr>
map <C-Down> :tabclose<cr>
map <C-Right> :tabnext<cr>
map <C-Left> :tabprevious<cr>


map <S-A-Up> :fold<cr>
map <S-A-Down> :foldopen<cr>

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

au BufNewFile,BufRead *.mako set filetype=python
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.json set filetype=javascript
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.jade set filetype=jade
au BufNewFile,BufRead *.styl set filetype=stylus

autocmd BufWritePre * :%s/\s\+$//e

set nocompatible
set backspace=2
set cursorline
set cursorcolumn
set number
set ruler

set autoindent
set nosmartindent
set ts=4 sts=4 sw=4 expandtab

set nowrap
set incsearch
set smartcase

set autoread
let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>

noremap <F1> <esc>
nnoremap <F1> <esc>
inoremap <F1> <esc>
vnoremap <F1> <esc>


nmap <C-\> :vs<cr>
nmap <C-esc> :close<cr>
nmap vff :vert find! **/*


set wildmenu
set hid

set whichwrap+=<,>,h,l

set noerrorbells
set novisualbell
set t_vb=

set nobackup
set nowb
set noswapfile

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

map <Down> :bd<cr>
noremap <Right> :bn<cr>
noremap <Left> :bp<cr>
" vmap <left> obo
" vmap <right> e

" Buffer Navigation
nmap <C-PageUp> :bp!<cr>
imap <C-PageUp> <Esc>:bp!<cr>
nmap <C-PageDown> :bn!<cr>
imap <C-PageDown> <Esc>:bn!<cr>

nmap <M-}> :bn!<cr>
imap <M-}> <Esc>:bn!<cr>
nmap <M-{> :bp!<cr>
imap <M-{> <Esc>:bp!<cr>

nmap <C-Tab> :bn!<cr>
imap <C-Tab> <Esc>:bn!<cr>
nmap <S-C-Tab> :bp!<cr>
imap <S-C-Tab> <Esc>:bp!<cr>

" Text Operations
vmap > >gv
vmap < <gv
nmap <leader><space> /^[ ]*$<cr>

" File Management
nmap cd :!/bin/ls<cr>:cd<space>
nnoremap <leader>e :!ls<cr>:e<space>
nmap grr :grep -r<space>

" Vim Shortcuts
nmap <leader>ec :e! ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc

" MiniBufExplorer
" autocmd BufRead,BufNew :call TMiniBufExplorer
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplUseSingleClick = 1

" Snippets
imap <leader>888 /*<cr><space>*<cr>*/<cr><esc>kkA<space>
imap <leader>''' """<cr>"""<esc>O
" imap '+ '<space>+<space><space>+<space>'<esc>hhhi
" imap "+ "<space>+<space><space>+<space>"<esc>hhhi

" Awesome
nmap ., /><<cr>a
nmap ,. ?><<cr>a

nmap <C-\> :NERDTreeToggle<return>

" Basic EMACS style nav
imap <C-f> <Right>
imap <C-b> <Left>
imap <M-f> <C-Right>
imap <M-b> <C-Left>
imap <C-a> <Home>
imap <C-e> <End>

imap <M-Backspace> <Esc>mzbd`zx
nmap <M-Backspace> mzbd`zx

vmap gt' s'gvs)gvs}i$<Esc>la_<Esc>gvll
vmap gt" s"gvs)gvs}i$<Esc>la_<Esc>gvll

" vmap _jsp' s'gvs)%a;<esc>h%i$.t<esc>gv/'<cr>lls>a%=<space><esc>/><cr>i<space>%<esc>2?'<esc>l
" vmap _jsp" s"gvs)%a;<esc>h%i$.t<esc>gv/"<cr>lls>a%=<space><esc>/><cr>i<space>%<esc>2?"<esc>l

" map <leader>t :CtrlPCurWD<cr>
" map <C-t> :CtrlPCurWD<cr>
