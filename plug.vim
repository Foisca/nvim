" === Install Plugins with Vim-Plug

call plug#begin('~/.config/nvim/plugged')

" Pretty Dress
Plug 'bpietravalle/vim-bolt'
Plug 'ajmwagar/vim-deus'
Plug 'rakr/vim-one'
Plug 'liuchengxu/space-vim-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" display battery in the status line
Plug 'lambdalisue/battery.vim'



" Status line
Plug 'ojroques/vim-scrollstatus'

" File navigation
" Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-rooter'
Plug 'pechorin/any-jump.vim'

" Taglist
" Plug 'liuchengxu/vista.vim'

" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Undo Tree
Plug 'mbbill/undotree'

" NerdTree
Plug 'preservim/nerdtree'

" Git
Plug 'cohama/agit.vim'

" Autoformat
Plug 'Chiel92/vim-autoformat'
" Go
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }

" Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'f-person/pubspec-assist-nvim', { 'for' : ['pubspec.yaml'] }

" Markdown
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

" Editor Enhancement
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'tomtom/tcomment_vim' " in <space>cn to comment a line
Plug 'theniceboy/antovim' " gs to switch
Plug 'junegunn/vim-after-object' " da= to delete what's after =
Plug 'godlygeek/tabular' " ga, or :Tabularize <regex> to align
Plug 'tpope/vim-capslock'	" Ctrl+L (insert) to toggle capslock
Plug 'easymotion/vim-easymotion'
Plug 'svermeulen/vim-subversive'
Plug 'rhysd/clever-f.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'AndrewRadev/splitjoin.vim'

" Find & Replace
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }

" Other visual enhancement
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'mg979/vim-xtabline'
Plug 'wincent/terminus'

" Plug 'liuchengxu/eleline.vim'
Plug 'sainnhe/sonokai'

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

call plug#end()

