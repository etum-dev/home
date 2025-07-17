set number
set autoindent
set smartindent
set wrap
set tabstop=2
nmap ,n <esc>:NERDTree<CR>

call plug#begin()
" List your plugins here
        Plug 'tpope/vim-sensible'
        Plug 'preservim/nerdtree'
        Plug 'PhilRunninger/nerdtree-visual-selection'
call plug#end()

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

