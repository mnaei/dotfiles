" list of possible commands:
" switching between multiple tabs
" switching between the same pane
" a tree structure
inoremap jk <ESC>
let mapleader = " "

set encoding=utf-8
syntax on
colorscheme elflord

" https://superuser.com/questions/1291425/windows-subsystem-linux-make-vim-use-the-clipboard
set clipboard=unnamedplus
set pastetoggle=<C-p>

set number
set relativenumber

filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set smartindent
set nosmartindent

" keeps curser in the middle of the page
set scrolloff=999

" go back one word
nnoremap q b

" map r to redo the undo
nnoremap r <C-r>

" Highlighting search
" find foo with /foo
" press enter to goto foo
" press n goto next result
" press esc to move back cursor
set hlsearch
set incsearch
command C let @/ = ""
nnoremap <leader>C :C<CR>
" first copy word, then paste it into :/ search 
nnoremap gh yiw:/<C-r>"<CR>
" nnoremap gh #

" case sensitivity search:
" the following commands make the search case insensitive unless an upper case
" letter is present, then it becomes case sensitive. if you want a case
" sensitive lower case search please add \C to the end of your regex
set ignorecase
set smartcase

" command :tabnew to open new tab 
" normal mode #<S-g> goes to line #

source $HOME/.config/nvim/plug-config/coc.vim

" faster navigation
nnoremap <S-j> 5j
nnoremap <S-k> 5k
nnoremap <S-l> 5l
nnoremap <S-h> 5h
" jump to previous line
nnoremap <leader>o <C-o>
nnoremap <leader>i <C-i>

" for moving between panels
nnoremap <leader>j :tabn<CR>
nnoremap <leader>h :tabp<CR>
nnoremap <leader>k :bprevious<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>w <C-w><C-w>
nnoremap <leader>H <C-w>h
nnoremap <leader>J <C-w>j
nnoremap <leader>K <C-w>k
nnoremap <leader>L <C-w>l

nnoremap <leader>b :buffers<CR>:b 

" https://vim.fandom.com/wiki/Learn_to_use_help#:~:text=Sometimes%20you%20want%20to%20know,r%20then%20press%20Ctrl%2DD.

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-python/python-syntax'
call plug#end()

colorscheme gruvbox

" NERDTree
nnoremap <C-d> :NERDTreeTabsToggle<CR>
let g:NERDTreeWinSize=25

 " idea: use caps lock as your leader key
 " note:
 "  - use dl instead of del key
 "  - to just to a mark use the ' key i.e. ma 'a
 "  - install fzf
 "  - configure the :move command
 

 "noremap  y "*y
 "noremap  Y "*Y
 "noremap  p "*p
 "noremap  P "*P
 "vnoremap y "*y
 "vnoremap Y "*Y
 "vnoremap p "*p
 "vnoremap P "*P
 "
 "
 " use :cd and :ls commands for changing directory
