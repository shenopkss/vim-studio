let mapleader=";"
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim"
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>"
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>"
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>"

" 文件编码"
set encoding=utf-8
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 删除行首空行回车
set backspace=indent,eol,start 

""""""""" 配色方案 """""""""
syntax enable
syntax on
set t_Co=256
"set background=dark
"colorscheme Dark2 
colorscheme Dracula
"colorscheme RefractorMyCode 
"colorscheme desert
"colorscheme 256-jungle 
""colorscheme blackboard
""colorscheme spiderhawk

""""""""" 显示选项 """"""""""
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
"set guifont =  

"""""""""" 缩进 """"""""""
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

"""""""""" 代码折叠 """"""""""
" 基于缩进或语法进行代码折叠
set foldmethod=indent
"set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存快捷键
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
" 恢复快捷键
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>"


filetype on 
syntax on  "打开语法高亮显示
let $LANG = 'en'  "set message language  
set langmenu=en   "set menu's language of gvim. no spaces beside '='  
""set mouse=a "是能鼠标"
set autoindent "自动对齐，使用上一行的对齐方式
set smartindent "智能对齐方式
""set showmatch  "设置匹配模式，类似当输入一个左括号时匹配上相应的那个右括号

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
    map <F8> :BundleInstall<CR>

""""状态栏
Bundle 'Lokaltog/vim-powerline'
    "let g:Powerline_symbols = 'fancy' 
    "let g:Powerline_colorscheme='solarized256'

""""代码缩进显示
Bundle 'nathanaelkane/vim-indent-guides'
    " 随 vim 自启动
    let g:indent_guides_enable_on_vim_startup=1
    " 从第二层开始可视化显示缩进
    let g:indent_guides_start_level=2
    " 色块宽度
    let g:indent_guides_guide_size=1
    " 快捷键 i 开/关缩进可视化
    :nmap <silent> <Leader>i <Plug>IndentGuidesToggle

""""书签
Bundle 'kshenoy/vim-signature'
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

""""tags自动生成
Bundle 'indexer.tar.gz'
Bundle 'DfrankUtil'
Bundle 'vimprj'
    "设置插件 indexer 调用 ctags 的参数
    " 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
    " 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
    let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q --exclude=cache --languages=php"
    "忽略错误
    let g:indexer_disableCtagsWarning=1

Bundle 'The-NERD-tree'
    " 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list"
    nmap <Leader>fl :NERDTreeToggle<CR>
    " 设置NERDTree子窗口宽度
    let NERDTreeWinSize=30
    " 设置NERDTree子窗口位置
    let NERDTreeWinPos="right"
    " 显示隐藏文件
    let NERDTreeShowHidden=1
    " NERDTree 子窗口中不显示冗余帮助信息
    let NERDTreeMinimalUI=1
    " 删除文件时自动删除文件对应 buffer
    let NERDTreeAutoDeleteBuffer=1"
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
	let NERDTreeShowBookmarks=1
    let NERDTreeShowFiles=1
	let NERDTreeIgnore=['\.$','\~$']
	let NERDTreeShowLineNumbers=1
	""let NERDTreeWinPos=0

""NERD出品的快速给代码加注释插件，选中，`ctrl+h`即可注释多种语言代码；
Bundle 'The-NERD-Commenter'

"" Html 插件
Bundle 'mattn/emmet-vim'

"" JavaScript语法高亮
Bundle 'pangloss/vim-javascript'

""" Jade模板语法高亮
"""Bundle 'digitaltoad/vim-jade'

"" Node.js代码提示
Bundle 'myhere/vim-nodejs-complete'

""相较于Command-T等查找文件的插件，ctrlp.vim最大的好处在于没有依赖，干净利落
Bundle 'ctrlp.vim'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|cache|log)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

""在输入()，""等需要配对的符号时，自动帮你补全剩余半个
Bundle 'AutoClose'

""用全新的方式在文档中高效的移动光标，革命性的突破
Bundle 'EasyMotion'

""让代码更加易于纵向排版，以=或,符号对齐
Bundle 'Tabular'

"""迄今位置最好的自动VIM自动补全插件
"""Bundle 'Valloric/YouCompleteMe'

""语法检查
Bundle 'Syntastic'
    let g:syntastic_error_symbol = '✗'
    let g:syntastic_warning_symbol = '⚠'

""内容查找
Bundle 'EasyGrep'
    "let g:EasyGrepMode = 2     " All:0, Open Buffers:1, TrackExt:2, 
    "let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1
    "let g:EasyGrepRecursive  = 1 " Recursive searching
    "let g:EasyGrepIgnoreCase = 1 " not ignorecase:0
    "let g:EasyGrepFilesToExclude = "*.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"

Bundle 'Tagbar'
    ""map <F8> :TagbarToggle<CR>
    " 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
    nnoremap <Leader>tl :TagbarToggle<CR> 
    " 设置 tagbar 子窗口的位置出现在主编辑区的左边 
    let tagbar_left=1 
    " 设置标签子窗口的宽度 
    let tagbar_width=30 
    "let g:tagbar_ctags_bin = 'ctags'
    " tagbar 子窗口中不显示冗余帮助信息 
    let g:tagbar_compact=1
    " 设置 ctags 对哪些代码元素生成标签
    let g:tagbar_type_cpp = {
        \ 'kinds' : [
            \ 'd:macros:1',
            \ 'g:enums',
            \ 't:typedefs:0:0',
            \ 'e:enumerators:0:0',
            \ 'n:namespaces',
            \ 'c:classes',
            \ 's:structs',
            \ 'u:unions',
            \ 'f:functions',
            \ 'm:members:0:0',
            \ 'v:global:0:0',
            \ 'x:external:0:0',
            \ 'l:local:0:0'
         \ ],
         \ 'sro'        : '::',
         \ 'kind2scope' : {
             \ 'g' : 'enum',
             \ 'n' : 'namespace',
             \ 'c' : 'class',
             \ 's' : 'struct',
             \ 'u' : 'union'
         \ },
         \ 'scope2kind' : {
             \ 'enum'      : 'g',
             \ 'namespace' : 'n',
             \ 'class'     : 'c',
             \ 'struct'    : 's',
             \ 'union'     : 'u'
         \ }
         \ }

Bundle 'evidens/vim-twig'

"模板补全"
""Bundle 'UltiSnips'

"buffer管理"
Bundle 'fholgado/minibufexpl.vim'
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <S-Tab> :bn<cr>
map <C-S-Tab> :bp<cr>

"放置在Bundle的设置后，防止意外BUG
filetype plugin indent on 
syntax enable
