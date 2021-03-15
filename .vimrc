set number
set cursorline
set splitbelow

set termwinsize=15x200

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

set t_Co=256
set notermguicolors

nmap <F6> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'

  Plug 'sheerun/vim-polyglot'

  Plug 'jelera/vim-javascript-syntax'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'preservim/nerdtree'

  Plug 'joshdick/onedark.vim'
  
  Plug 'kaicataldo/material.vim', { 'branch': 'main' }

call plug#end()
