syntax on

" Use utf-8 characters (for Spanish accents and such)
set encoding=utf-8

" Backspace will work like in most other programs
set backspace=2

nnoremap <Space> <nop>
let mapleader = "\<Space>"
nnoremap <Leader>f :Vex<CR>
nnoremap <Leader><Leader> <C-w>
nnoremap <Leader><CR> :noh<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>b :split<CR>
nnoremap <Leader>t :tab
vnoremap <C-c> :w !pbcopy<CR><CR>
noremap <C-v> :r !pbpaste<CR><CR>
nmap :Q :q
nmap     <Leader><Tab> <Plug>CtrlSFPrompt

set tabstop=4

set wildmenu

set ignorecase
set smartcase

set showmatch

set number

set noeb vb t_vb=

set linebreak

" Indent to two spaces for ruby, erb, yaml and md
set autoindent
filetype plugin indent on
augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml,markdown,css set ai sw=2 sts=2 et
augroup END

" Make search look good (highlights)
set hlsearch
set incsearch

" When you scroll with the mousewheel / pad, it scrolls in Vim not in
" terminal
set mouse=a

" Configuration of the tree view
let g:netrw_banner = 0
let g:netrw_browse_split = 0
let g:netrw_winsize = 25

call plug#begin('~/.vim/plugged')
	Plug 'vim-ruby/vim-ruby'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-surround'
	Plug 'ervandew/supertab'
	Plug 'marcweber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'
	Plug 'garbas/vim-snipmate'
	Plug 'honza/vim-snippets'
	Plug 'tpope/vim-rails'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'rakr/vim-one'
	Plug 'KeitaNakamura/neodark.vim'
	Plug 'kien/ctrlp.vim'
	Plug 'dyng/ctrlsf.vim'
	Plug 'junegunn/goyo.vim'
	Plug 'junegunn/limelight.vim'
	Plug 'w0rp/ale'
	Plug 'tpope/vim-vinegar'
call plug#end()

" Goyo is a focus mode that you enter typing :Goyo (and leave it typing :Goyo!), and the following line activates limelight when doing that
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

colorscheme neodark

let g:ale_set_highlights = 0
