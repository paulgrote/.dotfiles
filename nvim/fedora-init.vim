" Enable line numbers
set number

" Enable syntax highlighting and filetype detection
syntax on
filetype plugin indent on

" Set colorscheme
set termguicolors
colorscheme catppuccin_mocha


" Tabs and indents = 4 spaces
set shiftwidth=4
set tabstop=4

" ----- Vimwiki settings -----
" Remap \wo so it opens highlighted link in a new tab
nmap <leader>wo <Plug>VimwikiTabDropLink
let g:vimwiki_list = [{'path': '~/OneDrive/vimwiki/',
		\'syntax': 'markdown',
		\'ext': 'md',
		\'links_space_char': '-',
		\'diary_rel_path': 'journal/',
		\'diary_index': 'journal',
		\'diary_header': 'Journal',
		\'diary_sort': 'desc',
		\'diary_caption_level': 1,
		\'auto_diary_index': 1,
		\'generated_links_caption': 1},
	\{'path': '~/vimwiki/reference/',
		\'index': 'README',
		\'syntax': 'markdown',
		\'ext': 'md'},
	\{'path': '~/vimwiki/rhcsa-exam-prep/',
		\'index': 'rhcsa-exam',
		\'syntax': 'markdown',
		\'ext': 'md',
		\'diary_frequency': 'weekly'},
	\{'path': '~/vimwiki/serverplus-exam-prep/',
		\'index': 'serverplus-exam',
		\'syntax': 'markdown',
		\'ext': 'md'}]
"Ignore markdown files outside the vimwiki_list path
let g:vimwiki_global_ext = 0	" Restrict vimwiki operation to only paths listed in g:vimwiki_list
let g:vimwiki_auto_header = 1	"Automatically generate level 1 header when creating new page
