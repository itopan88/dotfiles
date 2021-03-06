" 挙動を vi 互換ではなく、Vim のデフォルト設定にする
set nocompatible
" " 一旦ファイルタイプ関連を無効化する
filetype off
"""""""""""""""""""""""""""""""
" プラグインのセットアップ
"""""""""""""""""""""""""""""""
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'
" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


"""""""""""""""""""""""""""""""
" 設定 
"""""""""""""""""""""""""""""""
" スワップファイルは使わない
set noswapfile

" カーソルが何行目の何列目に置かれているかを表示する
set ruler

" コマンドラインに使われる画面上の行数
set cmdheight=2

" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2

" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title

" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu

" 入力中のコマンドを表示する
set showcmd

" 小文字のみで検索したときに大文字小文字を無視する
set smartcase

" 検索結果をハイライト表示する
set hlsearch

" 暗い背景色に合わせた配色にする
set background=dark

" タブ入力を複数の空白入力に置き換える
set expandtab

" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch

" 保存されていないファイルがあるときでも別のファイルを開けるようにする
set hidden

" 不可視文字を表示する
set list

" タブと行の続きを可視化する
set listchars=tab:>\ ,extends:<

" 行番号を表示する
set number

" 対応する括弧やブレースを表示する
set showmatch

" 改行時に前の行のインデントを継続する
set autoindent

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" タブ文字の表示幅
set tabstop=2

" Vimが挿入するインデントの幅
set shiftwidth=2

" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" 構文毎に文字色を変化させる
syntax on

" カラースキーマの指定
colorscheme desert

" 行番号の色
highlight LineNr ctermfg=darkyellow

" ペースト時にインデントでずれない
set paste

"TAB,EOFなどを可視化する
"set list
"set listchars=tab:>-,extends:<,trail:-,eol:<
