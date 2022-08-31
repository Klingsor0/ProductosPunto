" Set leaders "
let mapleader=","
let fortran_leader=","
let maplocalleader="'"

" hifhlight current line
set cursorline
:highlight Cursorline cterm=bold ctermbg=black


"" Enable hifhlight search pattern
set hlsearch


" Disable case sensitive in search "
set ignorecase
set smartcase 


" enable syntax "
syntax on


" enable use of mouse "
set mouse	=a

" set of clipboard "


" set enumeration config "
set numberwidth	=4
set number relativenumber


" Indentation using spaces "
" tabstop	width of tab character
" softtabstop:	fine tunes the amount of whitespace to be added
" shiftwidth:	determines the amount of whitespace to add in normal mode
" shiftwidth:	determines the amount pf whitespace to add in normal mode
" expadtab: 	when on use  spae instead of tab
" textwidth: text wrap width
" autoindent:	autoindent in newline
set tabstop	=4
set noexpandtab
set autoindent
filetype indent on


" configuracion de teclas 
nnoremap Q !!$SHELL<ENTER>
nnoremap <F6> :setlocal spell! spelllang=es<Enter>
inoremap <leader>dd <esc>ddi
noremap <leader>u <esc>viwUi
noremap <leader>. :w<CR>
noremap <leader>; :wq<Enter>
noremap <leader>/ :q<Enter>
noremap <leader>\ :q!<Enter>


" Navegando con guias
"inoremap ;gui
inoremap <leader><leader> <Esc>/<Enter>"_c4l
vnoremap <leader><leader> <Esc>/<Enter>"_c4l
nnoremap <leader><leader> <Esc><Enter>"_c4l


" Autocompletar
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<Enter> {<Enter>}<Esc>0
inoremap [ []<Esc>li
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
set showmatch


"Autocompletar fortran
set statusline=%f
nnoremap <leader>program :-1read $HOME/.config/.fortranprogram.f95<CR>$:put = expand('%:t:r')<cr>i<c-u><esc><Enter>"_c4l

" showcmd "
set showcmd
autocmd VimEnter * echo ">^.^<"

" Edicion de VIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<cr> 

nnoremap <leader>sv :source $MYVIMRC<cr>

" compilar python&fortran
" autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%,1)<CR>
autocmd FileType python map <buffer> <F9> :w<CR>:set makeprg=python3\ %<CR>:make<CR>:copen<CR>
autocmd FileType bash map <buffer>  <F9> :w<CR>:set makeprg=bash\ %<CR>:make<CR>:copen

let fortran_linter =2


"pluggins
call plug#begin()

"Plug 'https://github.com/SirVer/ultisnips'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plug 'https://github.com/lervag/vimtex'
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quicktex_mode=1
	let g:vimtex_latexmk_continous=1

Plug 'https://github.com/tommason14/lammps.vim'

Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
Plug 'dylanaraps/wal.vim'
""colorscheme wal
set background=dark

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

call plug#end()

" filetype "
set nocompatible
filetype on
filetype plugin on

" configuracion de nerdtree
nmap <c-f> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree() ) | q | endif 

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


""compilar latex
map <leader>c :w! \| :!pdflatex <c-r>%<CR><CR>
"" abrir preview
map <leader>p :!zathura <c-r>%<backspace><backspace><backspace>pdf&<CR><CR>
" VimTex "


" plugin shitcore que no creo usar "
""set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'lervag/vimtex'
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quicktex_mode=1
	let g:vimtex_latexmk_continous=1
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'scrooloose/nerdtree'
" Plugin 'kaicataldo/material.vim'
" Plugin 'rakr/vim-one'
" Plugin 'vim-python/python-syntax'
""Plugin 'valloric/youcompleteme'
" Plugin 'mattn/emmet-vim'
" Plugin 'rudrab/vimf90'
"ultisnips"

" Track the engine.
" Plugin 'SirVer/ultisnips'
	let g:UltiSnipsExpandTrigger='<tab>'
	let g:UltiSnipsJumpForwardTrigger='<tab>'
	let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

" Plugin 'KeitaNakamura/tex-conceal.vim'
	set conceallevel=1
	let g:tex_conceal='abdmg'
	hi Conceal ctermbg=none
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" call vundle#end()


