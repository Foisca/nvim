let mapleader=" "
" __  ____   __  _   ___	 _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|
"
" Foisca's NeoVim init.vim file
" ===
" === Auto load for first time uses

"some source
source ~/.config/nvim/cursor.vim
source ~/.config/nvim/md-snippets.vim
source ~/.config/nvim/plug.vim
source ~/.config/nvim/functions.vim
"source init.vim
noremap <c-r> :source $MYVIMRC<cr>:echom "NeoVimRC Sourced!"<cr>

" Open the vimrc file anytime
noremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>ep :vsplit ~/.config/nvim/plug.vim<cr>
noremap <leader>ef :vsplit ~/.config/nvim/functions.vim<cr>

"set clipboard=unnamedplus
let &t_ut=''
set autochdir
noremap s <nop>

" ===
" === Editor behavior
" ===
"
"set relativenumber
set number
set cursorline
set hidden
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
set colorcolumn=100
set updatetime=100
set virtualedit=block

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

" Save & Quit
noremap Q         : q!<CR>
noremap <LEADER>q : q!<CR>
noremap <LEADER>s : w<CR>
noremap <C-q>     : qa<CR>
noremap S         : w<CR>
noremap <c-s>     : w<CR>

" Basic Mappings
noremap , 0
noremap . $
nnoremap < <<
nnoremap > >>
noremap ` ~
noremap ; :

"Quick Movement
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/	/\t/g
vnoremap <LEADER>tt :s/	/\t/g

" Folding
noremap <silent> <LEADER>o za

" Open up lazygit
noremap \g :Git
noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>
" nnoremap <c-n> :tabe<CR>:-tabmove<CR>:term lazynpm<CR>

" ===
" === Searching
" ===
noremap - N
noremap = n

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sj :set splitbelow<CR>:split<CR>
noremap sl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sh :set splitright<CR>:vsplit<CR>

" move between the screens
noremap gl <c-w><right>
noremap gh <c-w><left>
noremap gj <c-w><down>
noremap gk <c-w><up>

" Resize splits with arrow keys
noremap <down>  : res +5<CR>
noremap <up>    : res -5<CR>
noremap <right> : vertical resize-5<CR>
noremap <left>  : vertical resize+5<CR>

" Place the two screens up and down
noremap st <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H


" === Tab management
" Create a new tab with tu
noremap tn :tabe<CR>
" Move around tabs with tn and ti
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tj :-tabmove<CR>
noremap tk :+tabmove<CR>


" === Markdown Settings
" Snippets
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell


" === Other useful stuff
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Move the next character to the end of the line with ctrl+9
inoremap <C-u> <ESC>lx$p

" Opening a Terminal Window in Vim
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>


noremap <C-c> zz

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" Call figlet
noremap tx :r !figlet

" Find and Replace
noremap \s :%s//g<left><left>

" press f10 to show hlgroup

exec "nohlsearch"
