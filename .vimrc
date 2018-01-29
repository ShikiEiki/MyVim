execute pathogen#infect()
syntax on
filetype plugin indent on

" -------------------------------YouCompleteMe设置
" 编译ycm_core.so时用的是Python2，所以这里得把ycm运行时的python解释器改为python2的，否则会报错
let g:ycm_server_python_interpreter='/usr/bin/python'
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

" -------------------------------syntastic 设置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['standard']

" tab大小是4
set tabstop=4
" 缩进大小是4
set shiftwidth=4
" 退格时退回长度是4
set softtabstop=4
" 将所有tab展开为空格
" 在换行时保持当前行的缩进
set expandtab autoindent
