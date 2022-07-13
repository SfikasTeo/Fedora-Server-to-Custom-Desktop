" --------------- PLUG ---------------

	call plug#begin(“~/.vim/plugged”)
		Plug 'dracula/vim'									"Installed Themes
		Plug 'preservim/nerdcommenter'						"Easy multiline commenting tool
		Plug 'neoclide/coc.nvim', {'branch': 'release'}		"a fast code completion engine
	call plug#end()

" --------------- THEME ---------------

	“ color schemes
	if (has(“termguicolors”))
		set termguicolors
	endif

	" General visuals
	syntax enable		" Same as syntax on - default
	set number 			" add line numbers
	set cursorline		" highlight current cursorline
	set nowrap			" Long lines not wrapped
	
	“ colorscheme in action:
	colorscheme dracula

" --------------- GENERAL SETTINGS ---------------
	" General
	set nocompatible			" disable compatibility to old-time vi
	set so=999					" Smooth scroll
	set wildmode=longest,list   " get bash-like tab completions
	set mouse=a                 " enable mouse click
	set clipboard=unnamedplus   " using system clipboard
		
	" open new split panes to right and below
	set splitright
	set splitbelow
	
	" default encoding
	set encoding=utf-8
	set fileencoding=utf-8
	
	" 256 colors support
	set t_Co=256
	
	" Tabs
	set autoindent				" indent a new line the same amount as the line just typed
	set tabstop=4               " number of columns occupied by a tab 
	set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
	set expandtab               " converts tabs to white space
	set shiftwidth=4            " width for autoindents
	set smartindent             " autoindent with C like language suport
	
	" Determines the current filetype and enables the correct identation 
	filetype plugin indent on   " allow auto-indenting depending on file type

	" No BackUps	
	set noswapfile            	" disable creating swap file
	set nobackup				" disable backup
	set nowritebackup			" disable writing on backups
	
	" Searching
	set showmatch               " show matching - No fucking idea
	set hlsearch                " highlight search 
	set incsearch               " incremental search

" --------------- STATUS LINE ---------------
	
	set statusline=
	set statusline+=\ %M			" Shows "+" if changes have been made
	set statusline+=\ %y			" Display the filetype in use
	set statusline+=\ %r			" Display Read-Only indicator
	set statusline+=\ %F			" Display the Full file path

	set statusline+=%=				" Print anything after this to the right
	set statusline+=%#IncSearch#	" Print what is beeing searched
	set statusline+=\ %c:%l/%L		" Print Column:Line/Total Lines
	set statusline+=\ [%n]			" Display buffer number ( Tab counter )

" --------------- KEYBINDS ---------------

	" Insert mode keybindings
	:inoremap ii <Esc> 			" :ii to exit insert mode.
	inoremap <C-c> <C-o>yy		" Copy current line to buffer
	inoremap <C-x> <C-o>dd		" Cut current line to buffer
	inoremap <C-v> <C-o>p		" Paste buffer after cursor

" --------------- END ---------------
