set autoindent
set smartindent
set visualbell
set backspace=indent,eol,start
set history=50
set ruler
set incsearch
set tabstop=4
set shiftwidth=4
set number
set si
set title
set hlsearch

if has("syntax")
syntax on
endif

" ctags
set tags=/var/www/tags

" Tagbar
" 실행 :Tagbar
" 닫기 :TagbarClose
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 1

" The-NERD-tree
" 실행 :NERDTree
let g:NERDChristmasTree = 1
let g:NERDTreeAutoCenter = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeSortOrder=['\.c$', '\.h$', '*']
let g:NERDTreeIgnore = ['\.vim$', '\.swp$', '\~$']
let g:lNERDTreeWinSize = 20
"let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1

" PIV
" let g:DisableAutoPHPFolding = 1

" DoxygenToolkit
let g:DoxygenToolkit_briefTag_pre="@Desc "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Return "

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails.git'

" My Bundles here:
" Bundle 'PIV'
" Bundle 'HTML-AutoCloseTag'
Bundle 'The-NERD-tree'
Bundle 'matchparenpp'
Bundle 'DoxygenToolkit.vim'
Bundle 'Tagbar'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'

Bundle 'cpp.vim'
