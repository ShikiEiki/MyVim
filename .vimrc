" ========================== 基本设置 ===================================
" 设置背景为dark
set bg=dark
" 设置显示行号
set nu
" tab大小是4
set tabstop=4
" 缩进大小是4
set shiftwidth=4
" 退格时退回长度是4
set softtabstop=4
" 将所有tab展开为空格
" 在换行时保持当前行的缩进
set expandtab autoindent


" =========================基本设置结束==================================




" ==========================vundle 设置==================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" 自动补全YCM
Plugin 'Valloric/YouCompleteMe' 
" 语义纠错Syntastic
Plugin 'vim-syntastic/syntastic'
" 自动格式化autoformat
Plugin 'Chiel92/vim-autoformat'
" 树形文件管理插件NerdTree
Plugin 'scrooloose/nerdtree'
" 括号引号自动补全DelimitMate
Plugin 'Raimondi/delimitMate'
" 层级缩进美化IndentLine
Plugin 'Yggdroot/indentLine'
" 多行编辑插件multiple-cursors
Plugin 'terryma/vim-multiple-cursors'
" HTML编辑助手emmet
Plugin 'mattn/emmet-vim'
" Html标签匹配MatchTagAlways
Plugin 'Valloric/MatchTagAlways'
" Html标签自动补全CloseTag
Plugin 'alvan/vim-closetag'
" css颜色值显示ColorEsque
Plugin 'gko/vim-coloresque'
" css3 高亮显示vim-css3-syntax
Plugin 'hail2u/vim-css3-syntax'
" js语法高亮vim-javascript
Plugin 'pangloss/vim-javascript'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ============================vundle 设置结束=================================
" ============================Syntastic 设置==================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ============================Syntastic 设置结束==============================
" ============================YouCompleteMe设置===============================

" 编译ycm_core.so时用的如果是Python2，可能会报need python2的错误,解决方法是这里把ycm运行时的python版本改为Python2
let g:ycm_server_python_interpreter='/usr/bin/python2'

" 触发自动补全的处罚按键
let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.'],
            \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
            \             're!\[.*\]\s'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::'],
            \   'cs,java,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \   'javascript' : ['.', 're!(?=[a-zA-Z]{3,4})'],
            \   'html' : ['<', '"', '</', ' '],
            \   'scss,css' : ['re!^\s{2,4}', 're!:\s+']
            \ }

" ============================YouCompleteMe设置结束===========================
