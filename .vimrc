" ~/.vimrc
"----------------------------------------------
call plug#begin()

" EDITOR
"----------------------------------------------
"Plug 'arzg/vim-colors-xcode'                        "theme
Plug 'nickaroot/vim-xcode-dark-theme'               "vim-xcode theme
Plug 'Shougo/neocomplcache'                         "depenency for Shougo/neosnippet
"Plug 'godlygeek/tabular'                           "tab beautifier
Plug 'scrooloose/nerdtree'                          "sidebar
"Plug 'Xuyuanp/nerdtree-git-plugin'                 "git changes badges on sidebar
Plug 'ryanoasis/vim-devicons'                       "file icon on sidebar
Plug 'bling/vim-airline'                            "status bar
Plug 'christoomey/vim-tmux-navigator'               "vim-tmux extention
Plug 'ctrlpvim/ctrlp.vim'                           "Ctrl+P
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   "file search
Plug 'junegunn/fzf.vim'
Plug 'plasticboy/vim-markdown'                                      "markdown syntax highlighting
Plug 'junegunn/vim-emoji'                           "emoji icon


" SNIPPETS
"----------------------------------------------
Plug 'Shougo/neosnippet'                            "snippet support
Plug 'Shougo/neosnippet-snippets'                   "default snippets for many languages

" INTELLISENSE
"----------------------------------------------
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }	"golang stuffs
Plug 'neoclide/coc.nvim', {'branch': 'release'}     "conquer of completion, automaatic intellisence

call plug#end()

colorscheme xcode_dark                               "xcode theme

let mapleader = ' '                                 "shortcut prefix
nmap <leader>d :NERDTreeToggle<cr>                  "sidebar toggle


" Plugin: scrooloose/nerdtree
"----------------------------------------------
nnoremap <leader>d :NERDTreeToggle<cr>
nnoremap <F2> :NERDTreeToggle<cr>

" Files to ignore
let NERDTreeIgnore = [
    \ '\~$',
    \ '\.pyc$',
    \ '^\.DS_Store$',
    \ '^node_modules$',
    \ '^.ropeproject$',
    \ '^__pycache__$',
    \ '.cache'
\]

" Close vim if NERDTree is the only opened window.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files by default.
let NERDTreeShowHidden = 1

" Allow NERDTree to change session root.
let g:NERDTreeChDirMode = 2

" PLUGIN: christoomey/vim-tmux-navigator
"----------------------------------------------
" tmux will send xterm-style keys when its xterm-keys option is on.
if &term =~ '^screen'
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Tmux Vim integration
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1

" move between splits with ctrl+h,j,k,l
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

" PLUGIN: ctrlpvim/ctrlp.vim
" Note: no much in this configuration. But vim-go depend on this to run GoDecls(Dir).
let g:ctrlp_map = ''

" PLUGIN: plasticboy/vim-markdown
" disable folding
let g:vim_markdown_folding_disabled = 1

" auto shrink the TOC, so that it won't take up 50% of the screen
let g:vim_markdown_toc_autofit = 1

" GENERAL SETTING
"----------------------------------------------
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set clipboard=unnamedplus
set colorcolumn=81                " highlight the 80th column as an indicator
set completeopt-=preview          " remove the horrendous preview window
set cursorline                    " highlight the current line for the cursor
set encoding=utf-8
set expandtab                     " expands tabs to spaces
set list                          " show trailing whitespace
set listchars=tab:\|\ ,trail:▫
set nospell                       " disable spelling
set noswapfile                    " disable swapfile usage
set nowrap
set noerrorbells                  " no bells!
set novisualbell                  " no bells!
set number                        " show number ruler
set ruler
set formatoptions=tcqronj         " set vims text formatting options
set softtabstop=4
set tabstop=4
set title                         " let vim set the terminal title
set updatetime=500                " redraw the status bar often

" enable mouse if possible
if has('mouse')
    set mouse=a
endif

" allow vim to set a custom font or color for a word
syntax enable

" autosave buffers before leaving them
autocmd BufLeave * silent! :wa

" remove trailing white spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" center the screen quickly
nnoremap <space> zz

" Searching
"----------------------------------------------
set incsearch                     " move to match as you type the search query
set hlsearch                      " disable search result highlighting

" clear search highlights
map <leader>c :nohlsearch<cr>

" these mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Navigation
"----------------------------------------------
" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" move between buffers with Shift + arrow key...
nnoremap <S-Left> :bprevious<cr>
nnoremap <S-Right> :bnext<cr>

" ... but skip the quickfix when navigating
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

" fix some common typos
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Splits
"----------------------------------------------
" create horizontal splits below the current window
set splitbelow
set splitright

" creating splits
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

" closing splits
nnoremap <leader>q :close<cr>

" PLUGIN: bling/vim-airline
"----------------------------------------------
" show status bar by default.
set laststatus=1

" enable top tabline.
let g:airline#extensions#tabline#enabled = 0

" disable showing tabs in the tabline. This will ensure that the buffers are
" what is shown in the tabline at all times.
let g:airline#extensions#tabline#show_tabs = 1

" Enable powerline fonts.
let g:airline_powerline_fonts = 0

" Explicitly define some symbols that did not work well for me in Linux.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.maxlinenr = ''


"----------------------------------------------
" Golang Stuffs
"----------------------------------------------
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" mappings
au FileType go nmap <F8> :GoMetaLinter<cr>
au FileType go nmap <F9> :GoCoverageToggle -short<cr>
au FileType go nmap <F10> :GoTest -short<cr>
au FileType go nmap <F12> <Plug>(go-def)
au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
au FileType go nmap <leader>gt :GoDeclsDir<cr>
au FileType go nmap <leader>gc <Plug>(go-coverage-toggle)
au FileType go nmap <leader>gd <Plug>(go-def)
au FileType go nmap <leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <leader>gdh <Plug>(go-def-split)
au FileType go nmap <leader>gD <Plug>(go-doc)
au FileType go nmap <leader>gDv <Plug>(go-doc-vertical)" Language: Golang

"let g:go_bin_path = '~/lab/go/bin'

" run goimports when running gofmt
let g:go_fmt_command = "goimports"

" set neosnippet as snippet engine
let g:go_snippet_engine = "neosnippet"

" GoDef
"let g:go_def_mode = 'gopls'
"let g:go_info_mode = 'gopls'

" GoInfo
autocmd FileType go nmap <Leader>d <Plug>(go-info)

" enable syntax highlighting per default
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1

" show the progress when running :GoCoverage
let g:go_echo_command_info = 1

" show type information
let g:go_auto_type_info = 1

" jighlight variable uses
let g:go_auto_sameids = 1

" fix for location list when vim-go is used together with Syntastic
let g:go_list_type = "quickfix"

" add the failing test name to the output of :GoTest
let g:go_test_show_name = 1

let g:go_gocode_propose_source=1

" gometalinter configuration
let g:go_metalinter_command = ""
let g:go_metalinter_deadline = "5s"
let g:go_metalinter_enabled = [
    \ 'deadcode',
    \ 'gas',
    \ 'goconst',
    \ 'gocyclo',
    \ 'golint',
    \ 'gosimple',
    \ 'ineffassign',
    \ 'vet',
    \ 'vetshadow'
\]

" set whether the JSON tags should be snakecase or camelcase.
let g:go_addtags_transform = "snakecase"

"----------------------------------------------
" JSON
"----------------------------------------------
au FileType json set expandtab
au FileType json set shiftwidth=2
au FileType json set softtabstop=2
au FileType json set tabstop=2

"----------------------------------------------
" Make
"----------------------------------------------
au FileType make set noexpandtab
au FileType make set shiftwidth=2
au FileType make set softtabstop=2
au FileType make set tabstop=2

"----------------------------------------------
" Markdown
"----------------------------------------------
au FileType markdown setlocal spell
au FileType markdown set expandtab
au FileType markdown set shiftwidth=4
au FileType markdown set softtabstop=4
au FileType markdown set tabstop=4
au FileType markdown set syntax=markdown

"----------------------------------------------
" Protobuf
"----------------------------------------------
au FileType proto set expandtab
au FileType proto set shiftwidth=2
au FileType proto set softtabstop=2
au FileType proto set tabstop=2

"----------------------------------------------
" Python
"----------------------------------------------
au FileType python set expandtab
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set tabstop=4

"----------------------------------------------
" Ruby
"----------------------------------------------
au FileType ruby set expandtab
au FileType ruby set shiftwidth=2
au FileType ruby set softtabstop=2
au FileType ruby set tabstop=2

"----------------------------------------------
" SQL
"----------------------------------------------
au FileType sql set expandtab
au FileType sql set shiftwidth=2
au FileType sql set softtabstop=2
au FileType sql set tabstop=2

"----------------------------------------------
" TypeScript
"----------------------------------------------
au FileType typescript set expandtab
au FileType typescript set shiftwidth=4
au FileType typescript set softtabstop=4
au FileType typescript set tabstop=4

"----------------------------------------------
" YAML
"----------------------------------------------
au FileType yaml set expandtab
au FileType yaml set shiftwidth=2
au FileType yaml set softtabstop=2
au FileType yaml set tabstop=2

set completefunc=emoji#complete

