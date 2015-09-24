set nocompatible
filetype off
let mapleader = ";"
let g:mapleader = ";"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-scripts/matchit.zip'
Plugin 'kshenoy/vim-signature'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'taxilian/a.vim'
Plugin 'fatih/vim-go'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dkasak/manpageview'
Plugin 'KNCheung/vim-winmanager'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'tacahiroy/ctrlp-funky'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'Townk/vim-autoclose'
" Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

" 'KNCheung/vim-winmanager'
let g:winManagerWindowLayout='NERDTree|Tagbar'
let g:winManagerWidth=30
let g:AutoOpenWinManager = 1
let g:NERDTree_title = "[NERDTree]"
function! NERDTree_Start()
    " exe 'q'
    exe 'NERDTree'
endfunction
function! NERDTree_IsValid()
    return 1
endfunction

" noremap <f5> :NERDTreeFind<cr>

let g:Tagbar_title = "[Tagbar]"
function! Tagbar_Start()
    " exe 'q'
    exe 'TagbarOpen'
endfunction
function! Tagbar_IsValid()
    return 1
endfunction
let g:tagbar_vertical = 30
" 'scrooloose/nerdcommenter'
" map <leader>cc :NERDComComment<CR>
" map <leader>cn :NERDComNestedComment<CR>
" map <leader>c  :NERDComToggleComment<CR>
" map <leader>cm :NERDComMinimalComment<CR>
" map <leader>ci :NERDComInvertComment<CR>
" map <leader>cs :NERDComSexyComment<CR>
" map <leader>cy :NERDComYankComment<CR>
" map <leader>c$ :NERDComEOLComment<CR>
" map <leader>cA :NERDComAppendComment<CR>
" map <leader>ca :NERDComAltDelim<CR>
" map <leader>cl :NERDComAlignedComment<CR>
" map <leader>cb :NERDComAlignedComment<CR>
" map <leader>cu :NERDComUncommentLine<CR>

" 'bling/vim-airline'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_section_warning=''
" let g:airline_left_sep = '▸'
" let g:airline_left_alt_sep = '>'
" let g:airline_right_sep = '<'
" let g:airline_right_alt_sep = '<'
" let g:airline_symbols.linenr = '|'
" let g:airline_symbols.branch = '='
" 是否打开tabline
" let g:airline#extensions#tabline#enabled = 1

" 'fatih/vim-go'
" go语言插件
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 0
let g:go_play_open_browser = 0

" " 'Shougo/neocomplete.vim'
" " 实时补全
" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1

" 'tacahiroy/ctrlp-funky'
" nnoremap <Leader>fu :CtrlPFunky<Cr>
" nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" let g:ctrlp_funky_syntax_highlight = 1
" let g:ctrlp_extensions = ['funky']

" 'terryma/vim-expand-region'
" 快速选中区块
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)

" 'terryma/vim-multiple-cursors'
" 多光标选中编辑
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" 'vim-scripts/matchit.zip'
" 'kshenoy/vim-signature'
" 显示marks - 方便自己进行标记和跳转
" m[a-zA-Z] add mark
" '[a-zA-Z] go to mark
" m<Space>  del all marks

" 'junegunn/vim-easy-align'
" 快速赋值语句对齐
vmap <Leader>a <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
if !exists('g:easy_align_delimiters')
  let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }

" 'scrooloose/nerdtree' conf
" 侧边栏树状文件结构
map <leader>n :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = [ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
let g:NERDTreeMapJumpNextSibling = 'N'
let g:NERDTreeMapJumpPrevSibling = 'M'

" 'jistr/vim-nerdtree-tabs' conf
" 增强侧边栏树状文件结构，多tab时普适
map <leader>ntt <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_synchronize_view = 0
let g:nerdtree_tabs_synchronize_focus = 0
let g:nerdtree_tabs_open_on_console_startup = 1

" 'ctrlpvim/ctrlp.vim'
" 快速查找文件
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_user_command = 'find %s \( -regex ".*\.\(hpp\|hxx\|h\|c\|cpp\|cxx\|cc\|go\|java\|py\|sh\|conf\|php\|proto\|md\)$" \) -type f'
" let g:ctrlp_user_command = 'find %s \( ! -regex ".*/\..*" \) -type f'
" let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" 'dyng/ctrlsf.vim'
" 模拟sublime查找关键词
nmap <leader>r <Plug>CtrlSFCwordPath<CR>
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_winsize = '30%'
let g:ctrlsf_auto_close = 1
let g:ctrlsf_confirm_save = 0
let g:ctrlsf_mapping = {
    \ "open"  : "<CR>",
    \ "openb" : "O",
    \ "tab"   : "t",
    \ "tabb"  : "T",
    \ "prevw" : "p",
    \ "quit"  : "q",
    \ "next"  : "<C-J>",
    \ "prev"  : "<C-K>",
    \ "pquit" : "q",
    \ }

" 'tomasr/molokai'
" 主题 molokai
" let g:molokai_original = 1

" 'altercation/vim-colors-solarized'
" 主题 solarized
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

" 'majutsushi/tagbar'
" 标签导航
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 0
let g:tagbar_width=30
autocmd BufReadPost *.py,*.cpp,*.c,*.h,*.cc,*.cxx,*.hpp,*.lua,*.go call tagbar#autoopen()
" go语言tagbar设置
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" " 'scrooloose/syntastic'
" " 多语言语法检查
" let g:syntastic_error_symbol='>>'
" let g:syntastic_warning_symbol='>'
" let g:syntastic_check_on_open=1
" let g:syntastic_check_on_wq=0
" let g:syntastic_enable_highlighting=1
" 
" " 最轻量
" " let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes
" 
" " 中等
" " error code: http://pep8.readthedocs.org/en/latest/intro.html#error-codes
" let g:syntastic_python_checkers=['pyflakes', 'pep8'] " 使用pyflakes,速度比pylint快
" let g:syntastic_python_pep8_args='--ignore=E501,E225,E124,E712'
" 
" " 重量级, 但是足够强大, 定制完成后相当个性化
" " pylint codes: http://pylint-messages.wikidot.com/all-codes
" " let g:syntastic_python_checkers=['pyflakes', 'pylint'] " 使用pyflakes,速度比pylint快
" " let g:syntastic_python_checkers=['pylint'] " 使用pyflakes,速度比pylint快
" " let g:syntastic_python_pylint_args='--disable=C0111,R0903,C0301'
" 
" let g:syntastic_javascript_checkers = ['jsl', 'jshint']
" let g:syntastic_html_checkers=['tidy', 'jshint']
" " 修改高亮的背景色, 适应主题
" highlight SyntasticErrorSign guifg=white guibg=black
" 
" " to see error location list
" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_loc_list_height = 5
" 
" function! ToggleErrors()
"     let old_last_winnr = winnr('$')
"     lclose
"     if old_last_winnr == winnr('$')
"         " Nothing was closed, open syntastic error location panel
"         Errors
"     endif
" endfunction
" nnoremap <Leader>s :call ToggleErrors()<cr>
" nnoremap <Leader>sn :lnext<cr>
" nnoremap <Leader>sp :lprevious<cr>

" " 'Valloric/YouCompleteMe' conf
" " ################### 自动补全 ###################
" let g:ycm_key_list_select_completion=['<c-n>']
" let g:ycm_key_list_previous_completion=['<c-p>']
" let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
" let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
" let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
" let g:ycm_collect_identifiers_from_comments_and_strings = 1 "注释和字符串中的文字也会被收入补全
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_seed_identifiers_with_syntax=1   "语言关键字补全
" let g:ycm_goto_buffer_command = 'horizontal-split'
" " nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" " 直接触发自动补全 insert模式下
" " let g:ycm_key_invoke_completion = '<C-Space>'
" " 黑名单,不启用
" let g:ycm_filetype_blacklist = {
"       \ 'tagbar' : 1,
"       \ 'gitcommit' : 1,
"       \}

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set autoread
" set shortmess=atI
set nobackup
set noswapfile

set wildignore=*.swp,*.bak,*.pyc,*.class,.svn,*.so,*.zip,*.tar.gz,*/tmp/*
set cursorline
set t_ti= t_te=

set mouse-=a
set selection=inclusive
set selectmode=mouse,key

" set title
set novisualbell
set noerrorbells
set t_vb=
set tm=500

set viminfo^=%
set magic

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ruler
set showcmd
set showmode
" set scrolloff=7

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction
" set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set statusline=[%n]\ %f%m%r%h\ \|\ pwd:\ %{CurDir()}\ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ 
set laststatus=2

set nu
set wrap
set showmatch
set matchtime=2

set hlsearch
set incsearch

set ignorecase
" set smartcase

set smartindent
set autoindent

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set shiftround

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
set termencoding=utf-8
set ffs=unix,dos,mac

autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。
set completeopt=longest,menu " 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set wildmenu
set wildignore=*.o,*~,*.pyc,*.class
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 关闭方向键, 强迫自己用 hjkl
" map <Left> <Nop>
" map <Right> <Nop>
" map <Up> <Nop>
" map <Down> <Nop>

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" F1 - F6 设置
" F1 废弃这个键,防止调出系统帮助
" F2 行号开关，用于鼠标复制代码用
" F3 显示可打印字符开关
" F4 换行开关
" F5 粘贴模式paste_mode开关,用于有格式的代码粘贴
" F6 语法开关，关闭语法可以加快大文件的展示
noremap <F1> <Esc>"
nnoremap <F2> :set number! number?<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set wrap! wrap?<CR>
set pastetoggle=<F5>            "    when in insert mode, press <F5> to go to
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
" disbale paste mode when leaving insert mode
au InsertLeave * set nopaste
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Go to home and end using capitalized directions
" 光标移动到行首、行尾
noremap H ^
noremap L $

" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" nnoremap / /\v
" vnoremap / /\v
" Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" switch # *
" vnnoremap # *
" vnnoremap * #

" for # indent, python文件中输入新行时#号注释不切回行首
autocmd BufNewFile,BufRead *.py inoremap # X<c-h>#

" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
" autocmd FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd BufRead,BufNew *.md,*.mkd,*.markdown  set filetype=markdown.mkd

" 保存python文件时删除多余空格
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" 定义函数AutoSetFileHead，自动插入文件头
autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    "如果文件类型为python
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc

" set some keyword to highlight
if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
  endif
endif

set tags+=./.tags;$HOME

" " 设置标记一列的背景颜色和数字一行颜色一致
" hi! link SignColumn   LineNr
" hi! link ShowMarksHLl DiffAdd
" hi! link ShowMarksHLu DiffChange
" 
" " for error highlight，防止错误整行标红导致看不清
" highlight clear SpellBad
" highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
" highlight clear SpellCap
" highlight SpellCap term=underline cterm=underline
" highlight clear SpellRare
" highlight SpellRare term=underline cterm=underline
" highlight clear SpellLocal
" highlight SpellLocal term=underline cterm=underline

" vnoremap <silent> ge "gy:vimgrep /<C-R>g/ % \|copen<cr>
" nnoremap ge :vimgrep // % \|copen<left><left><left><left><left><left><left><left><left><left>

set background=dark
" let g:rehash256=1
set t_Co=256
" colorscheme solarized
" colorscheme desert
colorscheme molokai
" colorscheme Tomorrow-Night-Bright
syntax on
