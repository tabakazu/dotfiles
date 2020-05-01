" vim-plugin
"   :PlugInstall
"   :PlugUpdate!
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" NERDTree plugin
"  Ctrl + e
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" バックアップを作成しない
set nobackup
" 内容の変更を自動的に再読み込み
set autoread
" バックスペース有効
set backspace=indent,eol,start
" デフォルトのハイライトが有効
syntax on
" 右下にルーラーを表示
set ruler
" 行番号を表示
set number
" 行の高さ
set cmdheight=2
" 現在の行を強調表示
set cursorline
highlight CursorLine cterm=underline ctermfg=none ctermbg=none
" タイトルの表示
set title
" 対応した括弧のハイライト
set showmatch
" ステータスラインに現在打ち込んでいるコマンドを表示
set showcmd
" エディタウィンドウの末尾から2行目にステータスラインを常時表示
set laststatus=2
" 検索で大文字小文字を区別しない
set ignorecase
" 検索結果のハイライト
set hlsearch
" 行末まで検索したら行頭に戻る
set wrapscan
" 画面上でタブ文字が占めるインデント
set tabstop=2
" 自動インデントでずれるインデント
set shiftwidth=2
" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=2
" タブ入力を複数の空白入力に置き換える
set expandtab
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減
set smartindent
" 改行時に前の行のインデントを継続
set autoindent
" コピペの自動インデント無効化
set paste
