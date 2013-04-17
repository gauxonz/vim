set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'Valloric/YouCompleteMe'	
 "^DONT FORGET TO COMPILE
 "cd ~/.vim/bundle/YouCompleteMe
 "./install.sh --clang-completer
 " vim-scripts repos
 Bundle 'taglist.vim'
 Bundle 'winmanager'
 Bundle 'minibufexpl.vim'
 Bundle 'a.vim'
 Bundle 'grep.vim'
 Bundle 'Visual-Mark'
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
" END OF VUNDLE CONFIGURE
"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
"""""""""""""""""""""""""""""""""""""
" Plug in settings
"""""""""""""""""""""""""""""""""""""
"### Taglist & WinManager ###
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

"### MiniBufExplorer ###
"<C-Tab>	向前循环切换到每个buffer上,并在但前窗口打开
"<C-S-Tab>	向后循环切换到每个buffer上,并在但前窗口打开
let g:miniBufExplMapCTabSwitchBufs = 1
"用<C-箭头键>切换到上下左右窗口中去
let g:miniBufExplMapWindowNavArrows = 1

"### A ###
nnoremap <silent> <F12> :A<CR> " not work on mac

"### Grep ###
nnoremap <silent> <F3> :Grep<CR> "not work on mac

"### YouCompeletMe ###
let g:ycm_global_ycm_extra_conf = '/Users/Gauxonz/.vim/bundle/YouCompleteMe/'

"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

"""""""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""""""
" -----------------   Author: Ruchee
" -----------------    Email: my@ruchee.com
" -----------------  WebSite: http://www.ruchee.com
" -----------------     Date: 2012-04-01


" Ctrl + H                   --光标移行首
" Ctrl + J                   --光标移下一行行首
" Ctrl + K                   --光标移上一行行尾
" Ctrl + L                   --光标移行尾
" Ctrl + Z                   --取代ESC模式键 [和部分软件的快捷键有冲突]
" Ctrl + S                   --保存文件
" Ctrl + C                   --编译 [支持C/C++、Java、Haskell]
" Ctrl + R                   --运行 [支持C/C++、Java、Haskell、Lua、Perl、Python、Ruby]
" Ctrl + ]                   --转到函数定义
" Ctrl + T                   --返回调用函数
" Ctrl + E                   --添加注释 [插入模式] [添加的是C语言的多行注释，所以适用于C/C++/Java等]
" Ctrl + E                   --一步加载语法模板和作者、时间信息 [非插入模式]

" <C-P>                      --单词补全
" <C-X><C-L>                 --整行补全
" Tab键                      --插入模式下的全功能语法结构补全 [snipMate插件]
" Shift + Insert             --向Vim中粘贴从别处复制的内容

" nt                         --打开NERDTree [非插入模式]
" tl                         --打开TagList [非插入模式]
" \ww                        --进入vimWiki模式 [非插入模式]

" za                         --打开或关闭当前折叠
" zM                         --关闭所有折叠
" zR                         --打开所有折叠

" :set syntax=cpp            --手动选择语法高亮 [或 :set filetype=cpp]

" :%!xxd                     --转储二进制文件，以十六进制形式显示
" :%!xxd -r                  --还原二进制文件


" ---------- 主要插件详细用法说明 ---------------------

" :Tlist                     --呼出变量和函数列表 [TagList插件]
" :FencView                  --查看文件编码和更改文件编码 [FencView插件]
" :LoadTemplate              --呼出语法模板 [Load_Template插件]
" :AuthorInfoDetect          --添加作者、时间等信息 [NERD_commenter && authorinfo插件]

" ---------- a.vim [自动切换C/C++同名头文件] ----------
"
" :A                         --切换同名头文件并独占整个屏幕
" :AS                        --切换同名头文件并垂直分屏，头文件在上
" :AV                        --切换同名头文件并水平分割，头文件在左

" ---------- mark.vim [追踪高亮指定关键字] ------------
"
" \m                         --normal模式下，在想要高亮的单词上面敲击\m即可高亮或取消高亮该单词
" :Mark                      --取消所有高亮
" :Mark abc                  --指定高亮单词 abc 或取消高亮 abc

" ---------- NERDTree [智能文件浏览器] ----------------
"
" :NERDTree                  --启动NERDTree插件
" o [小写]                   --切换当前文件或目录的打开、关闭状态
" u                          --打开上层目录
" p [小写]                   --返回上层目录
" P [大写]                   --返回根目录
" K                          --转到当前目录第一个节点
" J                          --转到当前目录最后的节点
" m                          --显示文件系统菜单 [增、删、移]
" ?                          --弹出帮助菜单
" q                          --退出该插件




" =========
" 功能函数
" =========
" 获取当前目录
func GetPWD()
    return substitute(getcwd(), "", "", "g")
endf
  
" =========
" 环境配置
" =========


set laststatus=2             " 开启状态栏信息
set cmdheight=2              " 命令行的高度，默认为1，这里设为2

" 保留历史记录
set history=400
  
" 命令行于状态行
set ch=1
"set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]\ %l,%c\ %=\ %P 
set ls=2 " 始终显示状态行
    
set hidden                   " 允许在有未保存的修改时切换缓冲区
set writebackup              " 设置无备份文件
set nobackup
set autochdir                " 设定文件浏览器目录为当前目录

" 制表符
set tabstop=2
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
  
" 状态栏显示目前所执行的指令
set showcmd 
  
" 行控制
set linebreak
set nocompatible
set textwidth=80
set wrap
set so =7
  
" 行号和标尺
set number
set ruler
set rulerformat=%15(%c%V\ %p%%%)

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.s,*.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.erb,*.hs,*.vim 2match Underlined /.\%81v/
  
" 控制台响铃
:set noerrorbells
:set novisualbell
:set t_vb= "close visual bell
  
" 插入模式下使用 <BS>、<Del> <C-W> <C-U>
set backspace=indent,eol,start
  
" 标签页
set tabpagemax=20
set showtabline=2
  
" 缩进
set autoindent
set cindent
set smartindent
set ai!                      " 设置自动缩进
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,

" 自动重新读入
set autoread
  
" 代码折叠
"set foldmethod=manual
set foldmethod=indent
"set foldmethod=syntax 
"set foldmethod=marker
"set foldlevel=5            " 禁止自动折叠
  
"查找
set ignorecase
set incsearch
set hlsearch
  
"显示匹配的括号
set showmatch
  
"实现全能补全功能，需要打开文件类型检测
"filetype plugin indent on
"打开vim的文件类型自动检测功能
filetype on
  
"在所有模式下都允许使用鼠标，还可以是n,v,i,c等
set mouse=a
  
" 恢复上次文件打开位置
set viminfo='10,\"100,:20,%,n~/.viminfo
  
" =====================
" 多语言环境
"    默认为 UTF-8 编码
" =====================
if has("multi_byte")
    set encoding=utf-8
    " English messages only
    "language messages zh_CN.utf-8
  
    if has('win32')
        language english
        let &termencoding=&encoding
    endif
    
    set fenc=utf-8
    set fencs=ucs-bom,utf-8,gbk,cp936,latin1
    set formatoptions+=mM
    set nobomb " 不使用 Unicode 签名
  set fileencodings=utf-8,gbk,cp936,latin-1
  " 解决菜单乱码
  source $VIMRUNTIME/delmenu.vim
  source $VIMRUNTIME/menu.vim
  " 解决consle输出乱码
  language messages zh_CN.utf-8
    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

colorscheme dusk
set background=dark
  
" =========
" 图形界面
" =========
if has('gui_running')
    " 只显示菜单
    set guioptions=mcr
  
    " 高亮光标所在的行
    set cursorline
    " 编辑器配色
    "colorscheme zenburn
    "colorscheme dusk
    "colorscheme mustang
    if has("win32")
        " Windows 兼容配置
        source $VIMRUNTIME/mswin.vim
  
        " f11 最大化
        nmap <f11> :call libcallnr('fullscreen.dll', 'ToggleFullScreen', 0)<cr>
        nmap <Leader>ff :call libcallnr('fullscreen.dll', 'ToggleFullScreen', 0)<cr>
 
        " 自动最大化窗口
        au GUIEnter * simalt ~x
 
        " 给 Win32 下的 gVim 窗口设置透明度
        au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 250)
  
        " 字体配置
        exec 'set guifont='.iconv('Courier_New', &enc, 'gbk').':h11:cANSI'
        exec 'set guifontwide='.iconv('微软雅黑', &enc, 'gbk').':h11'
    endif

    if has("unix") && !has('gui_macvim')
        set guifont=Courier\ 10\ Pitch\ 11
        set guifontwide=YaHei\ Consolas\ Hybrid\ 11
    endif
  
    if has("gui_macvim")
        " MacVim 下的字体配置
        set guifont=Menlo:h12
        set guifontwide=Hei:h12
        " 半透明和窗口大小
        "set transparency=2
        set lines=40 columns=110
  
        " 使用MacVim原生的全屏幕功能
        let s:lines=&lines
        let s:columns=&columns
         
        func! FullScreenEnter()
            set lines=999 columns=999
            set fu
        endf
  
        func! FullScreenLeave()
            let &lines=s:lines
            let &columns=s:columns
            set nofu
        endf
  
        func! FullScreenToggle()
            if &fullscreen
                call FullScreenLeave()
            else
                call FullScreenEnter()
            endif
        endf
 
        " Mac 下，按 \\ 切换全屏
        nmap <Leader><Leader>  :call FullScreenToggle()<cr>
 
        " Set input method off
        set imdisable
  
        " Set QuickTemplatePath
        let guickTemplatePath = $HOME.'/.vim/templates/'
         
        " 如果为空文件，则自动设置当前目录为桌面
        lcd ~/Desktop/
  
        " 自动切换到文件当前目录
        set autochdir
  
        " Set QuickTemplatePath
        let guickTemplatePath = $HOME.'/.vim/templates/'
 
    endif
endif

" ========== "
"引号 && 括号自动匹配 
" =========
if has("autocmd")
    filetype plugin indent on
  
    " 括号自动补全
    func! AutoClose()
        :inoremap ( ()<ESC>i
        :inoremap " ""<ESC>i
        :inoremap ' ''<ESC>i
        :inoremap { {}<ESC>i
        :inoremap [ []<ESC>i
        :inoremap } <c-r>=ClosePair('}')<CR>
        :inoremap ] <c-r>=ClosePair(']')<CR>
        :inoremap ) <c-r>=ClosePair(')')<CR>
    endf
  
    func! ClosePair(char)
        if getline('.')[col('.') - 1] == a:char
            return "\<Right>"
        else
            return a:char
        endif
    endf
  
  
    "auto close quotation marks for PHP, Javascript, etc, file
    au FileType php,c,C,cpp,python,javascript exe AutoClose()
  
    " Auto Check Syntax
    au BufWritePost,FileWritePost *.js,*.php call CheckSyntax(1)
  
    " JavaScript 语法高亮
    au FileType html,javascript let g:javascript_enable_domhtmlcss = 1
  
    " 给 Javascript 文件添加 Dict
    if has('gui_macvim') || has('unix')
        au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
    else
        au FileType javascript setlocal dict+=$VIM/vimfiles/dict/javascript.dict
    endif
  
    " 格式化 JavaScript 文件
    "au FileType javascript map <f12> :call g:Jsbeautify()<cr>
    au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
  
    " 给 CSS 文件添加 Dict
    if has('gui_macvim') || has('unix')
        au FileType css setlocal dict+=~/.vim/dict/css.dict
    else
        au FileType css setlocal dict+=$VIM/vimfiles/dict/css.dict
    endif
  
    " 增加 ActionScript 语法支持
    au BufNewFile,BufRead *.as setf actionscript
 
    " CSS3 语法支持
    au BufRead,BufNewFile *.css set ft=css syntax=css3
 
    " 增加 Objective-C 语法支持
    au BufNewFile,BufRead,BufEnter,WinEnter,FileType *.m,*.h setf objc
 	
    "au BufNewFile,BufRead,BufEnter,WinEnter,FileType *.C *.cpp,*.h setf cpp

    " 将指定文件的换行符转换成 UNIX 格式
    au FileType php,javascript,html,css,python,vim,vimwiki set ff=unix
 
    " 保存编辑状态
    au BufWinLeave * if expand('%') != '' && &buftype == '' | mkview | endif
    au BufRead     * if expand('%') != '' && &buftype == '' | silent loadview | syntax on | endif
  
    " 自动最大化窗口
    if has('gui_running')
        if has("win32")
            au GUIEnter * simalt ~x
        "elseif has("unix")
            "au GUIEnter * winpos 0 0
            "set lines=999 columns=999
        endif
    endif
endif

