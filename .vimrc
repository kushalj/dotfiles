execute pathogen#infect('bundle/{}', '~/Dropbox/vim-files/bundle/{}')
syntax on

""""""""""""""""
" Vundle setup
"
""""""""""""""""

set nocompatible
filetype off

set rtp+=~/Dropbox/vim-files/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required 
Bundle 'gmarik/vundle'

"""""""""""""""


"""""""""""""""
" vim-javascript-syntax
" vim-javascript
"""""""""""""""


"""""""""""""""


"""""""""""""""
"
" Snipmate for Django
" 
"""""""""""""""
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

" Optional:
Bundle "honza/vim-snippets"

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

"""""""""""""""



"""""""""""""""
" Ctrl-P
"
"""""""""""""""
let g:ctrlp_working_path_mode = 0


"""""""""""""""



"""""""""""""""
" vim-indent-guides
"""""""""""""""
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
""""""""""""""


" General Setup

filetype plugin indent on



""""""""""""""""" NerdTree

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

" Auto close NERD Tree if no windows left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <F3> <plug>NERDTreeTabsToggle<CR>

let g:NERDTreeDirArrows=0

""""""""""""""""
" Syntastic 
" May need npm install jshint -g
"
""""""""""""""""

let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['jshint']

""""""""""""""""


""""""""""""""""
" Easymotion 
"
"
""""""""""""""""

let g:EasyMotion_leader_key = '<Leader>'

""""""""""""""""


""""""""""""""""
" YouCompleteMe (needs Node and Npm)
" ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
" brew install cmake
" needs to be installed in local cd ~/.vim/bundle/
" git clone https://github.com/Valloric/YouCompleteMe.git
" cd ~/.vim/bundle/YouCompleteMe && ./install.sh
" (needs Vim 7.4+) 
"
" Tern for VIM
" git clone https://github.com/marijnh/tern_for_vim.git
" npm install (in its dir)
"
" or...
" Bundle 'Valloric/YouCompleteMe'
"
" On Error
" - brew uninstall python macvim
"   brew update
"   brew install python macvim
"   brew unlink python
"
"   in one line:
"   brew uninstall python macvim && brew update && brew install python macvim
"   then:
"   cd ~/.vim/bundle/YouCompleteMe && ./install.sh
"
" or, worst case...
" put this in .bash_profile
" alias vim='DYLD_FORCE_FLAT_NAMESPACE=1 /Applications/MacVim.app/Contents/MacOS/Vim -v'
""""""""""""""""
Bundle 'Valloric/YouCompleteMe'

""""""""""""""""


"""""""""""""""
" CSS/HTML/JS 
" autoComplete
" may need these:
" :set omnifunc=javascriptcomplete#CompleteJS
" :set omnifunc=htmlcomplete#CompleteTags
"""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

inoremap <C-@> <C-x><C-o>
" inoremap <C-@> <C-Space>
" Mapped to C-Space correctly
"""""""""""""""



""""""""""""""""
" Colors
" 
" may need git clone 
" e.g.:
" git clone https://github.com/tomasr/molokai.git ~/.vim/colors/molokai
"
""""""""""""""""
colorscheme badwolf

" set background=dark
set t_Co=256

" gutters darker than background 
let g:badwolf_darkgutter = 1

" Make the tab line darker than the background.
let g:badwolf_tabline = 0

let g:rehash256 = 1
""""""""""""""""

" Search setting:
" can use \C to specify case in a search or just type
" an upper case letter in the search; otherwise...
set smartcase

" set paste/nopaste switch to <F10>
set pastetoggle=<F9>


" Set zf folding (zfo and zfO to open folds)
set foldmethod=indent

set number

" tabstop = 4 according to Steve McConnell's Code Complete Second Edition
" chapter on Layout and Style
set tabstop=4
set shiftwidth=4
set expandtab

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap /*          /**/<Left><Left>
inoremap /*<Space>   /*<Space><Space>*/<Left><Left><Left>
inoremap /*<CR>      /*<CR>*/<Esc>O
inoremap <Leader>/*  /*




