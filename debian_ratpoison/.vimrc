"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"             VIM PLUG    プラグイン 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" ALE (Asynchronous Lint Engine) is a comprehensive code analysis 
Plug 'w0rp/ale'

" Multiple-cursors
Plug 'terryma/vim-multiple-cursors'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


"EMMET - html editor
Plug 'mattn/emmet-vim'

"CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

"reireias/vim-cheatsheet
Plug 'reireias/vim-cheatsheet'
let g:cheatsheet#cheat_file = '~/vimfiles/.cheatsheet.md'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"https://www.reddit.com/r/vim/comments/96fp3x/windows_fzf_and_gvim/"
"Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
"Plug 'junegunn/fzf.vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" https://github.com/airblade/vim-gitgutter

"Solarized Color
"Plug 'altercation/vim-colors-solarized'

Plug 'arcticicestudio/nord-vim'

"vim-go
Plug 'fatih/vim-go'

" Initialize plugin system
call plug#end()

"To invoke fuzzy file search with ⌃P
"nnoremap <C-p> :FZF<CR>




"Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/syntastic'

" ESLint configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" experiement  実験  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2  " Always display the status line
"set ruler 
"set autowrite     " Automatically :write before running commands
"set clipboard=unnamed




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ベーシック・カスタマイゼーション
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ＯＳから=ぺーストする。
    nnoremap <C-Down> "+gP

syntax on
set t_co=256
"Provides tab-completion for all file-related tasks
set path+=**

set backspace=2     " Backspace deletes like most programs in insert mode
set nocompatible    " Use Vim settings, rather then Vi settings

"Tab
set tabstop=4		"set tab width
set shiftwidth=4
set expandtab
"Softtabs 4 spaces

" Numbers
set numberwidth=5
set number

set hlsearch      " highlight matches
set incsearch

" no beep sound
set noerrorbells visualbell t_vb=
" status on the bottom.
set laststatus=2


"hide tool bar
"https://vim.fandom.com/wiki/Hide_toolbar_or_menus_to_see_more_text 

":set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
";;:set guioptions-=L  "remove left-hand scroll bar


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" フォント・日本語環境 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""半角フォント
   
  "set guifont=Menlo:h12
  "set guifont=Source_Code_Pro_Regular:h11
  set guifont=Consolas:h11
  
  
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




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Special キー・バインディング
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" provide hjkl movements in Insert mode via the <C-S-> modifier key
"inoremap <C-S-h> <C-o>h
"inoremap <C-S-j> <C-o>j
"inoremap <C-S-k> <C-o>k
"inoremap <C-S-l> <C-o>l
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" practice    練習用 
" Vim上手くなったら、消していいよ。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <Left> :echoe "ｈキーをを使ってね。"<CR>
"nnoremap <Right> :echoe "ｌキーをを使ってね。"<CR>
"nnoremap <Up> :echoe "ｋキーをを使ってね。"<CR>
"nnoremap <Down> :echoe "ｊキーをを使ってね。"<CR>

"これをやめたのはmulti-cursorプラグインでインサートモードで右に行くときつかう。
"inoremap <Left> <esc>
"inoremap <Right> <esc> 
"inoremap <Up> <esc>
"inoremap <Down>  <esc>

"inoremap <BS> <Nop>

