"----------
" 基本的な設定
"----------
set showtabline=2
"set transparency=10
set imdisable
set guioptions-=T
set antialias
set tabstop=4
set number
set nobackup
set visualbell t_vb=
"if has("gui_running")
"  set fuoptions=maxvert,maxhorz
"  au GUIEnter * set fullscreen
"endif
set lines=99999
set columns=99999

set guifont=Ricty\ for\ Powerline:h16
autocmd ColorScheme * highlight LineNr guifg=#778899
set background=dark
colorscheme hybrid
