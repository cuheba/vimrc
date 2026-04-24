syntax on

set encoding=utf-8
set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set relativenumber
set number
set hlsearch
set ruler
set ttyfast
set noerrorbells
set background=dark
set updatetime=300
set lazyredraw

highlight Comment ctermfg=green

call plug#begin()
  Plug '/junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-airline/vim-airline'
  Plug '/morhetz/gruvbox'
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'sjl/badwolf'
call plug#end()



"====TERMINAL====
autocmd VimEnter * below new | term
autocmd VimEnter * resize 10
autocmd VimEnter * wincmd k
tnoremap <Esc> <C-\><C-n>


"=====AIRLINE=====

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'base16'
let g:airline_inactive_collapse = 0

"highlight StatusLineNC guifg=#303030 guibg=#303030 gui=NONE
"highlight VertSplit guifg=#303030 guibg=#303030 gui=NONE


"=====THEMES=====
let g:badwolf_darkgutter = 1
highlight Normal ctermbg=NONE
colorscheme goodwolf



"=====NERDTree=====


" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif



"=====Coc-vim=====

" Использовать <Tab> для выбора предложений в меню автодополнения
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Использовать <Enter> для подтверждения выбора
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Перейти к определению (Go To Definition)
nmap <silent> gd <Plug>(coc-definition)
" Перейти к реализации
nmap <silent> gi <Plug>(coc-implementation)
" Найти ссылки на символ
nmap <silent> gr <Plug>(coc-references)

" Показать документацию при нажатии 'K'
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" Переименование переменной (Rename)
nmap <leader>rn <Plug>(coc-rename)

" Форматирование выделенного кода
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


