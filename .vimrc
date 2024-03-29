set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

" Git inside
Plug 'tpope/vim-fugitive'

" With 'gc' command
Plug 'tpope/vim-commentary'

" File tree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'

" Syntastic check
Plug 'dense-analysis/ale'

" UI
Plug 'skywind3000/vim-quickui'

" Tag
Plug 'joereynolds/gtags-scope'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" Show a diff using Vim its sign column
Plug 'mhinz/vim-signify'

Plug 'octol/vim-cpp-enhanced-highlight'

" An efficient fuzzy finder 
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

call plug#end()

set tabstop=4
set softtabstop=4
set shiftwidth=2
set expandtab

set background=dark

let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme evening

set number
set autoindent
set smarttab
set smartindent
set ruler
set pastetoggle=<F3>    " paste without indent

set showcmd

"set autochdir

set noeb
set hlsearch
set incsearch
set cursorline
set backspace=indent,eol,start
hi String ctermfg=lightgray
set fdm=syntax
set foldlevel=2
set mouse=a
set scrolloff=6
" 设置光标在上次关闭的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Alt + number to switch between tables
" 'set macmeta' for macvim
noremap <ESC>1 :tabnext 1<CR>
noremap <ESC>2 :tabnext 2<CR>
noremap <ESC>3 :tabnext 3<CR>
noremap <ESC>4 :tabnext 4<CR>
noremap <ESC>5 :tabnext 5<CR>
noremap <ESC>6 :tabnext 6<CR>
noremap <ESC>7 :tabnext 7<CR>
noremap <ESC>8 :tabnext 8<CR>
noremap <ESC>9 :tabnext 9<CR>
noremap <ESC>0 :tablast<CR>
set ttimeout ttimeoutlen=100


" 自动补全配置
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif    "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

inoremap <leader><leader> <C-x><C-o>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"
let g:NERDChistmaxTree = 1
" let g:NERDTreeWinSize=30
let g:NERDTreeShowHidden = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-commentary start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <ESC>/ :Commentary<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-commentary end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cpp highlight start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cpp highlight end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

if exists('$TMUX')
  set term=screen-256color
endif

" cpp_highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

" Buffer key bind
noremap <C-l> :bn<CR>
noremap <C-h> :bp<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BufExplorer end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE (code syntastic check) start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_sign_error = '✗'
let g:ale_echo_msg_format = '[%linter%] %code: %%s [%severity%]'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:airline#extensions#ale#enabled = 1

" let g:ale_completion_delay = 500
" let g:ale_echo_delay = 20
" let g:ale_lint_delay = 500
" let g:ale_linters_explicit = 1
" let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
" let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
" let g:ale_c_cppcheck_options = ''
" let g:ale_cpp_cppcheck_options = ''
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gutentags start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=./.tags;,.tags
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" ctags parameters
let g:gutentags_ctags_extra_args = ['--fields=+niazSl']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 如果使用 universal ctags 需要增加下面一行，老的 Exuberant-ctags 不能加下一行
let s:ctags_version = system('ctags --version')[0:8]
if s:ctags_version == "Universal"
  let g:gutentags_ctags_extra_args += ['--extras=+q', '--output-format=e-ctags']
endif
let g:gutentags_ctags_exclude = ['build', 'bazel-cmodel', '*.git', '*.svg', 'dist',
      \ 'tmp', 'doc',
      \ '*.so', '*.zip', '*.pdf', '*.doc', '*.db']


" 禁用 gutentags 自动加载 gtags 数据库的行为
" let g:gutentags_auto_add_gtags_cscope = 1

" Change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
" Enable advanced commands: GutentagsToggleTrace, etc.
let g:gutentags_define_advanced_commands = 1
" Debug gutentags
let g:gutentags_trace = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gutentags end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leaderf config start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_ShortcutF = '<C-p>'
let g:Lf_ShortcutB = '<ESC>n'
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PopupPreviewPosition = 'bottom'
let g:Lf_WildIgnore = {
      \ 'dir': ['.git', '.svn', 'build', 'bazel-cmodel'],
      \ 'file': ['*.so', '~$*', '*.o'],
      \ }
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2" }
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_GtagsGutentags = 1
let g:Lf_CacheDirectory = expand('~/.cache')
let g:gutentags_cache_dir = expand(g:Lf_CacheDirectory.'/.LfCache/gtags')
let g:Lf_GtagsSkipUnreadable = 1

noremap <silent> <F12> <Plug>LeaderfGtagsDefinition
noremap <silent> <F11> <Plug>LeaderfGtagsReference
noremap <silent> <F10> <Plug>LeaderfGtagsGrep
noremap <silent> <F9> <Plug>LeaderfGtagsSymbol

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leaderf config end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickui config start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clear all the menus
call quickui#menu#reset()

" Install a 'File' menu
" call quickui#menu#install(section, items [, weight [, filetypes]])
call quickui#menu#install("&File", [
      \ [ "&New File\t(:tabn)", "tabnew" ],
      \ [ "--", "" ],
      \ [ "LeaderF &File\t(Ctrl+p)", "Leaderf file", "Open file with leaderf"],
      \ [ "LeaderF &Mru", "Leaderf mru --regexMode", "Open recently accessed files"],
      \ [ "LeaderF &Buffer\t(Alt+n)", "Leaderf buffer", "List current buffers"],
      \ [ "--", "" ],
      \ [ "Toggle File &Tree\t<F2>", "NERDTreeToggle", "Toggle nerd tree"],
      \ [ "--", "" ],
      \ [ "&Save && Close\t(:wq)", "wq" ],
      \ [ "&Close\t(:q)", "q" ],
      \ [ "E&xit\t(:qall)", "qa" ],
      \ ])
call quickui#menu#install("&Symbol", [
      \ [ "GscopeFind &Definition\t(<leader>cg)", "call feedkeys('\\cg')",
      \   "GNU Global search g under cursor"],
      \ [ "GscopeFind &Symbol\t(<leader>cs)", "call feedkeys('\\cs')",
      \   "Find symbol(reference) under cursor"],
      \ [ "GscopeFind &Called by\t(<leader>cd)", "call feedkeys('\\cd')",
      \   "Functions called by this function"],
      \ [ "GscopeFind C&alling\t(<leader>cc)", "call feedkeys('\\cc')",
      \   "Functions calling this function"],
      \ [ "GscopeFind &TextString\t(<leader>ct)", "call feedkeys('\\ct')",
      \   "Find text string under cursor"],
      \ [ "GscopeFind &Egreppattern\t(<leader>ce)", "call feedkeys('\\ce')",
      \   "Find egrep pattern under cursor"],
      \ ])
call quickui#menu#install("&Git", [
      \ [ "Git &Status\t(Fugitive)", "Git" ],
      \ [ "Git &Log\t(Fugitive)", "Git log" ],
      \ [ "Git &Branch\t(Fugitive)", "Git br -v" ],
      \ [ "Git Bla&me\t(Fugitive)", "Git blame" ],
      \ ])
call quickui#menu#install('&Tools', [
      \ [ "List &Buffer", "call quickui#tools#list_buffer('FileSwitch tabe')", ],
      \ [ "List &Function", "call quickui#tools#list_function()", ],
      \ [ "Display &Messages", "call quickui#tools#display_messages()", ],
      \ ])
" enable to display tips in the cmdline
let g:quickui_show_tip = 1

nnoremap <space><space> :call quickui#menu#open()<CR>

nnoremap <F4> :call quickui#tools#preview_tag('')<CR>
au FileType qf noremap <silent><buffer> p :call quickui#tools#preview_quickfix()<cr>

let g:opts = {'title': "Terminal"}
noremap <C-S-T> :call quickui#terminal#open('zsh', g:opts)<CR>

let g:quickui_color_scheme = 'solarized'
let g:quickui_preview_w = 100
let g:quickui_preview_h = 15

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickui config end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
