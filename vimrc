"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer zhaoguangyu <zhaoguangyu@126.com>
" Version 1.0
" Last Change 27/11/09 13:40:00
"
" 我的vimrc，搞了一个下午，终于搞好了，拿出来晒晒，大侠们砖下留情啊^_^
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件详细说明和配置参考 vim_scripts.txt
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ChangeLog:
" 
"=========================================================================================================
" 2011年 05月 07日 星期六 14:39:20 CST
"---------------------------------------------------------------------------------------------------------
" 添加几个常用插件
" 1. taglist                    Source code browser
"   :Tlist
"
" 2. NERD_tree                  A tree explorer plugin for navigating the filesystem
"   :NERDTree
"
" 3. cvim                       Write and run programs. Insert statements, idioms, comments etc
"   http://lug.fh-swf.de/vim/vim-c/c-hotkeys.pdf 
"
" 4. nerdcommenter              A plugin that allows for easy commenting of code for many filetypes
"   [count]<leader>cc       |NERDComComment|        Comment out the current line or text selected in visual mode. 
"   [count]<leader>cn       |NERDComNestedComment|  Same as <leader>cc but forces nesting. 
"   [count]<leader>c<space> |NERDComToggleComment|  Toggles the comment state of the selected line(s).
"                                                   If the topmost selected line is commented,
"                                                   all selected lines are uncommented and vice versa. 
"   [count]<leader>cm       |NERDComMinimalComment| Comments the given lines using only one set of multipart delimiters. 
"   [count]<leader>ci       |NERDComInvertComment|  Toggles the comment state of the selected line(s) individually. 
"   [count]<leader>cs       |NERDComSexyComment|    Comments out the selected lines ``sexily'' 
"   [count]<leader>cy       |NERDComYankComment|    Same as <leader>cc except that the commented line(s) are yanked first. 
"   <leader>c$              |NERDComEOLComment|     Comments the current line from the cursor to the end of line. 
"   <leader>cA              |NERDComAppendComment|  Adds comment delimiters to the end of line and goes into insert mode between them. 
"                           |NERDComInsertComment|  Adds comment delimiters at the current cursor position and inserts between.
"                                                   Disabled by default. 
"   <leader>ca              |NERDComAltDelim|       Switches to the alternative set of delimiters. 
"   [count]<leader>cl
"   [count]<leader>cb       |NERDComAlignedComment| Same as |NERDComComment| except that the delimiters are aligned down the left side
"                                                   (<leader>cl) or both sides (<leader>cb). 
"   [count]<leader>cu       |NERDComUncommentLine|  Uncomments the selected line(s). 
"
" 5. OmniCppComplete            C/C++ omni-completion with ctags database 
"   :help omnicppcomplete and please read the installation paragraph. 
"
" 6. vcscommand                 CVS/SVN/SVK/git/hg/bzr integration plugin
"
" 7. a.vim                      Alternate Files quickly (.c --> .h etc)
"   :A              switches to the header file corresponding to the current file being edited (or vise versa) 
"   :AS             splits and switches 
"   :AV             vertical splits and switches 
"   :AT             new tab and switches 
"   :AN             cycles through matches 
"   :IH             switches to file under cursor 
"   :IHS            splits and switches 
"   :IHV            vertical splits and switches 
"   :IHT            new tab and switches 
"   :IHN            cycles through matches 
"   <Leader>ih      switches to file under cursor 
"   <Leader>is      switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp) 
"   <Leader>ihn     cycles through matches 
"
" 8. grep.vim                   Grep search tools integration with Vim
"   :Grep          - Search for the specified pattern in the specified files 
"   :GrepAdd       - Same as ":Grep" but adds the results to the current results 
"   :Rgrep         - Run recursive grep 
"   :RgrepAdd      - Same as ":Rgrep" but adds the results to the current results 
"   :GrepBuffer    - Search for a pattern on all open buffers 
"   :GrepBufferAdd - Same as ":GrepBuffer" but adds the results to the current results 
"   :Bgrep         - Same as :GrepBuffer 
"   :BgrepAdd      - Same as :GrepBufferAdd 
"   :GrepArgs      - Search for a pattern on all the Vim argument filenames (:args) 
"   :GrepArgsAdd   - Same as ":GrepArgs" but adds the results to the current results 
"   :Fgrep         - Run fgrep 
"   :FgrepAdd      - Same as ":Fgrep" but adds the results to the current results 
"   :Rfgrep        - Run recursive fgrep 
"   :RfgrepAdd     - Same as ":Rfgrep" but adds the results to the current results 
"   :Egrep         - Run egrep 
"   :EgrepAdd      - Same as ":Egrep" but adds the results to the current results 
"   :Regrep        - Run recursive egrep 
"   :RegrepAdd     - Same as ":Regrep" but adds the results to the current results 
"   :Agrep         - Run agrep 
"   :AgrepAdd      - Same as ":Agrep" but adds the results to the current results 
"   :Ragrep        - Run recursive agrep 
"   :RagrepAdd     - Same as ":Ragrep" but adds the results to the current results 
"=========================================================================================================
" 2011年 05月 07日 星期六 14:39:20 CST
"---------------------------------------------------------------------------------------------------------
" 参考另一个号称“屎上最强大vimrc”的文件重新排版了一下，添加了几个set
" 参考: http://amix.dk/vim/vimrc.html
"=========================================================================================================


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

colorscheme desert

" switch syntax highlighting on
syntax on

" Set to auto read when a file is changed from the outside
"set autoread

" save when changing buffer
set autowriteall

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
" Pathogen
""""""""""""""""""""""""""""""
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
Helptags
""""""""""""""""""""""""""""""
" flake8 
""""""""""""""""""""""""""""""
"A tip might be to run the Flake8 check 
"every time you write a Python file, to enable this.
"autocmd FileType python map <buffer> <F3> :call Flake8()<CR>
autocmd BufWritePost *.py call Flake8()
" fix windows location
let g:flake8_quickfix_location="topleft"

" the height of quick fix window
" let g:flake8_quickfix_height=7

" show marks in the file 
"let g:flake8_show_in_file=0  " don't show (default)
let g:flake8_show_in_file=1  " show

"Some other options can use ~/.config/flake8 to config
"for example: show-source and so on.
"You can look up other options through 'flake8 -h'


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
