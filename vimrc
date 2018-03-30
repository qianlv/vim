set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-pathogen'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'w0rp/ale'
Plugin 'uarun/vim-protobuf'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'CodeFalling/fcitx-vim-osx'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mbbill/undotree'
Plugin 'matze/vim-move'
Plugin 'kshenoy/vim-signature'
Plugin 'flazz/vim-colorschemes'
" Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'
Plugin 'jvirtanen/vim-octave'
Plugin 'terryma/vim-expand-region'
Plugin 'jez/vim-better-sml'
Plugin 'Yggdroot/indentLine'
Plugin 'zonyitoo/typhoon-blade.vim'
" Plugin 'derekwyatt/vim-scala'
" Plugin 'wlangstroth/vim-racket'
" Plugin 'MicahElliott/vrod'
Plugin 'fatih/vim-go'

Plugin 'c.vim'
Plugin 'grep.vim'
" Plugin 'vcscommand.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Get out of VI's compatible mode..
set nocompatible

" Sets how many lines of history VIM has to remember
set history=1000

"Enable filetype plugin
filetype plugin on
filetype indent on

" switch syntax highlighting on
syntax on
syntax enable

" set color
set t_Co=256  
" set background=dark

"set color themes
" colorscheme solarized
colorscheme desert
" colorscheme github
" colorscheme onedark
" colorscheme kolor

" Set to auto read when a file is changed from the outside
set autoread

" save when changing buffer
set autowrite

" forbiden mouse
set mouse=

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
set mps+={:}
set mps+=$:$

" 按esc自动去除高亮
nnoremap <esc> :nohl<cr>

" <leader> 键映射修改
let mapleader=";"

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
map <C-H> gT
map <C-L> gt

cmap svn SVN
cmap w!! w !sudo tee %
cmap w8 w ++enc=utf-8
" 0 -> 1 -> 2 -> 3
" nmap <leade>rn <esc>yiwjP<C-a>

" 开启或关闭 paste 模式
"nmap <leader>p :setlocal paste! paste?<cr>
set pastetoggle=<Leader>ps

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
" nerdcommenter
""""""""""""""""""""""""""""""
" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1

""""""""""""""""""""""""""""""
" undotree
""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'

nnoremap <Leader>u :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

""""""""""""""""""""""""""""""
" IndentLine
""""""""""""""""""""""""""""""
let g:indentLine_char = "┆"
let g:indentLine_enabled = 1
let g:autopep8_disable_show_diff=1

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
" set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=1
" 语法关键字补全           
let g:ycm_seed_identifiers_with_syntax=1
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = "<c-b>"
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
" python version 
let g:ycm_python_binary_path = '/usr/bin/python'
" let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}
" for eclimd
let g:EclimCompletionMethod = 'omnifunc'

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
    autocmd! bufwritepost ~/.vimrc source ~/.vimrc

    "自动回到上次打开的位置
    autocmd! BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

    "源文件打开之后的处理，主要是自动搜索cscope和tags数据文件
    "autocmd! BufReadPost *.{cc,cpp,h} call FuncBufReadPost()
    autocmd! VimEnter *.{cc,cpp,h} call FuncBufReadPost()

    au BufReadPost *.rkt,*.rktl set filetype=racket

endif " has(autocmd)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" Vim Grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn'
let Grep_Cygwin_Find = 1
nnoremap gr :Grep -I <cword> *<CR>
nnoremap grr :Rgrep -I <cword> *<CR><CR>

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
nmap <leader>n :NERDTree<cr>


""""""""""""""""""""""""""""""
" vim-airline
""""""""""""""""""""""""""""""
" set status line
set laststatus=2
" enable powerline-fonts
let g:airline_powerline_fonts = 1
" enable tabline
" let g:airline#extensions#tabline#enabled = 1
" set tabline separator
let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#right_sep = '<'
" set airline separator
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'

" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
" enable/disable syntastic integration 
let g:airline#extensions#syntastic#enabled = 1
"set theme
"let g:airline_theme='tomorrow'
let g:airline_theme='kolor'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ale_linters = {'Python': ['flake8']}
" 保持侧边栏可见
let g:ale_sign_column_always = 1
" let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_python_flake8_options = '--ignore=E501'

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
let g:C_Libs = '-lpthread'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jedi-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Octave-vim syntax 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup filetypedetect 
    au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
augroup END 
autocmd FileType octave setlocal keywordprg=info\ octave\ --vi-keys\ --index-search

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-scala
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.sc set filetype=scala

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" markdown-preview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>md <Plug>MarkdownPreview        " for normal mode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for go
nnoremap <leader>gi :GoImports<cr>

" for python mode
" You can't have two completions plugins working at the same time
" YouCompleteMe and python mode
let g:pymode_rope_completion = 0
let g:pymode_options_colorcolumn = 0
let g:pymode_lint_cwindow = 0
let g:pymode_lint_on_write = 0


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

" 标签页只显示文件名
set tabline=%!MyTabLine()

function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T' 

    " the label is made by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor

  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'

  " right-align the label to close the current tab page
  if tabpagenr('$') > 1 
    let s .= '%=%#TabLine#%999Xclose'
  endif

  return s
endfunction

function! MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let label =  bufname(buflist[winnr - 1]) 
  return fnamemodify(label, ":t") 
endfunction
augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end
