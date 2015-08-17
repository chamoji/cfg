" encoding settings
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility (emulation of old bugs)
set nocompatible

" indentation settings
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2

" 256 colors for terminal
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

" enable syntax highlights
syntax on

" enable line number display
set number

" highlight matching braces
set showmatch

" smart comments
set comments=s1:/*.mb:\ *,elx:\ */

" highlight current line
set cursorline

" set colorscheme
colorscheme desert

" pathogen settings
execute pathogen#infect()

" search settings
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

" buffer search
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" ctrlp settings
set runtimepath^=!/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'

" NERDTree settings
nmap \e :NERDTreeToggle<CR>

" set statusline
set statusline=%F " path to the file
set statusline+=%= " Switch to the right side
set statusline+=%l " Current line
set statusline+=\:%c " Current column

set laststatus=2

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
