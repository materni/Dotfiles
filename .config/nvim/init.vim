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

set termguicolors

" Vim-plug
so ~/.config/nvim/vim-plug.vim

" Barbar
so ~/.config/nvim/barbar.vim

" Nerdtree
so ~/.config/nvim/nvim-tree.vim

" Colorscheme
colorscheme gruvbox-material

let g:lightline = {
  \ 'colorscheme': 'gruvbox_material',
  \ }

