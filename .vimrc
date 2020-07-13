" -------------------------------
" ---- Plugins with vim-plug ----
"   :PlugInstall
"   :PlugUpdate!
call plug#begin()

" Language Server Protocol Plugins
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'

" Asynchronous Lint Engine Plugins
Plug 'dense-analysis/ale'

" File System Explorer Plugins
Plug 'preservim/nerdtree'

" CLI Fuzzy Finder Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Golang Plugins
Plug 'mattn/vim-goimports'

" Ruby Plugins
Plug 'tpope/vim-endwise'

call plug#end()


" --------------------------
" --- NERDTree Settings ----
"  Ctrl + e
nnoremap <silent><C-e> :NERDTreeToggle<CR>


" ----------------------
" ---- ALE Settings ----
let g:ale_fixers = {
      \ 'ruby': ['rubocop'],
      \ }
"let g:ale_fix_on_save = 1


" -----------------------------
" ---- Keybinding Settings ----
" ESC is `jj`
inoremap <silent> jj <ESC>


" ------------------------
" ---- Common Settigs ----
set encoding=UTF-8 " エンコードは UTF-8
set noswapfile " スワップを作成しない
set nobackup " バックアップを作成しない
set autoread " 内容の変更を自動的に再読み込み
set backspace=indent,eol,start " バックスペース有効
set ruler " 右下にルーラーを表示
set number " 行番号を表示
set cmdheight=2 " 行の高さ
set cursorline " 現在の行を強調表示
set title " タイトルの表示
set showmatch " 対応した括弧のハイライト
set showcmd " ステータスラインに現在打ち込んでいるコマンドを表示
set laststatus=2 " エディタウィンドウの末尾から2行目にステータスラインを常時表示
set ignorecase " 検索で大文字小文字を区別しない
set hlsearch " 検索結果のハイライト
set wrapscan " 行末まで検索したら行頭に戻る
set tabstop=2 " 画面上でタブ文字が占めるインデント
set shiftwidth=2 " 自動インデントでずれるインデント
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set expandtab " タブ入力を複数の空白入力に置き換える
set smartindent " 改行時に入力された行の末尾に合わせて次の行のインデントを増減
set autoindent " 改行時に前の行のインデントを継続
syntax on " デフォルトのハイライトが有効
highlight CursorLine cterm=underline ctermfg=none ctermbg=none

