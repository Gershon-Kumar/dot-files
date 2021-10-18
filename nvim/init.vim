if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

    
call plug#begin()
		Plug 'neoclide/coc.nvim',  {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}" this is for auto complete, prettier and tslinting

		let g:coc_global_extensions = ['coc-clangd', 'coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-java']  " list of CoC extensions needed

		Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {

		" these two plugins will add highlighting and indenting to JSX and TSX files.
		Plug 'yuezk/vim-js'
		Plug 'maxmellon/vim-jsx-pretty'

		Plug 'preservim/nerdtree'
		Plug 'puremourning/vimspector'
		Plug 'szw/vim-maximizer'

		Plug 'morhetz/gruvbox'
		Plug 'joshdick/onedark.vim'
call plug#end()

		"command to reformat file
		command! -nargs=0 Prettier :CocCommand prettier.formatFile

	"personal config
	set visualbell
	set nowrap
	set tabstop=2
	set shiftwidth=2
	set softtabstop=2
	set number
	set ruler
	set backspace=indent,eol,start
	set matchpairs+=<:>
	set hlsearch
	set incsearch
	set ignorecase
	set smartcase
	set showmatch
	colorscheme onedark

	"nerd tree config
	nnoremap <leader>n :NERDTreeFocus<CR>
	nnoremap <C-n> :NERDTree<CR>
	nnoremap <C-t> :NERDTreeToggle<CR>
	nnoremap <C-f> :NERDTreeFind<CR>


	"coc-autosuggestion ------------------------------------------------------
	
	" use <tab> for trigger completion and navigate to the next complete item
	function! s:check_back_space() abort
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~ '\s'
	endfunction

	inoremap <silent><expr> <Tab>
				\ pumvisible() ? "\<C-n>" :
				\ <SID>check_back_space() ? "\<Tab>" :
				\ coc#refresh()

	" use <c-space>for trigger completion
	inoremap <silent><expr> <c-space> coc#refresh()
	inoremap <silent><expr> <NUL> coc#refresh()

	"Use <Tab> and <S-Tab> to navigate the completion list:

	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	"-------------------------------------------------------------

  "Competitve Programming------------------------------------------------------------
	
	autocmd filetype cpp nnoremap <F5> :!g++ -g --std=c++11 % -o %:r && ./%:r < inp.txt  <CR>

	"-------------------------------------------------------------
