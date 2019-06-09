set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry


let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'   }
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity']   }
Plug 'tpope/vim-fireplace', { 'for': 'clojure'   }
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme']   }
Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader'   }
Plug 'junegunn/goyo.vim', { 'for': 'markdown'   }
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'w0rp/ale'
" Plug 'myitcv/govim'
" Plug 'rakr/vim-one'

" Intellisense
" Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh'  }
Plug 'Raimondi/delimitMate'                     " auto-completion for quotes, parens, brackets, etc
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
Plug 'ervandew/supertab'
autocmd! User goyo.vim echom 'Goyo is now loaded!'
call plug#end()
