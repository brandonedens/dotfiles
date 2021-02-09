
call plug#begin('~/.local/share/nvim/plugged')
Plug 'LnL7/vim-nix'
Plug 'rust-lang/rust.vim'
Plug 'godlygeek/tabular'
Plug 'jparise/vim-graphql'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'lotabout/skim.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim'
Plug 'cstrahan/vim-capnp'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'vim-utils/vim-cscope'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'vim-scripts/DeleteTrailingWhitespace'
Plug 'vim-scripts/Align'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'ron-rs/ron.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
call plug#end()

" Default settings
set noswapfile
set guifont="FiraCode"
set diffopt="filler,icase,iwhite"
setlocal spell spelllang=en_us
set number
set smarttab
set ignorecase
set fileignorecase
set smartcase
set autoindent
set ruler
set showmatch
set showmode
set showcmd
set hidden
set title
set incsearch

set dictionary=/usr/share/dict/words

set cino=g0(0t0:0
set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~
set statusline=%<\ %{mode()}\ \|\ %F%m\ %{fugitive#statusline()}%=\ %{&fileformat}\ \|\ %{&fileencoding}\ \|\ %{&filetype}\ \|\ %p%%\ \|\ LN\ %l:%c\ 
set rulerformat=%-80(%Y\ \ #%n\ \ %Bh\ \ %v,%l\/%L\ \ %P%)
set formatoptions+=j
set clipboard+=unnamedplus

" Fuzzy finder setup
command! -bang -nargs=* Rg call fzf#vim#rg_interactive(<q-args>, fzf#vim#with_preview('right:50%:hidden', 'alt-h')

" Snippet setup
" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" Color setup.
set termguicolors
colorscheme be256

let g:prosession_per_branch = 1

" Default folding.
"set foldmethod=syntax

" Rust settings
autocmd FileType rust set foldnestmax=1

" C settings
autocmd FileType c set foldnestmax=1
autocmd FileType c set textwidth=79
autocmd FileType c nmap <C-j> :cnext<CR>
autocmd FileType c nmap <C-k> :cprevious<CR>

" Java settings
autocmd FileType java set foldlevel=1
autocmd FileType java set foldnestmax=2

" Mail related commands
autocmd FileType mail ab guys everyone
autocmd Filetype mail set spell
