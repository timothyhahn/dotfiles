call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'derekwyatt/vim-scala'
Plug 'elixir-lang/vim-elixir'
Plug 'ervandew/supertab'
Plug 'joshdick/onedark.vim'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'luochen1990/rainbow'
Plug 'mxw/vim-jsx'
Plug 'neovimhaskell/haskell-vim'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"Plug 'valloric/youcompleteme'
Plug 'xuyuanp/nerdtree-git-plugin'
call plug#end()

filetype plugin indent on
set nu
set background=dark
set exrc
set secure
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
colorscheme onedark
set pastetoggle=<F2>
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:neocomplcache_enable_at_startup = 1
let mapleader = ","
map <leader><leader> :w<cr>
map <leader>n :NERDTreeToggle<cr>
map <leader>v :vs<cr>
map <leader>h :split<cr>

let g:SuperTabDefaultCompletionType = 'context'

let g:rainbow_active = 1
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
au BufRead,BufNewFile *.md set filetype=markdown

set incsearch
set ignorecase
set tags=tags;/
autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype scala setlocal ts=2 sts=2 sw=2
autocmd Filetype go setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript.jsx setlocal ts=2 sts=2 sw=2
autocmd Filetype ts setlocal ts=2 sts=2 sw=2
autocmd Filetype vue setlocal ts=2 sts=2 sw=2
autocmd Filetype js setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
set wildignore=*.o,*~,*.pyc,*.swp,*.pyo,*.class,*.so
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$\|node_modules\|git\|target/'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 1
endif
inoremap jk <esc>
inoremap kj <esc>
nnoremap ; :
vnoremap ; :
set wrap
set linebreak
" note trailing space at end of next line
"et &showbreak = ''
"set list!
"set listchars=trail:>
let g:PreserveNoEOL = 1
let g:jsx_ext_required = 0

xnoremap <C-a> :<C-u>let vcount = v:count ? v:count : 1 <bar> '<,'>s/\%V\d\+/\=submatch(0) + vcount<cr>gv
xnoremap <C-x> :<C-u>let vcount = v:count ? v:count : 1 <bar> '<,'>s/\%V\d\+/\=submatch(0) - vcount<cr>gv

" let g:syntastic_javascript_checkers = ['standard']


set mouse=
