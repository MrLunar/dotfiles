set nocompatible

" Set leader key to <space>
nnoremap <SPACE> <Nop>
let mapleader = " "

" Key maps
map <leader>e :Explore<CR>
map <leader>n :noh<CR>

" Plugins (Run :PlugInstall after changing)
"call plug#begin()
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'preservim/nerdtree'
"call plug#end()

" Adapted from: vim-better-default
syntax on                      " Syntax highlighting
filetype plugin indent on      " Automatically detect file types
set autoindent                 " Indent at the same level of the previous line
set autoread                   " Automatically read a file changed outside of vim
" set backspace=indent,eol,start " Backspace for dummies
" set complete-=i                " Exclude files completion
set display=lastline           " Show as much as possible of the last line
set encoding=utf-8             " Set default encoding
set history=10000              " Maximum history record
set hlsearch                   " Highlight search terms
set incsearch                  " Find as you type search
set laststatus=2               " Always show status line
set mouse=a                    " Automatically enable mouse usage
set smarttab                   " Smart tab
set ttyfast                    " Faster redrawing
set viminfo+=!                 " Viminfo include !
set wildmenu                   " Show list instead of just completing
set ttymouse=xterm2
"""
""set shortmess=atOI " No help Uganda information, and overwrite read messages to avoid PRESS ENTER prompts
set ignorecase     " Case insensitive search
set smartcase      " ... but case sensitive when uc present
set scrolljump=5   " Line to scroll when cursor leaves screen
set scrolloff=3    " Minumum lines to keep above and below cursor
set nowrap         " Do not wrap long lines
"set shiftwidth=4   " Use indents of 4 spaces
"set tabstop=4      " An indentation every four columns
"set softtabstop=4  " Let backspace delete indent
"set splitright     " Puts new vsplit windows to the right of the current
"set splitbelow     " Puts new split windows to the bottom of the current
"set autowrite      " Automatically write a file when leaving a modified buffer
"set mousehide      " Hide the mouse cursor while typing
"set hidden         " Allow buffer switching without saving
"set t_Co=256       " Use 256 colors
"set ruler          " Show the ruler
set showcmd        " Show partial commands in status line and Selected characters/lines in visual mode
"set showmode       " Show current mode in command-line
set showmatch      " Show matching brackets/parentthesis
"set matchtime=5    " Show matching time
set report=0       " Always report changed lines
"set linespace=0    " No extra spaces between rows
set pumheight=20   " Avoid the pop up menu occupying the whole screen

" Indenting options
set expandtab
set shiftwidth=4
set softtabstop=-1 " use same as shiftwidth
set tabstop=4

" Editor options
set number          " Show line numbers
set relativenumber  " Line numbers are relative
set cursorline      " Highlight current line
set colorcolumn=88

set belloff=all  " Disable terminal sounds/notifications (e.g. scroll up when already at top)

" airline status bar theme
"let g:airline_theme='angr'

" Monokai Pro theme (modified)
" https://github.com/phanviet/vim-monokai-pro/blob/6c449e5d4ef6086c519de0544d4aca46c0a9596c/colors/monokai_pro.vim
set background=dark
highlight clear
hi Cursor ctermfg=236 ctermbg=231 cterm=NONE guifg=#2d2a2e guibg=#fcfcfa gui=NONE
hi SignColumn ctermfg=NONE ctermbg=237 cterm=NONE guibg=#3a3a3a guifg=NONE guisp=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#403e41 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#423f42 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#423f42 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#423f42 gui=NONE
hi LineNr ctermfg=246 ctermbg=235 cterm=NONE guifg=#959394 guibg=#423f42 gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#696769 guibg=#696769 gui=NONE
hi MatchParen ctermfg=204 ctermbg=NONE cterm=underline guifg=#ff6188 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#fcfcfa guibg=#696769 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#fcfcfa guibg=#696769 gui=NONE
hi Pmenu ctermfg=150 ctermbg=NONE cterm=NONE guifg=#a9dc76 guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#403e41 gui=NONE
hi IncSearch ctermfg=236 ctermbg=221 cterm=NONE guifg=#2d2a2e guibg=#ffd866 gui=NONE
hi Search ctermfg=NONE ctermbg=239 cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=209 ctermbg=NONE cterm=NONE guifg=#fc9867 guibg=NONE gui=NONE
hi Folded ctermfg=189 ctermbg=60 cterm=NONE guifg=#d7d7ff guibg=#5f5f87 gui=NONE
hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#fcfcfa guibg=#2d2a2e gui=NONE
hi Boolean ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Character ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Comment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#727072 guibg=NONE gui=italic
hi Conditional ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi Constant ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Define ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#fcfcfa guibg=#47840e gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8c0809 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#fcfcfa guibg=#273a5b gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#fcfcfa guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Function ctermfg=150 ctermbg=NONE cterm=NONE guifg=#a9dc76 guibg=NONE gui=NONE
hi Identifier ctermfg=116 ctermbg=NONE cterm=NONE guifg=#78dce8 guibg=NONE gui=italic
hi Keyword ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi Label ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi NonText ctermfg=240 ctermbg=235 cterm=NONE guifg=#5b595c guibg=#2d2a2e gui=NONE
hi Number ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Special ctermfg=147 ctermbg=NONE cterm=NONE guifg=#ab9df2 guibg=NONE gui=NONE
hi Operator ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi PreProc ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi SpecialKey ctermfg=240 ctermbg=59 cterm=NONE guifg=#5b595c guibg=#423f42 gui=NONE
hi Statement ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi StorageClass ctermfg=116 ctermbg=NONE cterm=NONE guifg=#78dce8 guibg=NONE gui=italic
hi String ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffd866 guibg=NONE gui=NONE
hi Tag ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ff6188 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#fcfcfa guibg=NONE gui=bold
hi Todo ctermfg=231 ctermbg=NONE cterm=inverse,bold guifg=#fcfcfa guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=116 ctermbg=NONE cterm=NONE guifg=#78dce8 guibg=NONE gui=italic
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi CursorLineNr term=none cterm=none ctermbg=235
hi TabLineFill cterm=none ctermbg=237
hi TabLineSel cterm=underline,bold ctermfg=221 ctermbg=235
hi TabLine cterm=none ctermbg=237

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=88
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/ 
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/ 
autocmd InsertLeave * match ExtraWhitespace /\s\+$/ 
autocmd BufWinLeave * call clearmatches()

