syntax  on
filetype plugin indent on

set exrc
set guicursor=
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
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
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set clipboard=
set wildmode=longest,list,full
set splitbelow splitright
set cmdheight=2
set updatetime=50
set shortmess+=c
set ignorecase
set backspace=indent,eol,start

call plug#begin("~/.vim/plugged")
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'grvcoelho/vim-javascript-snippets'
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'prettier/vim-prettier', {
    \ 'do': 'npm install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()

set background=dark
colorscheme gruvbox

autocmd Vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
nnoremap + %
nnoremap <leader>p :update<CR>
nnoremap <leader>o :wq<CR>
inoremap <C-h> <Left>
inoremap <C-j> <Up>
inoremap <C-k> <Down>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Up>
cnoremap <C-k> <Down>
cnoremap <C-l> <Right>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'
let g:closetag_shortcut = '>'
let NERDTreeShowHidden=1
let g:prettier#config#print_width = '160'
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

map <C-n> :NERDTreeToggle<CR>
