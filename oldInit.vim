
call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'sainnhe/sonokai'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ThePrimeagen/vim-be-good'
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'wellle/context.vim'
call plug#end()

" commentart
vmap / gc

" undo tree
map <f5> :UndotreeToggle<CR>

" harpoon
map <Space>a :lua require("harpoon.mark").add_file()<CR>
map <Space>u :lua require("harpoon.ui").toggle_quick_menu()<CR>
map <Space>1 :lua require("harpoon.ui").nav_file(1)<CR>
map <Space>2 :lua require("harpoon.ui").nav_file(2)<CR>
map <Space>3 :lua require("harpoon.ui").nav_file(3)<CR>
map <Space>4 :lua require("harpoon.ui").nav_file(4)<CR>
map <Space>5 :lua require("harpoon.ui").nav_file(5)<CR>
map <Space>h :lua require("harpoon.ui").nav_prev()<CR>
map <Space>l :lua require("harpoon.ui").nav_next()<CR>
map <Tab> :lua require("harpoon.ui").nav_next()<CR>

" fuzzy file finder
map <Space>f :Files<CR>

" nerd tree
nnoremap <C-f> :NERDTreeToggle<CR>

" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'atlantis'
let g:sonokai_better_performance = 1

" colorscheme
colorscheme sonokai

if has('termguicolors')
  set termguicolors
endif

syntax on
set number
set relativenumber
set mouse+=a
set shortmess+=I
set scrolloff=5
set autoindent
set smartindent
set smarttab
set expandtab		" Converts a tab to spaces

source ~/.vim/config/tabs.vim

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

set foldenable      	" enable folding (type za to fold code)
set foldlevelstart=10   " open most folds by default
set foldnestmax=10  	" 10 nested fold max
set foldmethod=indent   " fold based on indent level

" (Shift)Tab (de)indents code in visual mode
vnoremap <Tab> >
vnoremap <S-Tab> <
" Other way to go back to normal mode from insert
inoremap jj <esc>

" Remove arrows in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
" Remove arrows in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" Airline
let g:airline_detect_modified = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:tender_airline = 1
set encoding=utf-8 " Necessary to show unicode glyphs

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

