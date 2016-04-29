"To ignore plugin indent changes, instead use:
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

set nocompatible              " be iMproved, required
"set hidden
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

"Git Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'airblade/vim-gitgutter'
Plugin 'jreybert/vimagit'
Plugin 'jaxbot/github-issues.vim'

"Plugin 'vim-gitgutter'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/manny/.vim/bundle/YCM-Generator'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
" Python code indenting
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

"Autocompletion
Bundle 'Valloric/YouCompleteMe'

""#"Syntax checking and highlighting
""#Plugin 'scrooloose/syntastic'
""#Plugin 'nvie/vim-flake8'
""#
""#
"Super Search
Plugin 'ctrlpvim/ctrlp.vim'

"Super Tab
Plugin 'ervandew/supertab'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
""#Plugin 'junegunn/fzf.vim'
""#
""#"Powerline
""#"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
""#
""#"Color Schemes
""#Plugin 'jnurmine/Zenburn'
""#Plugin 'altercation/vim-colors-solarized'
""#
""#"Vim-root
""#Plugin 'parnmatt/vim-root'
""#
"Status Line
Bundle 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
""#
""#"UltiSnips
""#Plugin 'SirVer/ultisnips'
""#Plugin 'honza/vim-snippets'
""#
""#"Browsing
""#Plugin 'tpope/vim-vinegar'
""#
""#Plugin 'majutsushi/tagbar'
""#"Plugin 'xolox/vim-misc'
""#"Plugin 'xolox/vim-easytags'
""#" All of your Plugins must be added before the following line
""#Plugin 'jiangmiao/auto-pairs'
""#Plugin 'henrik/vim-indexed-search'
""#Plugin 'terryma/vim-multiple-cursors'
""#Plugin 'terryma/vim-expand-region'
""#"Plugin 'jeaye/color_coded'
""#Plugin 'stephpy/vim-yaml'
""#Plugin 'jlanzarotta/bufexplorer'
""#Plugin 'ekalinin/Dockerfile.vim'
""#Plugin 'sjl/gundo.vim'
""#Plugin 'tpope/vim-cucumber'
""#Plugin 'tpope/vim-endwise'
""#Plugin 'tpope/vim-eunuch'
""#Plugin 'tpope/vim-surround'
""#Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-sensible'
""#Plugin 'tpope/vim-repeat'
""#Plugin 'tpope/vim-unimpaired'
Plugin 'junegunn/vim-easy-align'
""#Plugin 'junegunn/vim-pseudocl'
""#Plugin 'junegunn/vim-oblique'
""#"Plugin 'vim-ctrlspace/vim-ctrlspace'
""#
""#Plugin 'wesQ3/vim-windowswap'
""#Plugin 'jmcantrell/vim-virtualenv'
""#Plugin 'chrisbra/csv.vim'
""#Plugin 'mkitt/tabline.vim'
""#
Plugin 'chrisbra/NrrwRgn'
""#"Plugin 'go2null/Mark--Karkat'
""#Plugin 'gcmt/taboo.vim'
""#Plugin 'rodjek/vim-puppet'
""#Plugin 'airblade/vim-rooter'
""#Plugin 'bronson/vim-visual-star-search'
""#Plugin 'michaeljsmith/vim-indent-object'
""#Plugin 'vim-scripts/tComment'
""#Plugin 'tomtom/quickfixsigns_vim'
""#"Plugin 'klen/python-mode'
""#Plugin 'justinmk/vim-gtfo'
""#Plugin 'justinmk/vim-dirvish'
""#Plugin 'justinmk/vim-sneak'
""#Plugin 'Yggdroot/hiPairs'
""#Plugin 'Yggdroot/indentLine'
""#Plugin 'MattesGroeger/vim-bookmarks'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on
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

"Write the old file out when switching between files.
set autowrite

"Display current cursor position in lower right corner.
"set ruler

"Want a different map leader than \
"set mapleader = ",";

"Ever notice a slight lag after typing the leader key + command? This lowers
"the timeout.
set timeoutlen=500

"Switch between buffers without saving
"set hidden


"Source .vimrc from current directory if available  and limit access
set exrc
set secure

" Highlight the 110 column with a number, prevent long lines
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

"Search both directories
let &path.="src/include,/usr/include/AL,/usr/include/"

"Vim Bookmarks
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1


""#"Vim fugitive bindings
""#nnoremap <leader>gs :Gstatus<CR>
""#nnoremap <leader>gc :Gcommit -v -q<CR>
""#nnoremap <leader>ga :Gcommit --amend<CR>
""#nnoremap <leader>gt :Gcommit -v -q %<CR>
""#nnoremap <leader>gd :Gdiff<CR>
""#nnoremap <leader>ge :Gedit<CR>
""#nnoremap <leader>gr :Gread<CR>
""#nnoremap <leader>gw :Gwrite<CR><CR>
""#nnoremap <leader>gl :silent! Glog<CR>
""#nnoremap <leader>gp :Ggrep<Space>
""#nnoremap <leader>gm :Gmove<Space>
""#nnoremap <leader>gb :Git branch<Space>
""#nnoremap <leader>go :Git checkout<Space>
""#nnoremap <leader>gps :Dispatch! git push<CR>
""#nnoremap <leader>gpl :Dispatch! git pull<CR>

" fugitive git bindings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push -u<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>
""#" same bindings for merging diffs as in normal mode
""#xnoremap dp :diffput<cr>
""#xnoremap do :diffget<cr>
""#"More
""#noremap <Leader>gb :Gblame<CR>
""#nnoremap <Leader>gL :exe ':!cd ' . expand('%:p:h') . '; git la'<CR>
""#nnoremap <Leader>gl :exe ':!cd ' . expand('%:p:h') . '; git las'<CR>
""#nnoremap <Leader>gh :Silent Glog<CR>
""#nnoremap <Leader>gH :Silent Glog<CR>:set nofoldenable<CR>
""#noremap <Leader>gp :Git push<CR>
""#nnoremap <Leader>g- :Silent Git stash<CR>:e<CR>
""#nnoremap <Leader>g+ :Silent Git stash pop<CR>:e<CR>
""#" Fugitive Mappings
""#nnoremap gsl :Glog<CR>
""#nnoremap gsC :Gcommit<CR>
""#nnoremap gscd :Gcd<Bar>pwd<CR>
""#nnoremap gsld :Glcd<Bar>pwd<CR>
""#
""#" Fugitive Commands
""#command! -bar -nargs=* Gpull execute 'Git pull' <q-args> 'origin' fugitive#head()
""#command! -bar -nargs=* Gpush execute 'Git push' <q-args> 'origin' fugitive#head()
""#command! -bar -nargs=* Gpurr execute 'Git pull --rebase' <q-args> 'origin' fugitive#head()
""#command! Gpnp silent Gpull | Gpush
""#command! Gprp silent Gpurr | Gpush
""#
""#command! -bar -nargs=+ -complete=customlist,functions#GitBugComplete Gbug Git bug <q-args>
""#command! -bar -nargs=+ -complete=customlist,functions#GitFeatureComplete Gfeature Git feature <q-args>
""#command! -bar -nargs=+ -complete=customlist,functions#GitRefactorComplete Grefactor Git refactor <q-args>
""#
""#" Fugitive Functions in autoload/functions.vim
""#function! s:GitShortRefNames(names, full_name) "{{{2
""#  if a:full_name
""#    let expr = 'v:val[11:]'
""#  else
""#    let expr = 'v:val[strridx(v:val, "/")+1:]'
""#  endif
""#  return map(a:names, expr)
""#endfunction
""#
""#function! s:GitExecInPath(cmd) "{{{2
""#  if exists('b:git_dir')
""#    let path = b:git_dir
""#  else
""#    let path = fugitive#extract_git_dir('.')
""#  endif
""#  let path = fnamemodify(path, ':h')
""#
""#  return system('cd ' . path . '; ' . a:cmd)
""#endfunction
""#
""#function! s:GitComplete(ArgLead, Cmdline, Cursor, ...) "{{{2
""#  let refs = 'refs/heads/'
""#  if a:0 == 1 && a:1 !=? 'branch'
""#    let refs = 'refs/' . a:1
""#    let full_name = 1
""#  elseif a:0 == 2 && a:1 ==? 'branch'
""#    let refs = refs . a:2
""#    let full_name = 0
""#  endif
""#
""#  let cmd = 'git for-each-ref --format="%(refname)" ' . refs
""#  if !empty(a:ArgLead)
""#    let cmd = cmd . ' | sed "s/.*\/\(.*\)/\1/" | grep ^' . a:ArgLead . ' 2>/dev/null'
""#  endif
""#  return s:GitShortRefNames(split(s:GitExecInPath(cmd)), full_name)
""#endfunction
""#
""#function! s:GitExtraComplete(ArgLead, CmdLine, Cursor, type) "{{{2
""#  if (empty(a:ArgLead) || a:ArgLead =~? '^f\%[inish]$') && a:CmdLine !~? 'finish\s*$'
""#    return ['finish']
""#  else
""#    return s:GitComplete(a:ArgLead, a:CmdLine, a:Cursor, 'branch', a:type)
""#  endif
""#endfunction
""#
"function! functions#GitBugComplete(ArgLead, CmdLine, Cursor) "{{{2
"  return s:GitExtraComplete(a:ArgLead, a:CmdLine, a:Cursor, 'bug')
"endfunction
"
"function! functions#GitFeatureComplete(ArgLead, CmdLine, Cursor) "{{{2
"  return s:GitExtraComplete(a:ArgLead, a:CmdLine, a:Cursor, 'feature')
"endfunction
"
"function! functions#GitRefactorComplete(ArgLead, CmdLine, Cursor) "{{{2
"  return s:GitExtraComplete(a:ArgLead, a:CmdLine, a:Cursor, 'refactor')
"endfunction




let g:magit_enabled=1

"Taboo- remember tab names
set sessionoptions+=tabpages,globals

" assuming you want to use snipmate snippet engine
"ActivateAddons vim-snippets Ultisnips

"AutoComplete
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]

"Easy Tags setup
"let g:easytags_cmd = '/usr/local/bin/ctags'
"let g:easytags_async = 1
"let g:easytags_syntax_keyword = 'always'
"let g:easytags_file = '~/.vim/tags'
"set tags=./tags;
"let g:easytags_dynamic_files = 1
"let g:easytags_by_filetype = 1
"let g:easytags_python_enabled = 1

"TagBar
nmap <F8> :TagbarToggle<CR>""Ultisnips

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"Set colors in vim
set t_Co=256

"Status Line theme
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

let g:airline_detect_paste=1
let g:airline_detect_spell=1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#hunks#enabled = 1
"let g:airline#extensions#ctrlp#color_template = 'insert' (default)
"let g:airline#extensions#ctrlp#color_template = 'normal'
"let g:airline#extensions#ctrlp#color_template = 'visual'
"let g:airline#extensions#ctrlp#color_template = 'replace'
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#wordcount#enabled = 1
"let g:airline#extensions#wordcount#filetypes = ...
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tmuxline#enabled = 0
"let airline#extensions#tmuxline#color_template = 'normal' (default)
"let airline#extensions#tmuxline#color_template = 'insert'
"let airline#extensions#tmuxline#color_template = 'visual'
"let airline#extensions#tmuxline#color_template = 'replace'
let g:airline#extensions#nrrwrgn#enabled = 1
let g:airline#extensions#windowswap#enabled = 1
let g:airline#extensions#windowswap#indicator_text = 'WS'

let g:airline#extensions#taboo#enabled = 1
let g:airline#extensions#ctrlspace#enabled = 1
let g:CtrlSpaceStatuslineFunction = "airline#extensions#ctrlspace#statusline()"
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

"Search settings
set hlsearch
set smartcase
set incsearch

"Supertab options
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

"Access system clipboard
set clipboard=unnamed

"set relative numbers
set relativenumber
set number

"split screens
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Color Schemes
if has('gui_running')
 set background=dark
 colorscheme solarized
"else
" colorscheme zenburn
endif

"call togglebg#map("<F5>")

" Auto Completion shortcut goto definition [space-g]
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" python code highlighting
let python_highlight_all=1

" Enable folding
let g:SimpylFold_docstring_preview=1

set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" PEP8 indetention for python files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set shiftround

" For full stack development
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Flag un-necessary white space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match ExtraWhitespace /\s\+$/

"UTF8
set encoding=utf-8

"Persistent Undo
"
"
"Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir
"
" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
   let myUndoDir = expand(vimDir . '/undodir')
   " Create dirs
   call system('mkdir ' . vimDir)
   call system('mkdir ' . myUndoDir)
   let &undodir = myUndoDir
   set undofile
endif


" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""#" Cern Root, python bindings for vim-root
""#:setfiletype python.root
""#:setf python.root
""#
""#:set filetype=python.root
""#:se ft=python.root

"Resolving performance problems
if version >= 702
      autocmd BufWinLeave * call clearmatches()
endif
