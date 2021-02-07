" Press F7 to toggle highlighting on/off, and show current value.
:noremap <F7> :set hlsearch! hlsearch?<CR>

"mouse mode
set mouse=a

"nové okno při splitu jde doprava
set splitbelow splitright

"zkratky
:map ŧ :vert term<CR>
:map <C-i> :IndentGuidesToggle<CR>

"pohybování se mezi taby
set switchbuf=usetab
nnoremap <F4> :sbnext<CR>
nnoremap <F6> :sbprevious<CR>

"NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * silent NERDTreeMirror

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

"indent guide
let g:indent_guides_enable_on_vim_startup = 1

"vzhled
set number
set tabstop=2
set laststatus=2
syntax on
set noshowmode
colorscheme onedark
let g:lightline = {
	\ 'colorscheme': 'onedark',
  \  }
