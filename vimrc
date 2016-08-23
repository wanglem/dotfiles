syntax enable
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number
set showcmd             " show command in bottom bar
set cursorline
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" move vertically by visual line
nnoremap j gj
nnoremap k gk
nnoremap <S-q> :qa<CR>    " Shift-q quit all
nnoremap <S-s> :wq<CR>    " Shift-s save & quit
