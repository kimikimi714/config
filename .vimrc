if has('vim_starting')
  set nocompatible               " Be iMproved
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" 画面表示の設定
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
let g:Powerline_symbols = 'fancy'
set t_Co=256
let g:Powerline_symbols = 'compatible'
syntax on             " シンタックスハイライト オン
NeoBundle 'tomasr/molokai'
colorscheme molokai
set background=dark
set number            " 行番号を表示する
set cursorline        " カーソル行の背景色を変える
set cursorcolumn      " カーソル位置のカラムの背景色を変える
set laststatus=2      " ステータス行を常に表示
set cmdheight=2       " メッセージ表示欄を2行確保
set title             " 編集中のタイトル名を表示する
set ruler             " ルーラーの表示
set showmatch         " 対応する括弧を強調表示
set helpheight=999    " ヘルプを画面いっぱいに開く
set list              " 不可視文字を表示
set formatoptions+=mM " テキスト挿入中の自動折り返しを日本語に対応させる
set linebreak         " 単語途中で折り返しせず、ホワイトスペースで折り返す
" 不可視文字の表示記号指定
set listchars=tab:▸=,trail:-,eol:↲,extends:❯,precedes:❮
" 全角スペース表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/
" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

" カーソル移動関連の設定

set backspace=indent,eol,start " Backspaceキーでインデントや改行を削除できるようにする
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
set scrolloff=8                " 上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

" ファイル処理関連の設定

set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   " 外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない

" 検索/置換の設定

set hlsearch   " 検索文字列をハイライトする
set incsearch  " インクリメンタルサーチを行う
set ignorecase " 大文字と小文字を区別しない
set smartcase  " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault   " 置換の時 g オプションをデフォルトで有効にする
" コメントアウトのトグル(2014-06-01)
NeoBundle 'tyru/caw.vim'
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)
" Required:
filetype plugin indent on

" タブ/インデントの設定

set expandtab     " タブ入力を複数の空白入力に置き換える
set tabstop=2     " 画面上でタブ文字が占める幅
set shiftwidth=2  " 自動インデントでずれる幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" 動作環境との統合関連の設定

" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus

" コマンドラインの設定

" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を100件保存する
set history=100

" HTMLタグの補完強化
NeoBundle 'mattn/emmet-vim'

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
