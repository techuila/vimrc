syntax on
filetype plugin indent on

set exrc
set guicursor=
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set clipboard+=unnamedplus
set wildmode=longest,list,full
set splitbelow splitright
set cmdheight=2
set updatetime=50
set shortmess+=c
set backspace=indent,eol,start

call plug#begin("~/.vim/plugged")
Plug 'hzchirs/vim-material'
Plug 'preservim/nerdtree'
Plug 'wincent/command-t'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
call plug#end()

let g:material_style='palenight'
set background=dark
colorscheme vim-material

autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap j k
nnoremap k j
vnoremap j k
vnoremap k j

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'
let g:closetag_shortcut = '>'

map <C-n> :NERDTreeToggle<CR>
