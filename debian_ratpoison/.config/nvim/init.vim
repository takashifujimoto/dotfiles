call plug#begin('~/.config/nvim/plugged')
" Plugins will go here in the middle.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'reireias/vim-cheatsheet'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }



"color Scheme Plugins
Plug 'NLKNguyen/papercolor-theme'


call plug#end()

"color scheme
colorscheme PaperColor

"To invoke fuzzy file search with ⌃P
nnoremap <C-p> :FZF<CR>


"reireias/vim-cheatsheet
"自作のチートシート(メモ)を別ペインで表示するプラグインです。
"setting

let g:cheatsheet#cheat_file = '~/.config/nvim/.cheatsheet.md'





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ベーシック・カスタマイゼーション
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors	"GUI COLO enable 
syntax on

"Provides tab-completion for all file-related tasks
set path+=**

set backspace=2     " Backspace deletes like most programs in insert mode
set nocompatible    " Use Vim settings, rather then Vi settings


" Numbers
"set numberwidth=5
"set number


set hlsearch      " highlight matches
set incsearch

" no beep sound
set noerrorbells visualbell t_vb=
" status on the bottom.
set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" フォント・日本語環境 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""半角フォント   
   set guifont=Menlo:h12
   "set guifont=Source_Code_Pro_Regular:h11
"""全角フォント
   set guifontwide=MS_Gothic:h11
""Encoding
  set encoding=utf-8
  "set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
  set fileencodings=utf-8
  set fileformats=dos,unix,mac
  set helplang=ja,en


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    カレント行全体に色が着くのが嫌なので、下線だけ引くように設定。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" カレント行ハイライトON
set cursorline
" アンダーラインを引く(color terminal)
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
" アンダーラインを引く(gui)
highlight CursorLine gui=underline guifg=NONE guibg=NONE


