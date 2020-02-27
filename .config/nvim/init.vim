if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let s:toml_dir  = '~/.config/nvim'
  let s:toml      = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" 文字コード関連
scriptencoding utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ciso-2022-jp,p932,euc-jp,default,latin
set fileformat=unix
set fileformats=unix,dos,mac

" 履歴
set history=1000

" クリップボード
set clipboard=unnamed

" シンタックス
syntax on

" 行番号
set number

" 折り返し
set nowrap

" タイトルを表示
set title

" 入力コマンドを表示
set showcmd

" 検索次に大文字小文字を区別
set noignorecase

" 検索時に順次ヒット
set incsearch

" 括弧入力時に対応する括弧を表示
set showmatch

" タブ幅の設定
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0

" 改行時のコメントアウトを無効
set formatoptions-=ro
