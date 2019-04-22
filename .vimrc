"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/takep/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " かっこなどの補完
  call dein#add('cohama/lexima.vim')
  " コード補完
  call dein#add('Shougo/neocomplete.vim')
  " ファイル検索ツリーを表示する
  call dein#add('scrooloose/nerdtree')
  " 行選択ビジュアルモードでコメントアウト
  call dein#add('tomtom/tcomment_vim')
  " 文字コードやファイルタイプなどを表示する
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  let g:airline#extensions#tabline#enabled = 1
  " インデントガイドライン
  call dein#add('nathanaelkane/vim-indent-guides')
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_auto_colors = 0
  hi IndentGuidesOdd  ctermbg=black
  hi IndentGuidesEven ctermbg=darkgrey
  " gitを使えるようにする
  call dein#add('tpope/vim-gugitive')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------





"文字コード----------------------------------------------------------------

"文字コードをUTF-8に設定
set fenc=utf-8

"ファイル読み込み時の文字コードの設定
set encoding=utf-8

"Vim script内でマルチバイト文字を使う場合の設定
scriptencoding utf-8

"保存時の文字コード
set fileencoding=utf-8

"読み込み時の文字コードの自動判別
set fileencodings=ucs-boms,utf-8,euc-jp,cp932

"改行コードの自動判別
set fileformats=unix,dos,mac

"タブとインデント--------------------------------------------------------

"タブキーでスペースを入力
set expandtab


"改行時に前の行のインデントを継続する
set autoindent

"改行時に前の行の構文をチェックし次のインデントを増減する
set smartindent

"インデントの幅
set shiftwidth=4

"タブキーで入力されるスペースの数を変更
set softtabstop=4

"タブの幅(スペース何個分か)
set tabstop=4

if has("autocmd")
  "ファイルタイプの検索を有効化
  "filetype plugin on

  "ファイルタイプに合わせたインデントを使用
  filetype indent on

  "sw=shiftwidth, sts=softtabstop, ts=tabstop, et=expandtab
  autocmd FileType c      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType c++    setlocal sw=4 sts=4 ts=4 et
  autocmd FileType c#     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType java   setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby   setlocal sw=2 sts=2 ts=2 et
  autocmd FileType html   setlocal sw=2 sts=2 ts=2 et
  autocmd FileType css    setlocal sw=4 sts=4 ts=4 et
  autocmd FileType php    setlocal sw=4 sts=4 ts=4 et
  autocmd FileType js     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vim    setlocal sw=2 sts=2 ts=2 et
  autocmd FileType zsh    setlocal sw=4 sts=4 ts=4 et
endif

"不可視文字の設定-----------------------------------------------------------

"不可視文字の可視化
set list

"不可視文字をどのように表示するか
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

"見た目系---------------------------------------------------------------------

"行番号を追加
set number

"カーソル位置を表示
set ruler

"かっこ入力時の対応するかっこを表示
set showmatch

"ステータスラインを常に表示
set laststatus=2

"コマンドラインの補完
set wildmode=list:longest

"折り返し時に表示行谷での移動をできるようにする
nnoremap j gj
nnoremap k gk

"行末の１文字先までカーソルを移動できるように
set virtualedit=onemore

"□や○文字が崩れる問題を解決
set ambiwidth=double
