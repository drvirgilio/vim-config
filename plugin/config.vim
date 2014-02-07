" config.vim - sets the configuration
" some inspiration from tpope/vim-sensible

if exists('g:loaded_config') || &compatible
	finish
else
	let g:loaded_config = 1
endif

if has('syntax') && !exists('g:syntax_on')
	syntax enable
	"colorscheme desert
	set background=dark
endif

set encoding=utf8
set ffs=unix,dos,mac

set autoindent
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set complete-=i

" move through long lines
map j gj
map k gk

" tabs
set smarttab
set shiftwidth=4
set tabstop=4

set nrformats-=octal
set shiftround

set ttimeout
set ttimeoutlen=50

" searches
set incsearch
set ignorecase
set smartcase
set hlsearch

" <C-L> clears search highlighting
if maparg('<C-L>', 'n') ==# ''
	nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" replace ; with :
nnoremap ; :

" line numbers
set number
set linebreak
set showbreak=~~

"set laststatus=2
set ruler
set showcmd
set wildmenu

" context at top and bottom
set scrolloff=7

set cmdheight=2
set hid

" don't redraw during macros
set lazyredraw

" highlight extra whitespace
highlight ExtraWhiteSpace ctermbg=darkred guibg=darkred
match ExtraWhiteSpace /\s\+\%#\@<!$\|[^\t]\zs\t\+/

" useful for tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" return to last editing position
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

" \ss will toggle spell checking
map <leader>ss :setlocal spell!<cr>

" move between panes
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

set showcmd

" auto make braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

