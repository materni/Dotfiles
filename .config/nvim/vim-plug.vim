" Starts vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'chriskempson/base16-vim'
  Plug 'daviesjamie/vim-base16-lightline'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'

  call plug#end()

