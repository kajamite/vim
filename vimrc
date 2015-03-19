" VIMRC mix by Oleh Novosad (https://github.com/kajamite/vim)
" Best to use with tmux
"
" I use vim-pathogen for managing plugins
execute pathogen#infect()
Helptags  " I NEED HELP!

runtime macros/matchit.vim " used by textobj-rubyblock

" ctrlp configs
set runtimepath^=~/.vim/bundle/ctrlp.vim  
hi def link CtrlPMatch CursorLine
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git\|node_modules\|bin\|\.hg\|\.svn\|build\|log\|resources\|coverage\|doc\|tmp\|public/assets\|vendor\|Android',
  \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
  \ }
" CtrlP Delete
call ctrlp_bdelete#init()
" " CtrlP Funky
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_multi_buffers = 1



" Disable tag generation on file save
" On large projects, generating a tags file is slow so I don’t really want
" that to happen on every save. I’m totally fine doing it manually whenever I
" thing my tags file is out of date.
let g:vim_tags_auto_generate = 0

" Vim tmux runner
" I don't want the default key mappings
let g:VtrUseVtrMaps = 0
" Vim spec runner
let g:spec_runner_dispatcher = 'call VtrSendCommand("{command}")'



" ag config for skwp/greplace.vim
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" The first option here, the autocmd! one, clears the stage for the rest of
" the file. It makes sure there are no surprises, no commands bound to any
" events so that I can later add just the ones I need.
autocmd! 

" Here, I’m setting the default encoding to UTF8
set encoding=utf-8 nobomb

set regexpengine=1
syntax on
syntax sync fromstart
filetype plugin indent on " Automatically detect file types.

" option tells vim to act more like the modern vim as opposed to the old vi
set nocompatible
set modelines=0

" The noshowmode option is used to disable the label for the current mode. I
" don’t really need an indicator for the mode I’m currently in, I can figure
" that out by the shape of my cursor so there’s no point in having it.
set noshowmode

" This is just a handy trick to automatically load the .vimrc file whenever
" you save it. I usually tweak something and I want it to take effect
" immediately, that’s why I have this setting.
au BufWritePost .vimrc so $MYVIMRC

" rails.vim related config
" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Invisible characters
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_,extends:❯,precedes:❮

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=1200

" Use only 1 space after "." when joining lines instead of 2
set nojoinspaces

" Don't reset cursor to start of line when moving around
set nostartofline

" Autocomplete ids and classes in CSS
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
" Add the '-' as a keyword in erb files
autocmd FileType eruby set iskeyword=@,48-57,_,192-255,$,-

" Make those debugger statements painfully obvious
au BufEnter *.rb syn match error contained "\<binding.pry\>"
au BufEnter *.rb syn match error contained "\<debugger\>"


" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" cssColorVim plugin
let g:cssColorVimDoNotMessMyUpdatetime = 1



" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

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


set hlsearch                    " highlight the search
set ls=2                        " show a status line even if there's only one window

" Improve vim's scrolling speed
set ttyfast
set ttyscroll=3
set lazyredraw

set wildmenu                    " show completion on the mode-line
set linespace=0                 " number of pixels between the lines
set splitright                  " open vertical splits on the right
set splitbelow                  " open the horizontal split below
set linebreak                   " break lines at word end
set nobackup                    " don't want no backup files
set nowritebackup               " don't make a backup before overwriting a file
set noswapfile                  " no swap files
set hidden                      " hide buffers when abandoned

" Time out on key codes but not mappings
set notimeout
set ttimeout
set ttimeoutlen=100

" Auto-reload buffers when files are changed on disk
set autoread

" Lines with equal indent form a fold.
set foldmethod=indent
set foldlevel=1
set foldnestmax=10
" Open all folds by default
set nofoldenable

set undofile                    " Save undo's after file closes
set undodir=~/.vim/undo         " where to save undo histories
set undolevels=1000             " How many undos
set undoreload=10000            " number of lines to save for undo

set vb                          " disable alert sound
set showcmd                     " display incomplete commands
set history=100                 " a ton of history

" Default shell and shell syntax and source ~/.bash_profile
set shell=/bin/bash\ --login
let g:is_bash=1

" Whitespace
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

" Searching
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set scrolloff=0                 " keep a 5 line padding when moving the cursor

set autoindent                  " indent on enter
set smartindent                 " do smart indenting when starting a new line
set shiftround                  " indent to the closest shiftwidth

set switchbuf=""                " do not move focus/cursor to where the buffer is already open
set tagbsearch                  " use binary searching for tags

" The "Press ENTER or type command to continue" prompt is jarring and
" usually unnecessary.
set shortmess=atI


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


" Complete till longest common string.
" When more than one match exists, list them all.
set wildmode=longest,list

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Ignore images and log files
set wildignore+=*.gif,*.jpg,*.png,*.log

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Ignore custom folders
set wildignore+=*/resources/*

" Ignore node modules
set wildignore+=node_modules/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Disable osx index files
set wildignore+=.DS_Store


" I’ve stolen this from the 14th Vimcasts episode. It’s a quick way of
" obtaining the current file path on the command line.
autocmd Filetype gitcommit setlocal spell textwidth=72

" I don’t use vim-fugitive too much but when I do I want those buffers it
" creates to be gone by the time I’m done with it. That’s what the line above
" does, it removes those fugitive buffers.
autocmd BufReadPost fugitive://* set bufhidden=delete


" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


" I’m using vim in terminal inside tmux so I want my vim windows to resize
" themselves whenever I resize the terminal window.
autocmd VimResized * :wincmd =


" MY MAPPINGS 
" I usually remap Caps Lock to Ctrl 

" alt+n or alt+p to navigate between entries in QuickFix
map π :cp<CR>
map ˜ :cn<CR>

let mapleader=" "                                   " My <Leader> key
nmap ; :

" Ctrl+e for recent files list (CtrlP plugin required) 
nmap <leader>e :CtrlPMRU<CR>

" ctrlp buffers
nnoremap <leader>bb :CtrlPBuffer<cr>

" ctrlp tags
nmap <leader>b :CtrlPTag<cr>

" Show related file (like view for controller or controller for model) - requires rails.vim plugin
nmap <C-r> :R<CR>                                 

" Find the current file in the tree. - requires NERD Tree plugin
nmap <Leader>n :NERDTreeFind<CR>        

" Toggle NERD Tree
nmap <Leader>m :NERDTreeToggle<CR>                       

" Show syntax highlighting attributes of character under cursor.
map <C-q>  :call SyntaxAttr()<CR>

" All 256 xterm colors with their RGB equivalents, right in Vim!
map <C-t>  :XtermColorTable<CR>

" I like to get rid of buffers I don’t use. I don’t have a reason why I do
" that, it probably makes it easier to find the ones I need, I don’t really
" know. So for that to happen and not having to reopen my windows (because
" when you delete a buffer from vim it also closes it’s window) I’ve bound the
" two commands above to C-c in normal mode. So now when I want to get rid of a
" buffer, I just do C-c and move on.
nnoremap <C-c> :bnext\|bdelete #<CR>

" no ex-mode please
nnoremap Q <nop>

" remove search highlighting
nnoremap <leader>h :noh<cr>


" C-c send enter in insert mode
" This is awesome, I’ve aliased the <esc> key to C-c when I’m in insert mode.
" Instead of having to reach for the escape key (or even worse, for the C-[
" key combo) I just do C-c and I’m back to normal mode.
inoremap <C-c> <Esc>

" Quickly get out of insert mode without your fingers having to leave the
" home row (either use 'jj' or 'jk')
inoremap jj <Esc>
inoremap jk <Esc>

" I’m aliasing w and q to their uppercase counterparts because I often have
" the shift key pressed and I type W instead of w.
cnoreabbrev W w
cnoreabbrev Q q

" Expand %% to current directory
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%')<cr>

" Whenever you find yourself changing files that are only writable by the root
" user, this bit will come in handy. It allows you to save those files even if
" you’re not root (you need to be able to sudo though).
cnoremap w!! %!sudo tee > /dev/null %

" Visually select the text that was last edited/pasted
nnoremap gV `[v`]
" selelct what you've just pasted
nnoremap gp `[v`]

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Two of my favorite shortcuts. The first one allows me to type the spacebar
" twice and it will bring me back to the last buffer I was on. The <leader>V
" shortcut is also handy because I can get to my .vimrc file quickly.
" nnoremap <leader><leader> :b#<cr>
nnoremap <leader>V :e $MYVIMRC<cr>

map <Leader>tf <Plug>RunCurrentSpecFile
map <Leader>tt <Plug>RunFocusedSpec
map <Leader>tl <Plug>RunMostRecentSpec
