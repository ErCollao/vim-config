syntax on
set termguicolors

" Use utf-8 characters (for Spanish accents and such)
set encoding=utf-8

" Backspace will work like in most other programs
set backspace=2

" ***** Mappings *****

" Make the spacebar the leader key
nnoremap <Space> <nop>
let mapleader = "\<Space>"

" Remove highlights
nnoremap <Leader><CR> :noh<CR>

" Easier split navigation with double click on leader
nnoremap <Leader><Leader> <C-w>

" Open file eplorer on the side
nnoremap <Leader>f :Vex<CR>

" Quick splits and tabs
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>b :split<CR>
nnoremap <Leader>t :tabnew<CR>

" Search and replace in the whole document
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" Activate spellcheck
nnoremap <Leader>a :set spell!<CR>

" Spellcheck word (pick first option)
nnoremap <Leader>u 1z=

" Quit
nnoremap <Leader>q :q<CR>

" Save myself from accidental caps
command Q q
command W w
command YANK execute "normal! gg\"*yG"

" Quickly edit vimrc file
command Evimrc edit ~/.vim/vimrc
command Svimrc source ~/.vim/vimrc

set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set showbreak=↪ 
set list listchars=tab:››,nbsp:…,trail:…

set scrolloff=2
set lazyredraw

set wildmenu

set ignorecase
set smartcase

set showmatch

" Line numbers
set relativenumber

set noeb vb t_vb=

set linebreak

" Indent to two spaces for everything (it was a pain to change for everything)
" Used to have this, I think it was overriding stuff
" set ai sw=2 sts=2 et

filetype plugin indent on
augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType markdown set spell
augroup END

" Hack to make php files indent correctly
au BufEnter, BufNew *.php :set filetype=html syn=php

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
  " 
  " Language support for Ruby on Rails editing
  Plug 'vim-ruby/vim-ruby'
  " Lets plugins (e.g. vim-surround) repeat with the . command
  Plug 'tpope/vim-rails'
  "
  " Matching parentheses
  Plug 'jiangmiao/auto-pairs'
  "
  " Use % to jump between all types of tags, not only parentheses (e.g.
  " between start and end HTML tags)
  Plug 'tmhedberg/matchit'
  "
  " Adds the verbs gs (surround) and cs (change surround) to modify
  " surrounding parentheses, tags, etc
  Plug 'tpope/vim-surround'
  " Lets plugins (e.g. vim-surround) repeat with the . command
  Plug 'tpope/vim-repeat'
  "
  " Adds the verb gc (comment)
  Plug 'vim-scripts/tComment'
  "
  " Tab autocompletes in a smart way
  Plug 'ervandew/supertab'
  "
  " Snippets in Vim
  Plug 'marcweber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'
  "
  " Airline shows at the bottom with useful info
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  "
  "
  " CtrlP fuzzy finder
  Plug 'kien/ctrlp.vim'
  "
  " Adds the :Rg command to grep through the project at blazing speed
  Plug 'jremmen/vim-ripgrep'
  "
  " Plugins to enter zen mode for writing (narrow and highlighted)
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  "
  " Asyncronous checking
  Plug 'w0rp/ale'
  "
  " Natural way of using netrw file browser with keystroke - (and other
  " reasonable configs)
  Plug 'tpope/vim-vinegar'
  "
  " Language support for Vue
  Plug 'posva/vim-vue'
  " 
  " Plugins to explore at some point
  "
  " Check what overlaps exist between supertab and vim-snippets
  " 
  " HTML generator
  " Plug 'rstacruz/sparkup'
  "
  " Using Ack for search, check differences with ripgrep and :Rg (they seem
  " equally fast)
  " Plug 'mileszs/ack.vim'
  "
  " Colorschemes
  Plug 'joshdick/onedark.vim'
  " Plug 'KeitaNakamura/neodark.vim'
  " Plug 'rakr/vim-one'
  " Plug 'arcticicestudio/nord-vim'
  " Need to check again what they do
  " Plug 'dyng/ctrlsf.vim'
  " Plug 'sainnhe/edge'
  "
call plug#end()

" Goyo is a focus mode that you enter typing :Goyo (and leave it typing :Goyo!), and the following line activates limelight when doing that
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

colorscheme onedark
" colorscheme neodark
" colorscheme nord
" colorscheme edge

" Configuration of ALE linter
let g:ale_set_highlights = 0

" Mods to the colorscheme
hi NonText ctermfg=none
