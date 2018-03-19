"--------------------
" 基本的な設定
"--------------------
"新しい行のインデントを現在行と同じにする
set autoindent
set smartindent

"バックアップファイルのディレクトリを指定する
"set backupdir=$HOME/.vim/.vimbackup

set encoding=utf-8

set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile

" 全角記号を正常に表示
set ambiwidth=double

" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2

"undo履歴の保存
set undodir=$HOME/.vim/undodir
set undofile

"クリップボードをWindowsと連携する
set clipboard=unnamed,autoselect

"上下8行の視界を確保
set scrolloff=8

" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full

" コマンドラインの履歴を10000件保存する
set history=10000

"ビープ音すべてを無効にする
set visualbell t_vb=

" カーソル行の背景色を変える
set cursorline

"エラーメッセージの表示時にビープを鳴らさない
set noerrorbells

"vi互換をオフする
set nocompatible

" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap

"スワップファイル用のディレクトリを指定する
set directory=$HOME/.vim/.vimbackup

"タブの代わりに空白文字を指定する
set expandtab

"タブ幅を4に
set tabstop=4
set shiftwidth=4

"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden

"インクリメンタルサーチを行う
set incsearch

"検索結果ハイライト
set hlsearch

" 小文字の検索でも大文字も見つかるようにする
set ignorecase

" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase

"最後尾の検索候補から先頭に戻る
set wrapscan

"行番号を表示する
set number
set ruler

" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" /{pattern}の入力中は「/」をタイプすると自動で「\/」が、
" ?{pattern}の入力中は「?」をタイプすると自動で「\?」が 入力されるようになる
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
if has('unnamedplus')
    set clipboard& clipboard+=unnamedplus
else
    set clipboard& clipboard+=unnamed,autoselect
endif

"インサートモードでも移動
inoremap <c-d> <delete>
inoremap <c-n> <down>
inoremap <c-p> <up>
inoremap <c-b> <left>
inoremap <c-f> <right>

"閉括弧が入力された時、対応する括弧を強調する
set showmatch

"新しい行を作った時に高度な自動インデントを行う
set smarttab

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>
"カラースキーム
autocmd ColorScheme * highlight LineNr ctermfg=152
colorscheme hybrid
highlight Normal ctermbg=none

""0"で始まる数値を、8進数として扱わないようにする
set nrformats-=octal

"文字のないところにカーソル移動できるようにする
"set virtualedit+=all

" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen

"jjでノーマルモードへ
noremap! <silent> jj <ESC>

"ノーマルモード時にカーソル位置で改行を挿入する
nnoremap <CR> i<CR><ESC>k

"行が折り返されている時(set wrap) j k キーによる上下移動が論理行単位ではなく表示行単位で行われるようにする
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

"Yで行末までコピー
nnoremap Y y$

";でコマンドラインモード
nnoremap ; :

"複数ファイルの編集を可能にする
set hidden

"インサートモードから抜けるときにIMEオフ
set imdisable

"色つけ
syntax on

"backspaceがindent,eol,startを超えて動作するようにする
set backspace=indent,eol,start

set whichwrap=b,s,h,l,<,>,[,],~
"括弧の対応をハイライト
set showmatch

"n, N キーで「次の（前の）検索候補」を画面の中心に表示する
nnoremap n nzz
nnoremap N Nzz

"行頭、行末のマッピング
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^i
noremap <C-e> <Esc>$
noremap <C-a> <Esc>^
if !has('gui_running')
    augroup seiya
        autocmd!
        autocmd VimEnter,ColorScheme * highlight Normal ctermbg=none
        autocmd VimEnter,ColorScheme * highlight LineNr ctermbg=none
        autocmd VimEnter,ColorScheme * highlight SignColumn ctermbg=none
        autocmd VimEnter,ColorScheme * highlight VertSplit ctermbg=none
        autocmd VimEnter,ColorScheme * highlight NonText ctermbg=none
    augroup END
endif

if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile                                                                                                                                   
endif

" Powerline
"set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim/
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"set laststatus=2
"set showtabline=2
"set noshowmode

" dein.vim
" dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/.dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/.dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('w0ng/vim-hybrid')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-surround')
call dein#add('airblade/vim-gitgutter')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
"let g:airline_powerline_fonts = 1
let g:airline_theme='hybridline'
set laststatus=2
"call dein#add('itchyny/lightline.vim')
"let g:lightline = {
"      \ 'colorscheme': 'wombat',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"      \ },
"      \ 'component_function': {
"      \   'gitbranch': 'fugitive#head'
"      \ },
"      \ }
"" タブバーの右領域を非表示にする
"let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#show_tab_type = 0
"let g:airline#extensions#tabline#show_close_button = 0

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

"If you ...から下の部分のコメントアウトを外しておく
" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

"End dein Scripts-------------------------

