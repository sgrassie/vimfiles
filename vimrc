runtime bundle/vim-pathogen/autoload/pathogen.vim

call pathogen#infect()

set nocompatible
set laststatus=2
set encoding=utf-8
filetype on

syntax on
filetype plugin indent on

au GUIEnter * simalt ~x "fullscreen ahead
set number

"delimitmate options
let delimitMate_autoclose = 1
let delimitMate_smart_quotes = 1

"Mappings to move lines
"From: https://vim.wikia.com/wiki/Moving_lines_up_or_down 
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"NerdTree stuff
let g:NERDTreeChDirMode = 2
map <F1> <ESC>:NERDTreeToggle<RETURN>

"TagBar stuff
if has("win32") || has("win64")
	let g:tagbar_ctags_bin = '~\vimfiles\bin\ctags.exe'
endif
"autocmd VimEnter * nested :call tagbar#autoopen(1)
"autocmd FileType * nested :call tagbar#autoopen(0)
"autocmd BufEnter * nested :call tagbar#autoopen(0)
nmap <F9> :TagbarToggle<CR>

set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.class,*.swp,*/tmp/*
