" VIMRC of Oleh Novosad

"
" I use vim-pathogen for managing plugins
execute pathogen#infect()

set regexpengine=1
syntax on
filetype plugin indent on " Automatically detect file types.

" rails.vim related config
" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" cssColorVim plugin
let g:cssColorVimDoNotMessMyUpdatetime = 1

" alt+n or alt+p to navigate between entries in QuickFix
map π :cp<CR>
map ˜ :cn<CR>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'


set nocompatible
set modelines=0

" Theme options
colorscheme monokai2
let g:monokai_original = 1
let g:rehash256 = 1
" As explained here, disable Background Color Erase (BCE) by clearing the t_ut terminal option (run :set t_ut= in Vim and then press Control+L to refresh the terminal's display) so that Vim extends the color scheme's background color to the whole terminal screen. This also works if Vim is being used inside tmux or GNU screen.
:set t_ut=

" Not fan of wrapping 
:set nowrap

" Force vim to use 256 colors
:set t_Co=256

let g:auto_save = 1  " enable AutoSave on Vim startup

" Set tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=utf-8
set scrolloff=2
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number                                          " this should be present for numbers.vim to work normally
set relativenumber                                  " and this too    
set undofile
set cf                                              " Enable error files & error jumping.
set clipboard=unnamed                               " Yanks go on clipboard instead.
set history=256                                     " Number of things to remember in history.
set autowrite                                       " Writes on make/shell commands
set timeoutlen=250                                  " Time to wait after ESC (default causes an annoying delay)

" Formatting (some of these are for coding in C and C++)
set bs=2                                            " Backspace over everything in insert mode
set shiftwidth=2                                    " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set smarttab


" Visual
set showmatch                                       " Show matching brackets.
set mat=5                                           " Bracket blinking.
"set list                                             " If 'list' is on, whitespace characters are made visible. 
" Show $ at end of line and trailing space as ~
"set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell                                    " No blinking .
set noerrorbells                                    " No noise.
set laststatus=2                                    " Always show status line.

" gvim specific
set mousehide                                       " Hide mouse after chars typed
set mouse=a                                         " Mouse in all modes

" At this moment I use autosave plugin.
" I don't want backup files.
" Autosave works similar to how RubyMine works
set nobackup
set nowritebackup
set noswapfile

" If ag installed use ag instead of grep
" On Mac you can install: brew install ag
" ag is faster than grep
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor


  " Use ag in CtrlP for listing files. Lightning fast and respects
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Change cursor shape when in insert mode for tmux running in iTerm2 on OS X:
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" MY MAPPINGS 
" I usually remap Caps Lock to Ctrl 

let mapleader=","                                   " My <Leader> key
nmap ; :

" Ctrl+e for recent files list (CtrlP plugin required) 
nmap <C-e> :CtrlPMRU<CR>
nmap <C-r> :R<CR>                                 " Show related file (like view for controller or controller for model) - requires rails.vim plugin
nmap ,n :NERDTreeFind<CR>                         " Find the current file in the tree. - requires NERD Tree plugin
nmap ,m :NERDTreeToggle<CR>                       " Toggle NERD Tree


