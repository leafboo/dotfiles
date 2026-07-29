unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

if has("termguicolors")
    set termguicolors
endif

" Load plugins
packadd! editorconfig
packadd comment
packadd nohlsearch
" packadd hlyank  - package for briefly highlighting the selected area when yanking

" mappings
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<left>
inoremap {;<CR> {<CR>};<left>

syntax on
set number
set nowrap
set expandtab
set noswapfile

" setup cursor line
set cursorline
set cursorlineopt=both

" setup colors for highlight groups
hi Normal guibg=#1a1b26
hi LineNr term=underline ctermfg=11 guifg=#414868
hi Visual ctermbg=white ctermfg=0 
hi CursorLine term=NONE cterm=NONE ctermbg=242 guibg=#2d3247
hi CursorLineNr term=bold cterm=NONE ctermfg=11 gui=bold guifg=#ed9618

set tabstop=4
set shiftwidth=4

" Search
set hlsearch
