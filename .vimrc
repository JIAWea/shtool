" 显示相关
set nu
syntax on
autocmd InsertLeave * se nocul

"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
set foldenable              " 开始折叠

set nocompatible
set statusline=%F%m%r%h%w\[FORMAT=%{&ff}]\[TYPE=%Y]\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\-\%H:%M\")}
set cursorline              " 突出显示当前行
" set cursorcolumn            " 当前列

" 自动缩进
set smartindent   " Smart indent
set autoindent    " 打开自动缩进
set tabstop=4     " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=4  " 每一次缩进对应的空格数
set softtabstop=4 " 按退格键时可以一次删掉 4 个空格
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set expandtab     " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround    " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'

" 查找
set ignorecase
set hlsearch
set incsearch
set showmatch

" 启动鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

 "共享剪贴板
set clipboard=unnamed

