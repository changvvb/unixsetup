set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Plugin 'powerline/powerline'
Plugin 'ervandew/supertab'
Plugin 'maksimr/vim-jsbeautify'
" Plugin 'Chiel92/vim-autoformat'
Plugin 'fatih/vim-go'
Plugin 'OrangeT/vim-csharp'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdcommenter' 
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'alessandroyorba/arcadia'
Plugin 'flazz/vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'posva/vim-vue'
Plugin 'davidhalter/jedi-vim'
Plugin 'zchee/deoplete-jedi'
Plugin 'Shougo/deoplete.nvim'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'hsanson/vim-android'
" Plugin 'rdnetto/YCM-Generator'

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
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  

set ruler
set cuc cul
colorscheme 256-jungle



let g:NERDTreeDirArrows = 1
let g:NERDTreeGlyphReadOnly       = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:ycm_global_ycm_extra_conf = '/home/changvvb/.ycm_extra_conf.py'
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_confirm_extra_conf = 0
" let g:ycm_server_keep_logfiles = 1
let g:ycm_python_binary_path = '/usr/bin/python'

" let g:ycm_global_ycm_extra_conf = '/home/changvvb/ycm.py'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <C-Right> :vertical resize -1 <CR>
map <C-Left> :vertical resize +1 <CR>
map <C-Up> :resize +1 <CR>
map <C-Down> :resize -1 <CR>
"let completeopt-=preview
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1

"nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" " Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }

" " Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


let g:statline_syntastic = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



map <F5> :GoRun main.go <CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

" FOR POWERLIN
set laststatus=2
let g:Powerline_symbols='unicode'


if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Jedi
let g:jedi#force_py_version = 2
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#completions_enabled = 1
" Run python with F9
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

let g:pymode_rope = 0

" Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" deoplete 
let g:deoplete#enable_at_startup = 1
call deoplete#enable()

" Alternative tab navigation 
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" js json jsx html css beautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType cshtml noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

autocmd BufRead,BufNewFile *.cshtml noremap <buffer> <c-f> :call HtmlBeautify()<cr>



