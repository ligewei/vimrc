" By Li Gewei

" 定义快捷键的前缀，即<Leader>
let mapleader=";"

set nocompatible
set shortmess=atI

set confirm
set history=1024
set nobackup
set noswapfile

set autoindent
set cindent
set smarttab
set smartindent

" 把tab扩展成空格
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set number
set ruler

set ignorecase
set hlsearch
set incsearch

" 高亮显示当前行/列
"set cursorline
"set cursorcolumn
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white


set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,big5

" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%Y/%m/%d\ -\ %H:%M\")}
set laststatus=2
set cmdheight=2

filetype plugin on
filetype indent on
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

set iskeyword+=_,$,@,%,#,-
set linespace=0
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=5
set scrolloff=3

inoremap <C-h> <left>
inoremap <C-l> <right>
inoremap <C-j> <down>
inoremap <C-k> <up>

inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap ' ''<left>
inoremap " ""<left>
imap <> <><left>

imap jj <esc>

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" vim-scripts repos
Bundle 'a.vim'
Bundle 'SuperTab'
Bundle 'taglist.vim'
Bundle 'EasyGrep'
Bundle 'ShowTrailingWhitespace'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'The-NERD-Commenter'
Bundle 'majutsushi/tagbar'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/DrawIt'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle "fatih/vim-go"
"color scheme
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
" support c++11/14 and stl highlight
Bundle 'octol/vim-cpp-enhanced-highlight'
" 相同缩进归类
Bundle 'nathanaelkane/vim-indent-guides'
" vim-airline 主题
Bundle 'vim-airline/vim-airline-themes'
filetype on

" Taglist
"let Tlist_Auto_Open = 1
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"let Tlist_Show_One_File = 1
"let Tlist_Exit_OnlyWindow = 1

set enc=utf-8
" vim-aireline
let g:airline_theme="luna"
" 这个是安装powerline字体后 必须设置此项
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
" 打开tabline功能,方便查看Buffer和切换，这个功能比i较不错
" 我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" 设置切换Buffer快捷键
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>


"powerline {
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
set encoding=utf8
"}

set background=dark
colorscheme desert
"colorscheme solarized
"colorscheme molokai

" vim-indent-guides 配置
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
" za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable


" tagbar 配置
let tagbar_left=1
" 设置显示／隐藏标签列表子窗口的快捷键，速记：(;ilt)identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR>
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+liaS --extra=+q --language-force=c++
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
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

" NERD Commenter
" <leader>cc，注释当前选中文本
" <leader>cu，取消选中文本块的注释

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" vim-multiple-cursors配置
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" EasyGrep 配置
let g:EasyGrepMode = 2          " All:0, Open Buffers:1, TrackExt:2, 
let g:EasyGrepCommand = 0       " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 0    " Recursive searching
let g:EasyGrepIgnoreCase = 1    " not ignorecase:0
let g:EasyGrepFilesToExclude = "*.bak, *~, cscope.*, *.a, *.o, *.pyc"

