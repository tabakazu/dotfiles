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

" Easy Motion Plugins
Plug 'easymotion/vim-easymotion'

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
