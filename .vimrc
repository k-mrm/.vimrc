" Required:
call plug#begin(expand('~/.vim/plugged'))
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Shougo/neocomplete'
Plug 'jacoborus/tender.vim'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'mattn/vim-sonictemplate'
Plug 'luochen1990/rainbow'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'w0ng/vim-hybrid'
Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex'
call plug#end()

filetype plugin indent on

set title

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

set backspace=indent,eol,start

set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

let mapleader=','

set hidden

set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

syntax on
set ruler
set number

let no_buffers_menu=1
set t_Co=256
silent! colorscheme hybrid
let g:molokai_original=1
set background=dark

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

"" Use modeline overrides
set modeline
set modelines=10

let g:airline#extensions#tabline#enabled = 1

let g:neocomplete#enable_at_startup = 1

nnoremap n nzzzv
nnoremap N Nzzzv

set autoread

nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype php setlocal ts=2 sw=2 expandtab
autocmd Filetype tex setlocal ts=2 sw=2 expandtab
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
            \ formatoptions+=croq softtabstop=4

set shiftwidth=4 expandtab
set wildmenu
set smartindent
set relativenumber
set noswapfile
set nobackup
inoremap <silent> jj <ESC>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>

if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif

autocmd BufNewFile,BufRead *.mxc  set filetype=rust
autocmd BufNewFile,BufRead *.rs  set filetype=rust
autocmd BufNewFile,BufRead *.s  set filetype=nasm

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
nnoremap <silent><C-j> :NERDTreeToggle<CR>
let g:sonictemplate_vim_template_dir = expand('~/.vim/sonictemplate')

let g:asmsyntax = 'nasm'
set clipboard&
set clipboard^=unnamedplus
