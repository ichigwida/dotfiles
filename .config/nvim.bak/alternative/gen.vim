let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/bin/python3'

syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

let &t_SI = "\e[6 q"
let &t_EI = "\e[3 q"
let mapleader = "\<Space>"

set nocompatible
set hidden
set encoding=utf8
set guifont=Monoisome\ 12
set t_Co=256
set laststatus=2
set clipboard+=unnamedplus              " system clipboard
set viminfo=""
set noswapfile
set nobackup
set nowritebackup
set autoread
set mouse=a                             "let vim mouse scroll
set sidescroll=1
set scrollopt+=hor
set showbreak=↪\
set ruler
set showcmd                             " display incomplete commands
set showmode                            " display current modes<Paste>
set number                              " show numbers
set relativenumber
set display+=lastline
set shiftround
set hlsearch
set incsearch
set ignorecase
set smartcase

"folding things...
set foldmethod=indent
set foldnestmax=10
set foldlevel=2
set nofoldenable

"tab settings
function! UseTabs()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set noexpandtab   " Always uses tabs instead of space characters (noet).
  set autoindent    " Copy indent from current line when starting a new line (ai).
  set list lcs=tab:\|\                    " show line indentation when tabs
endfunction
function! UseSpaces()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set expandtab     " Always uses spaces instead of tab characters (et).
  set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  set autoindent    " Copy indent from current line when starting a new line.
  set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
  set list lcs=tab:\|\                    " show line indentation when tabs
  :retab
endfunction
call UseSpaces()

set completeopt=longest,menuone
set wildmenu                            " show a navigable menu for tab completion
set wildmode=longest,list,full
set wildignore=*.o,*~,*.pyc,*.class,*.so,*.zip,*.a,*/tmp/*
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set backspace=indent,eol,start          " make that backspace key work the way it should
set whichwrap+=<,>,h,l
set listchars=extends:›,precedes:‹,nbsp:␣,trail:·,tab:→\ ,eol:¬
set iskeyword-=_,.,=,-,:,               " specify what e word is

set scrolloff=10                        " Leave 10 lines of buffer when scrolling
set sidescrolloff=10                    " Leave 10 characters of horizontal buffer when scrolling
set cursorline
set cursorcolumn                        " column before numbers
set signcolumn="yes"


" === NAVIGATION === "
"navigation panes
map <C-M-Pagedown> :tabn<CR>
map <C-M-Pageup> :tabp<CR>
map <leader>v :vnew<CR>
map <leader>b :new<CR>
map <leader>n :enew<CR>
nmap - :e #<cr>
map <C-Up> <C-k>
map <C-Down> <C-j>
map <C-Left> <C-h>
map <C-Right> <C-l>
"move vertically on soft lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
"move horizontally
map <home> ^
map <end> $



" === WHERE YOU LEFT ===""
"go to last position you were editing
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview




" === FOLDING === "
if has('folding')
	set foldenable
	set foldmethod=syntax
	set foldlevelstart=99
	set foldtext=FoldText()
endif
function! FoldText()
	" Get first non-blank line
	let fs = v:foldstart
	while getline(fs) =~? '^\s*$' | let fs = nextnonblank(fs + 1)
	endwhile
	if fs > v:foldend
		let line = getline(v:foldstart)
	else
		let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
	endif

	let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
	let foldSize = 1 + v:foldend - v:foldstart
	let foldSizeStr = ' ' . foldSize . ' lines '
	let foldLevelStr = repeat('+--', v:foldlevel)
	let lineCount = line('$')
	let foldPercentage = printf('[%.1f', (foldSize*1.0)/lineCount*100) . '%] '
	let expansionString = repeat('.', w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
	return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endfunction



" === REMOVE HABITS === "
nnoremap D "_dd
nnoremap c "_c
vnoremap c "_c
map <S-Up> <Nop>
map <S-Down> <Nop>
