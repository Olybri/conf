" ~/.vimrc

syntax on
set autoindent
set si
set tabstop=4
set shiftwidth=4
set expandtab
set cinoptions+=j1
let java_comment_strings=1
let java_highlight_java_lang_ids=1
set number
set hlsearch
set showmatch
set linebreak
set smartcase
set ignorecase
set incsearch
set cindent
set smartindent
set smarttab
set softtabstop=4
set undolevels=1000
set backspace=indent,eol,start
set mouse=a
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set rtp+=/home/loris/.local/lib/python2.7/site-packages/powerline/bindings/vim

"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

let g:clang_library_path='/usr/lib/llvm-3.8/lib/'
let g:clang_complete_copen=1
let g:clang_hl_errors=1
