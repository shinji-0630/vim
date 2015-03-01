" 行番号を非表示 (number:表示)
set number
" タブや改行を表示 (list:表示)
set list
" タブを設定
 set ts=2 sw=2 sts=2
"tabをスペースにする
set expandtab
" バックアップファイルを作成しない (次行の先頭の " を削除すれば有効になる)
set nobackup
" クリップボードを共有
set clipboard+=unnamed
" viminfoを作成しない
set viminfo=

"matchitを有効にする
set nocompatible
filetype plugin on
source $VIMRUNTIME/macros/matchit.vim
"----------------------------------------
" 各種プラグイン設定
"----------------------------------------
"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=$VIM/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('$VIM/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
" NERDTreeを設定
"NeoBundle 'scrooloose/nerdtree'
" ファイルオープンを便利に
"NeoBundle 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
"NeoBundle 'Shougo/neomru.vim'
" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'
" シングルクオートとダブルクオートの入れ替え等
NeoBundle 'tpope/vim-surround'
" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
"emmet
NeoBundle 'mattn/emmet-vim'
" solarized
NeoBundle 'altercation/vim-colors-solarized'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
