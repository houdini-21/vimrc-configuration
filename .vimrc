set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set tabstop=4
set smarttab
set cindent
set shiftwidth=4
set expandtab

call plug#begin('~/.vim/plugged')
"Plug 'vim-scripts/vim-auto-save'
Plug 'beanworks/vim-phpfmt'
Plug 'mlaursen/vim-react-snippets'
"Plug 'dense-analysis/ale'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'wakatime/vim-wakatime'
Plug 'mattn/emmet-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'ryanoasis/vim-devicons'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'pangloss/vim-javascript'
Plug '907th/vim-auto-save'
Plug 'morhetz/gruvbox'
"Plug 'SirVer/ultisnips'
"Plug 'mlaursen/vim-react-snippets'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript','python', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }


call plug#end()
colorscheme gruvbox
:echo gitbranch#name()
let g:lightline = {
    \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified', 'hellofriend'] ]
    \ },
    \ 'component_function': {
        \   'gitbranch': 'gitbranch#name'
    \ },
    \ 'component': {
        \ 'hellofriend': 'Hello Friend!!'
    \ },
     \ }
let g:gruvbox_contrast_dark = "hard"
let mapleader =" "
let NERDTreeQuitOnOpen=1
let g:ale_fixers = { 'javascript': ['prettier'] }
let g:ale_javascript_prettier_options = '--no-semi --trailing-comma es5'


let g:user_emmet_leader_key=','
let g:prettier#config#tab_width = 2
let g:closetag_filenames = '*.html,*.xhtml,*.css'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let g:prettier#config#single_quote = 'false' 
let g:lightline = {}
let g:auto_save = 0
let g:lightline.colorscheme = 'gruvbox'
let NERDTreeShowHidden=1
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript


nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nmap <Leader>p :Prettier<CR>
nmap <Leader>we :NERDTreeFind<CR>
nmap <Leader>up :NERDTreeRefreshRoot<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <silent> `` :nohlsearch<CR>
nmap <Leader>qq :q!<CR>
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger


let g:prettier#config#single_quote = 'true'
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
