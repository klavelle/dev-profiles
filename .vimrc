"general
syntax enable 
set ruler
set number
set autoread
set history=700
set noswapfile
let mapleader = ","
let g:EasyMotion_leader_key = '<Leader>' 

nnoremap <F4> :set nonumber!<CR>

set wrap "Wrap lines

"search
set ignorecase
set hlsearch

"tab 
set smarttab

"bracket highting
set showmatch

filetype plugin indent on

"color scheme
colorscheme solarized 
set background=dark

"status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"indents
set ai "Auto indent
" set si "Smart indent
set tabstop=4 softtabstop=2 shiftwidth=4 noexpandtab

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"font
set cursorline
set guifont=Monaco:h10
set guioptions-=T
set linespace=1
set vb

" NERDtree
let NERDTreeShowHidden=1

" auto-generate tags
au BufWritePost *.php,*.js silent! !ctags -R &

" No annoying sound on errors
set noerrorbells
set novisualbell

"key mapping
map <leader>h :noh<cr>	
map <leader>c <c-_><c-_>
" move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" imap <Tab><Tab> <C-p>
"sesssion
nmap <F2> :mksession! ~/vim_session<cr>
nmap <F2><ESC>:mksession! ~/vim_session<cr>:wqa<cr>
map <F3> :source ~/vim_session<cr> 
"sublime-text-like save all
map <D-M>s :wa
"tagbar
map <F6> :TagbarToggle<cr>
