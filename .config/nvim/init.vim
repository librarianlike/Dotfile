" 文字コード関連
scriptencoding utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ciso-2022-jp,p932,euc-jp,default,latin
set fileformat=unix
set fileformats=unix,dos,mac

" タブ幅の設定
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0

" 改行時のコメントアウトを無効
set formatoptions-=ro

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

" dein用設定
if $compatible
 set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

au FileType * setlocal formatoptions-=ro

" ESCでIMEを確実にOFF
inoremap <ESC> <ESC>:set iminsert=0<CR>

" 色設定
set termguicolors

" dein settings {{{
" dein自体の自動インストール
if has('unix')
	let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
	let s:dein_dir = s:cache_home . '/dein'
	let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
	if !isdirectory(s:dein_repo_dir)
	  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
	endif
	let &runtimepath = s:dein_repo_dir .",". &runtimepath
	" " プラグイン読み込み＆キャッシュ作成
	let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
	let s:toml_lazy_file = fnamemodify(expand('<sfile>'), ':h').'/dein_lazy.toml'
	if dein#load_state(s:dein_dir)
	  call dein#begin(s:dein_dir)
	  call dein#load_toml(s:toml_file, {'lazy':0})
	  call dein#load_toml(s:toml_lazy_file, {'lazy':1})
	  call dein#end()
	  call dein#save_state()
	endif
	" " 不足プラグインの自動インストール
	if has('vim_starting') && dein#check_install()
	  call dein#install()
	endif
	
	" }}}
	
	" プラグイン設定読み込み
	runtime! userautoload/*.vim
	
endif

filetype plugin indent on


