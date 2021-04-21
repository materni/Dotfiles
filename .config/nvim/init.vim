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

" NERDTree settings
nmap <F5> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" Toggle terminal on/off (neovim)
nnoremap <F6> :call TermToggle(12)<CR>
inoremap <F6> <Esc>:call TermToggle(12)<CR>
tnoremap <F6> <C-\><C-n>:call TermToggle(12)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

" Focus the panel when opening it
let g:tagbar_autofocus = 1" Highlight the active tag
let g:tagbar_autoshowtag = 1" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'" Mapping to open and close the panel
nmap <F7> :TagbarToggle<CR>

" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'preservim/tagbar'
  Plug 'morhetz/gruvbox'

call plug#end()

" Colorscheme
colorscheme gruvbox

let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ }

highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
