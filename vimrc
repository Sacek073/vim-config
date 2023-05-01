" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
set belloff=all

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'ycm-core/YouCompleteMe'
highlight YcmErrorLine guibg=#ff0505

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set completeopt-=preview

" Press F9 to toggle highlighting on/off, and show current value.
:noremap <F9> :set hlsearch! hlsearch?<CR>

nmap gn <Plug>(GitGutterNextHunk)
nmap gp <Plug>(GitGutterPrevHunk)
nmap gh <Plug>(GitGutterPreviewHunk)

" Press F8 to toggle auticompletion
let $acp_tog=1
function Acp_toggle()
  if $acp_tog==1
    :exe "AcpDisable"
    let $acp_tog=0
  else
    :exe "AcpEnable"
    let $acp_tog=1
  endif
endfunction
:noremap <F8> :call Acp_toggle()<CR>

"mouse mode
set mouse=a

"new split window position
set splitbelow splitright

"shortcuts
map ŧ :vert term<CR>
"tab switchig
nnoremap <F4> gT
nnoremap <F6> gt

"search for visual selection
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Copy paste from and to vim
" vnoremap <C-y> "*y :let @+=@*<CR>
" map <C-p> "+p
set clipboard=unnamedplus

" change dir to dir of actual file
set autochdir

"NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * silent NERDTreeMirror

"Save foldnig and load folding
autocmd BufWrite *.* mkview
autocmd BufWinEnter *.* silent loadview

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"Remove whitespaces whedn saving
autocmd BufWritePre * %s/\s\+$//e

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

"indent guide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1

"searching case
set ignorecase
set smartcase

"appearance
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

:set lcs=tab:\¦\⠀
set list
set cursorline
set tabstop=4
set shiftwidth=4


set expandtab
set softtabstop=0
set smarttab
" set colorcolumn=80

set laststatus=2
syntax on
set noshowmode
colorscheme onedark
let g:lightline = {
	\ 'colorscheme': 'onedark',
  \  }

" Conceal
let g:indentLine_setConceal = 2
let g:indentLine_concealcursor = "nc"
