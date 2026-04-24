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
set noerrorbells
set background=dark
set t_Co=256
set termguicolors

highlight Comment ctermfg=green

call plug#begin()
  Plug '/junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug '/morhetz/gruvbox'
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'sjl/badwolf'
call plug#end()


colorscheme badwolf
let g:airline_powerline_fonts = 1

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

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


