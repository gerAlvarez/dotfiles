filetype off                                      " Helps force plug-ins to load correctly when it is turned back on below.
filetype plugin indent on                         " For plug-ins to load correctly.
set scrolloff=5                                   " Display 5 lines above/below the cursor when scrolling with a mouse.
set backspace=indent,eol,start                    " Fixes common backspace problems.
set nocompatible                                  " Set compatibility to Vim only.
syntax on                                         " Turn on syntax highlighting.
set modelines=0                                   " Turn off modelines.
set wrap                                          " Automatically wrap text that extends beyond the screen length.
set ttyfast                                       " Speed up scrolling in Vim.
set laststatus=2                                  " Status bar.
set matchpairs+=<:>                               " Highlight matching pairs of brackets. Use the '%' character to jump between them.
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.    " Display different types of white spaces.
set number                                        " Show line numbers.
set encoding=utf-8                                " Encoding.
set hlsearch                                      " Highlight matching search patterns.
set incsearch                                     " Enable incremental search.
set ignorecase                                    " Include matching uppercase words with lowercase search term.
set noshowmode                                    " Hide the default mode text (e.g. -- INSERT -- below the statusline).
set guifont=Hack\ Nerd\ Font\ Mono\ 14            " Hack Nerd Fonts (https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack/Regular/complete)
colorscheme nord                                  " Nord Theme (https://github.com/arcticicestudio/nord-vim)
set updatetime=100                                " Controls the delay (in ms) before vim writes its swap file.

set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set showcmd

" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}    " Set status line display.
" set  rtp+=/usr/lib/python3.8/site-packages/powerline/bindings/vim/                                          " Enable Powerline for Vim.
" set t_Co=256                                                                                                " Algo con los colores.
" set showtabline=2                                                                                           " Always display the tabline, even if there is only one tab.

" ------------------------------------------------------------
"
" VIM-PLUG
" https://github.com/junegunn/vim-plug
" Install plugins with :PlugInstall
"
" ------------------------------------------------------------

" Vim-plug plugin manager. 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')                   " Specify a directory for plugins. Avoid using standard Vim directory names like 'plugin'.

" --------------------------------------------------
" Plugins start here
" --------------------------------------------------

Plug 'arcticicestudio/nord-vim'                     " Nord theme (https://github.com/arcticicestudio/nord-vim).
Plug 'itchyny/lightline.vim'                        " lightline.vim status line (https://github.com/itchyny/lightline.vim).

" --------------------------------------------------
" Plugins ends here
" --------------------------------------------------

call plug#end()                                     " Initialize plugin system.

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
