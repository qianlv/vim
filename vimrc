set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle "tpope/vim-pathogen"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/syntastic"
Bundle "uarun/vim-protobuf"
Bundle "plasticboy/vim-markdown"
Bundle "godlygeek/tabular"
Bundle "greyblake/vim-preview"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "bling/vim-airline"
Bundle "altercation/vim-colors-solarized"
Bundle "kien/ctrlp.vim"
Bundle "CodeFalling/fcitx-vim-osx"
Bundle "tpope/vim-surround"
Bundle "basepi/vim-conque"
Bundle "majutsushi/tagbar"
Bundle 'valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'mbbill/undotree'
Bundle 'matze/vim-move'

Bundle "c.vim"
Bundle "grep.vim"
Bundle "vcscommand.vim"

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

""""""""""""""""""""""""""""""
" Pathogen
""""""""""""""""""""""""""""""
"runtime bundle/vim-pathogen/autoload/pathogen.vim
"call pathogen#infect()
"Helptags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Get out of VI's compatible mode..
set nocompatible

" Sets how many lines of history VIM has to remember
set history=700

"Enable filetype plugin
filetype plugin on
filetype indent on


" switch syntax highlighting on
syntax on
syntax enable

" let g:solarized_termcolors=256

set background=dark

" set color
set t_Co=256  

"set color themes
"colorscheme solarized
colorscheme desert

" Set to auto read when a file is changed from the outside
" set autoread

" save when changing buffer
set autowrite

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface & Display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set scroll offset
set scrolloff=5

" Turn on wild menu
set wildmenu
set wildmode=longest:full

" Show the line and column number of the cursor position, separated by a comma
set ruler

" change buffer without saving
set hid

" set backspace
set backspace=indent,eol,start

" Ignore case in search patterns.
set ignorecase
set smartcase

" When there is a previous search pattern, highlight all its matches.
set hlsearch

" While typing a search command, show where the pattern, as it was typed so far, matches.
set incsearch

" Set magic on, for regular expressions
set magic

" When a bracket is inserted, briefly jump to the matching one
set showmatch
set matchtime=2

" no sound on errors
set noerrorbells
set novisualbell

" The value of this option influences when the last window will have a status line
set laststatus=2    " always show the statue line

" line number
set number

" 高亮显示匹配的尖括号
set mps+=<:>

" 按esc自动去除高亮
nnoremap <esc> :nohl<cr>

""""""""""""""""""""""""""""""
" Indent
""""""""""""""""""""""""""""""
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab   "Use the appropriate number of spaces to insert a <Tab>.
set smarttab    "set smarttab, at the start of line use shiftwide and others tabstop

" Auto indent
set autoindent

" C-style indeting
"set cindent

" Smart indent
set smartindent

" show a visual line under the cursor's current line 
" set cursorline

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey
let g:indent_guides_guide_size = 1 


""""""""""""""""""""""""""""""
" Encoding
""""""""""""""""""""""""""""""
scriptencoding=utf-8 " :w ++enc=utf-8 to solve conversion error
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp936,latin1
set termencoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map shortcut
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cpp->h or h->cpp
nmap <F8> :A<CR>

nmap <SPACE> /

"nmap <right> <esc><c-w>l
"nmap <left> <esc><c-w>h
"nmap <up> <esc><c-w>k
"nmap <down> <esc><c-w>j

cmap svn SVN
cmap w!! w !sudo tee %
cmap w8 w ++enc=utf-8
" 0 -> 1 -> 2 -> 3
nmap rn <esc>yiwjP<C-a>
" external command's results displays in new windows
" cmap nx! new | 0read 

" for tabular 
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a,, :Tabularize /,\zs<CR>
vmap <Leader>a,, :Tabularize /,\zs<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>


""""""""""""""""""""""""""""""
" undotree
""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'

""""""""""""""""""""""""""""""
" undotree
""""""""""""""""""""""""""""""
nnoremap <Leader>u :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

""""""""""""""""""""""""""""""
" YouCompleteMe
""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags，这个没有也没关系，只要.ycm_extra_conf.py文件中指定了正确的标准库路径
" set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
" set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全           
let g:ycm_seed_identifiers_with_syntax=1
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
" let g:ycm_key_invoke_completion = "<c->"
" 设置转到定义处的快捷键为，这个功能非常赞
" 声明
" nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" 定义
" nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" 前面两者结合
" nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap<C-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"""""""""""""""""""""""""""
" Snippets
"""""""""""""""""""""""""""
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""""""""""
" Tagbar
""""""""""""""""""""""""""""""
nmap <leader>t :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AutoCmd
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    "auto read vimrc when it refreshed
    autocmd! bufwritepost .vimrc source ~/.vimrc

    "自动回到上次打开的位置
    autocmd! BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

    "源文件打开之后的处理，主要是自动搜索cscope和tags数据文件
    "autocmd! BufReadPost *.{cc,cpp,h} call FuncBufReadPost()
    autocmd! VimEnter *.{cc,cpp,h} call FuncBufReadPost()

endif " has(autocmd)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" Vim Grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn'
let Grep_Cygwin_Find = 1

""""""""""""""""""""""""""""""
" CScorpe
""""""""""""""""""""""""""""""
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :scs find f <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>i :scs find i <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

vmap <C-c> "ay
nmap <C-c> "ayy
vmap <C-y> "Ay
nmap <C-y> "Ayy

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"


""""""""""""""""""""""""""""""
" vim-airline
""""""""""""""""""""""""""""""
" set status line
set laststatus=2
" enable powerline-fonts
"let g:airline_powerline_fonts = 1
" enable tabline
" let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
"set theme

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=7
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_aggregate_errors = 1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
" 打开语法检查
nnoremap <C-w>e :SyntasticCheck<CR> :SyntasticToggleMode<CR>
nmap <C-w>pl SyntasticCheck <pylint>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LaTeX math
" let g:vim_markdown_math=1
" Highlight YAML frontmatter as used by Jekyll:
let g:vim_markdown_frontmatter=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change the default mapping and the default command to invoke CtrlP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" Exclude files and directories using Vim's `wildignore` and CtrlP's own `g:ctrlp_custom_ignore`:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" c-support, c-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:C_CFlags = '-std=c++11 -Wall -g -O0 -c'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Conque Shell
" open a bash shell
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>bs :ConqueTermSplit bash<CR><ESC>:resize 7<CR><ESC>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" my functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=1 SVN call FunSVN(<f-args>)
function! FunSVN(op)
    if a:op == 'diff'
        execute 'VCSDiff'
    elseif a:op == 'log'
        execute 'VCSLog'
    elseif a:op == 'blame'
        execute 'VCSBlame'
    elseif a:op == 'revert'
        execute 'VCSRevert'
    elseif a:op == 'st'
        execute 'VCSStatus'
    elseif a:op == 'up'
        execute 'VCSUpdate'
    elseif a:op == 'lock'
        execute 'VCSLock'
    else
        echo "what do you mean ? " . a:op
    endif
endfunction

command! CsAdd call FuncCsAdd()
function! FuncCsAdd()

    let l:path = expand("%:p:h")
    let l:cnt = 0

    while 1
        if l:cnt >= 10
            "echo "Reach max directory search level"
            break
        endif

        if filereadable(l:path . "/.home_guard")
            "echo "Reach home directory without cscope.out found"
            break
        endif

        let l:cscope_out = l:path . "/cscope.out"
        if filereadable(l:cscope_out)
            "echo "find cscope.out: " . l:cscope_out
            :execute "cs add " . l:cscope_out
            break
        endif

        let l:path = l:path . "/.."
        let l:cnt = l:cnt + 1

        " echo "path: ".l:path
        " echo "cnt: ".l:cnt
    endwhile

endfunction

command! SetTags call FuncTags()
function! FuncTags()

    let l:path = expand("%:p:h")
    let l:cnt = 0

    while 1
        if l:cnt >= 10
            echo "Reach max directory search level"
            break
        endif

        if filereadable(l:path . "/.home_guard")
            echo "Reach home directory without tags found"
            break
        endif

        let l:tags_file = l:path . "/tags"
        if filereadable(l:tags_file)
            "echo "Found tags: " . l:tags_file
            :execute "set tags=" . l:tags_file
            break
        endif

        let l:path = l:path . "/.."
        let l:cnt = l:cnt + 1

        " echo "path: ".l:path
        " echo "cnt: ".l:cnt
    endwhile
endfunction

function! FuncBufReadPost()
    call FuncCsAdd()
    call FuncTags()
endfunction
