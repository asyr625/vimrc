set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/Vundle.vim'
Plugin 'Rykka/riv.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'

filetype plugin indent on
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set modeline
set modelines=5

set viminfo='10,\"100,:20,%,n~/.viminfo
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

match ErrorMsg '\s\+$'
set ruler
set t_Co=256
set background=dark
set number
set bs=2
set et
set hlsearch
set incsearch
set showmatch
set ai
set mps+=<:>
set laststatus=2
set listchars+=precedes:<,extends:>

" Indent numbers down the margin
set fdc=2
set fdm=indent
set fdl=100

let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1

let g:delimitMate_autoclose = 1
let g:riv_disable_folding = 1
let g:riv_highlight_code = 'lua,python,cpp,javascript,vim,sh,c'

set statusline+=%#warningmsg#
set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_ignore_files = ['\m\.rst$']

let g:syntastic_c_compiler_options = '-std=gnu99 -Wno-deprecated-declarations'
let g:syntastic_cpp_compiler_options = '-Wno-deprecated-declarations'

let g:riv_auto_format_table = 0
