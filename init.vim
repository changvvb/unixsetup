set nocompatible              " be iMproved, required
filetype off                  " required
" map leader key
let mapleader=" "

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ervandew/supertab'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'fatih/vim-go'
if has("nvim")
    let g:go_term_enabled = 1
    let g:go_term_mode = "belowright split"
    let g:go_term_height = 20
    let g:go_term_width = 30
    Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plugin 'Shougo/deoplete.nvim'
    Plugin 'roxma/nvim-yarp'
    Plugin 'roxma/vim-hug-neovim-rpc'
endif
" Plugin 'OrangeT/vim-csharp'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'ternjs/tern_for_vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" language server plugin
Plugin 'w0rp/ale'

Plugin 'scrooloose/nerdcommenter' 
Plugin 'tpope/vim-fugitive'
Plugin 'alessandroyorba/arcadia'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'posva/vim-vue'
Plugin 'mattn/emmet-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'WolfgangMehner/bash-support'
Plugin 'ensime/ensime-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
" Plugin 'cocopon/iceberg.vim'
" Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
set ignorecase

set tabstop=4 
" set softtabstop=0
set expandtab 
set shiftwidth=4 
set smarttab

set autoindent
set smartindent
set mouse=a
syntax on
set hlsearch
set incsearch
set scrolloff=7     " 光标移动到buffer的顶部和底部时保持3行距离  

set ruler
" set cuc
set cul

let g:NERDTreeDirArrows = 1
let g:NERDTreeGlyphReadOnly       = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_confirm_extra_conf = 0
let g:ycm_filetype_blacklist = { 'scala': 1 }
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 1
let g:ycm_global_ycm_extra_conf = '/home/changvvb/.ycm_extra_conf.py'

" let g:ycm_global_ycm_extra_conf = '/home/changvvb/ycm.py'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <S-Right> :vertical resize -1 <CR>
map <S-Left> :vertical resize +1 <CR>
map <S-Up> :resize +1 <CR>
map <S-Down> :resize -1 <CR>
map <S-s> :shell <CR>
" let completeopt-=preview
" let g:ycm_show_diagnostics_ui = 0
" let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1

"nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources={}
let g:deoplete#sources._=['buffer', 'member', 'tag', 'file', 'omni', 'ultisnips']
let g:deoplete#omni#input_patterns={}
let g:deoplete#omni#input_patterns.scala='[^. *\t]\.\w*'
autocmd FileType scala call deoplete#enable()

" Auto save
set aw


"Linting with neomake
let g:neomake_sbt_maker = {
      \ 'exe': 'sbt',
      \ 'args': ['-Dsbt.log.noformat=true', 'compile'],
      \ 'append_file': 0,
      \ 'auto_enabled': 1,
      \ 'output_stream': 'stdout',
      \ 'errorformat':
          \ '%E[%trror]\ %f:%l:\ %m,' .
            \ '%-Z[error]\ %p^,' .
            \ '%-C%.%#,' .
            \ '%-G%.%#'
     \ }
let g:neomake_enabled_makers = ['sbt']
let g:neomake_verbose=3

" Alternative tab navigation 
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>
inoremap <C-tab>   <Esc>:tabnext<CR>
inoremap <C-t>     <Esc>:tabnew<CR>



nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

" For statusline
let g:airline#extensions#tabline#enabled = 1

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Jedi
let g:jedi#force_py_version = 3
" let g:jedi#use_tabs_not_buffers = 1
" let g:jedi#use_splits_not_buffers = "left"
let g:jedi#completions_enabled = 1
"
let g:pymode_rope = 0

" Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" js json jsx html css beautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType cshtml noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd BufRead,BufNewFile *.cshtml noremap <buffer> <c-f> :call HtmlBeautify()<cr>

" Go to declaration
autocmd FileType python nnoremap <LEADER>jd :call jedi#goto()<CR>
autocmd FileType scala nnoremap <LEADER>jd :EnDeclaration<CR>
autocmd FileType go nnoremap <LEADER>jd :GoDef<CR>

" Run app by enter <F5>
autocmd FileType go map <buffer> <F5> <Esc> :GoImports <CR> :GoRun %<CR>
autocmd FileType python map <buffer> <F5> <ESC>:w<CR> :terminal python3 %<CR>
autocmd FileType rust map <buffer> <F5> <Esc>:w<CR> :Cargo run <CR>

" Rust
let g:rustfmt_autosave = 1
set backspace=2


" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~70%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '30split enew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" FZF command
" let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
let $FZF_DEFAULT_COMMAND = 'fd --no-ignore-vcs --hidden --exclude .git --exclude target'
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

:inoremap ˙ <C-\><C-N><C-w>h
:inoremap ∆ <C-\><C-N><C-w>j
:inoremap ˚ <C-\><C-N><C-w>k
:inoremap ¬ <C-\><C-N><C-w>l
:nnoremap ˙ <C-w>h
:nnoremap ∆ <C-w>j
:nnoremap ˚ <C-w>k
:nnoremap ¬ <C-w>l
if has("nvim")
    :tnoremap <Esc> <C-\><C-n>
    nnoremap <leader>o :below 10sp term://$SHELL<cr>i
    "
    :tnoremap ˙ <C-\><C-N><C-w>h
    :tnoremap ∆ <C-\><C-N><C-w>j
    :tnoremap ˚ <C-\><C-N><C-w>k
    :tnoremap ¬ <C-\><C-N><C-w>l
    autocmd FileType scala map <buffer> <F5> :below 10sp term://sbt run<CR>i
endif

" $HOME/.vimrc
set directory=$HOME/.vim/swapfiles/
colorscheme desert
