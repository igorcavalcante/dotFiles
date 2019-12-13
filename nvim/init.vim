call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'tomasiser/vim-code-dark'
 Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

set clipboard+=unnamedplus
set number " enable line numbers

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set pastetoggle=<F3> " enable paste mode (more on this below)

" set indent for 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" enable mouse support
set mouse=a

"search params
set hls ic
set incsearch
"set include

" Themes
syntax enable
" set t_Co=256
" let g:solarized_termcolors=256
" let g:solarized_termtrans = 1
" set background=dark
" set background=dark
" let g:gruvbox_termcolors=16
" set termguicolors
" colorscheme codedark
colorscheme gruvbox
"colorscheme solarized
" let g:airline_theme = 'base16_solarized'

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

map <F1> :NERDTreeToggle<CR>

" show whitespaces and eol
" syntax on
" map <F5> :set syntax=whitespace<CR>

" nerd commenter
filetype plugin on

"stylish haskell
map <F2> :%!stylish-haskell<CR>

"let g:ale_enabled=1
"let g:ale_set_balloons=1
"let g:ale_completion_enabled = 1


let g:ale_enabled=1
let g:ale_set_balloons=1
let g:ale_haskell_hdevtools_executable='/usr/bin/hdevtools'
let b:ale_fixers = {'haskell': ['hdevtools', 'stylish-haskell', 'hlint', 'remove_trailing_lines', 'trim_whitespace']}
map <F3> :ALENext<CR>
map <F4> :ALEFix<CR>

" deoplete
let g:deoplete#enable_at_startup = 1
"call deoplete#custom#option('sources', {
"\ '_': ['ale'],
"\})

" fzf controlp
map <C-p> :Files<CR>

" resize
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
