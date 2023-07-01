""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
syntax on
filetype plugin indent on

autocmd InsertLeave * se nocul
" 让vimrc配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

set foldcolumn=0
set foldmethod=indent
set foldlevel=3
set foldenable              " 开始折叠

set statusline=%F%m%r%h%w\[FORMAT=%{&ff}]\[TYPE=%Y]\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\-\%H:%M\")}

" 搜索逐字符高亮
set hlsearch
set incsearch

" Tab键的宽度
set tabstop=4
" 设置自动缩进长度为4空格
set shiftwidth=4
" 继承前一行的缩进方式，适用于多行注释
set autoindent

" 显示标尺
set ruler
" 总是显示状态栏
set laststatus=2

" 输入的命令显示出来，看的清楚些
set showcmd

" 设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set nocompatible

" 搜索的时候忽略大小字字母
set ignorecase
" 若搜索内容中有大写字母，则不再忽略大小写
set smartcase
" 括号匹配
set showmatch

" 突出显示当前行
set cursorline
" 突出显示当前列
set cursorcolumn
" 高亮第80列
set colorcolumn=80

" 启动鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set paste

" 显示空格和 tab 键
set listchars=tab:>-,trail:-

"指定配色方案为256色
" set t_Co=256

"设置换行符为unix
set ff=unix

" 命令可以用tab补全,并设置匹配规则
set wildmenu
set wildmode=list:longest,full

"不要闪烁
set novisualbell

"被分割窗口之间显示空白
set fillchars=stl:/
set fillchars=vert:/
set fillchars=stlnc:/

