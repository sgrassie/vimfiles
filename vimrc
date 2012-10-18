runtime bundle/vim-pathogen/autoload/pathogen.vim

call pathogen#infect()

color torte

set nocompatible
set laststatus=2
set encoding=utf-8

syntax on
filetype plugin indent on

au GUIEnter * simalt ~x "fullscreen ahead

"delimitmate options
let delimitMate_autoclose = 1
let delimitMate_smart_quotes = 1
