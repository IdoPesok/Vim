execute pathogen#infect()
filetype plugin indent on


" MAP LEADER
:let mapleader = ","    " set the <leader> key to ,


" FILE HANDLING
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>


" SET NO WRAP
nnoremap <leader>w :set nowrap<CR>


" PLACEHOLDERS
" Finds a <++>, deletes it, and change to insert mode 
inoremap <leader>p <Esc>/<++><CR>"_c4l


" TAB MANAGING
nnoremap tn :tabnew<CR> 
nnoremap tk :tablast<CR>
nnoremap tj :tabfirst<CR>
nnoremap th gT
nnoremap tl gt
nnoremap tc :tabclose<CR>


" CONTROL P
let g:ctrlp_map = '<leader>f'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " IGNORE THE node_modules directory when using CONTROL P


" MOVEMENT
" move to the beginning of a line with B and to the end with E
nnoremap B ^
nnoremap E $


" Make Y work like C and D, where it will yank from the cursor to the end of
" the line
nnoremap Y y$


" UI CONFIG
set relativenumber  " set the line numbers relative to the current line
syntax on


" SETUP NERDTREE (USED TO NAVIGATE BETWEEN FILES AND DIRECTORIES)
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeNodeDelimiter = "\u00a0"
map <C-n> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>


" MAKE jj FUNCTION AS THE ESC KEY (USED TO GET OUT OF INSERT MODE FASTER)
inoremap jj <ESC>
inoremap JJ <ESC>


" CONFIGURE THE THEME
set background=dark
set t_Co=256
colorscheme onedark
let g:onedark_termcolors=256


" SETUP AIRLINE THEME (THE BAR ON THE BOTTOM OF THE EDITOR)
let g:airline_theme='onedark'


" OVERRIDE HIGHLIGHTING COLORS
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE


" SPACES AND TABS
set tabstop=4   " number of visual spaces per TAB
set softtabstop=0   " number of spaces in tab when editing
set shiftwidth=4    " shifts the text when pressing > or < in visual mode
set expandtab   " tabs are spaces
" change all 2 space tabs in the file to 4 space tabs
nnoremap <leader>4 :set ts=2 sts=2 noet<CR> :retab!<CR> :set ts=4 sts=4 et<CR> :retab<CR>


" SEARCHING
set hlsearch    " highlight matches
set incsearch   " search as characters are entered
nnoremap <leader><space> :nohlsearch<CR>
" turn off search highlighting by pressing <SPACE>


" ENABLE EJS FILES TO HAVE THE SAME SYNTAX HIGHLIGHTING AS HTML FILES
au BufNewFile,BufRead *.ejs set filetype=html


" HTML HANDY AUTOCOMPLETES
inoremap ;h1 <h1></h1><Esc>F<i
inoremap ;h2 <h2></h2><Esc>F<i
inoremap ;h3 <h3></h3><Esc>F<i
inoremap ;h4 <h4></h4><Esc>F<i
inoremap ;h5 <h5></h5><Esc>F<i
inoremap ;h6 <h6></h6><Esc>F<i
inoremap ;title <title></title><Esc>F<i
inoremap ;a <a href="<++>"><++></a><Esc>?<++><CR>nci"
inoremap ;p <p></p><Esc>F<i
inoremap ;button <button></button><Esc>F<i
inoremap ;input <input>
inoremap ;em <em></em><Esc>F<i
inoremap ;div <div><CR></div><Esc>O
inoremap ;form <form action="#" method="POST"><CR><++><CR></form><Esc>?#<CR>ci"
inoremap ;span <span></span><Esc>F<i
inoremap ;body <body><CR></body><Esc>O
inoremap ;html <html><CR></html><Esc>O
inoremap ;head <head><CR></head><Esc>O
inoremap ;img <img src="#"><Esc>F#ci"
inoremap ;ul <ul><CR></ul><Esc>O
inoremap ;li <li></li><Esc>F<i
inoremap ;link <link rel="stylesheet" href="main"><Esc>?main<CR>cw
inoremap ;bootstrap <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"><Esc>
inoremap ;fontawesome <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"><Esc>
