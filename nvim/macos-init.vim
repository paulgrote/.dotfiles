" Enable syntax highlighting
syntax on
set termguicolors

" Color settings
colorscheme nord
let g:airline_theme='nord'

" Enable powerline fonts with vim-airline
let g:airline_powerline_fonts = 1

" Enable line numbers
set number

" Enter a venv so that taskwiki can have its dependencies
let g:python3_host_prog = '~/.config/nvim/venv/bin/python3'

" VimWiki configuration
let g:vimwiki_list = [	
	\{'path': '~/vimwiki/runbook',
		\'links_space_char': '-',
		\'diary_header': 'Daily Notes',
		\'generated_links_caption': 1,
		\'auto_diary_index': 1,
		\'auto_tags': 1},
	\{'path': '~/vimwiki/reference',
		\'name': 'Reference',
		\'index': 'README',
		\'syntax': 'markdown',
		\'ext': '.md',
		\'links_space_char': '-'}]
let g:vimwiki_global_ext = 0		" Restrict vimwiki operation to only the paths listed in g:vimwiki_list
let g:vimwiki_auto_header = 1		" Automatically generate level 1 header when creating new page
" Remap \wo so it opens highlighted link in a new tab
nmap <leader>wo <Plug>VimwikiTabDropLink

" Taskwiki configuration
let g:taskwiki_dont_fold = 'yes'
let g:taskwiki_disable_concealcursor = 'yes'

let g:ale_linters = {
	\ 'markdown': ['vale'],
	\ 'restructuredtext': ['vale']}
