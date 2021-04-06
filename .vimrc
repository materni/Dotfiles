set number
set cursorline
set splitbelow

set termwinsize=15x200

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

set t_Co=256
let &t_ut=''
set notermguicolors

nmap <F6> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if has('termguicolors')
  set termguicolors
endif

call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'

  Plug 'sheerun/vim-polyglot'

  Plug 'jelera/vim-javascript-syntax'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'preservim/nerdtree'

  Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

call plug#end()

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme spaceduck

let g:lightline = {
  \ 'colorscheme': 'spaceduck',
  \ }
