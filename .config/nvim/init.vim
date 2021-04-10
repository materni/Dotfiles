set number
set cursorline
set splitbelow

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

set undodir=~/.config/nvim/.undo//
set backupdir=~/.config/nvim/.backup//
set directory=~/.config/nvim/.swp//

set t_Co=256
let &t_ut=''

nmap <F6> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'

  Plug 'sheerun/vim-polyglot'

  Plug 'jelera/vim-javascript-syntax'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'preservim/nerdtree'

  Plug 'ryanoasis/vim-devicons'

  Plug 'dylanaraps/wal.vim'

call plug#end()
colorscheme wal

let g:lightline = {
  \ 'colorscheme': 'wal',
  \ }
