syntax on

let mapleader = ","
nnoremap <Leader>f :Vex<CR>
nnoremap <Leader><Leader> <C-w>
nnoremap <Leader><CR> :noh<CR>
nnoremap <Leader><Space> :vsplit<CR>

set tabstop=4

set wildmenu

set ignorecase
set smartcase

set showmatch

set number

set noeb vb t_vb=

set linebreak

set autoindent
filetype plugin indent on
augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END

set hlsearch
set incsearch

" Configuration of the tree view
let g:netrw_banner = 0
let g:netrw_browse_split = 4
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
call plug#end()

colorscheme neodark
