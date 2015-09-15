""""""""""""""""""""""""""""""
" Pathogen
""""""""""""""""""""""""""""""
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
Helptags

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
" set color themes
" colorscheme desert
syntax enable
set background=light
colorscheme solarized


" enable all Python syntax highlighting features
" let python_highlight_all = 1

" Set to auto read when a file is changed from the outside
"set autoread

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
set cursorline

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

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"

""""""""""""""""""""""""""""""
" Tlist
""""""""""""""""""""""""""""""
"let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1


""""""""""""""""""""""""""""""
" vim-airline
""""""""""""""""""""""""""""""
" set color
set t_Co=256  
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
" set theme
let g:airline_theme='wombat'


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
