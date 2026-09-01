unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

if has("termguicolors")
    set termguicolors
endif

colorscheme retrobox

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
set noautoindent
set laststatus=2

" setup cursor line
set cursorline
set cursorlineopt=both

set tabstop=4
set shiftwidth=4

" Search
set hlsearch

" For the :find command
set path+=**
" ctags
" NOTE: make a map to execute this when doing a :w*
command MakeTags !ctags -R .
" nnoremap :w MakeTags
" nnoremap :wall MakeTags
" nnoremap :wq MakeTags
" nnoremap :wqall MakeTags

" autocmd BufWritePost * silent MakeTags
" TODO: make an autocmd to add a trailing whitespace at the end of the file

" setup colors for highlight groups
" hi Normal guibg=#1a1b26
" hi LineNr term=underline ctermfg=11 guifg=#414868
" hi Visual ctermbg=white ctermfg=0 
" hi CursorLine term=NONE cterm=NONE ctermbg=242 guibg=#2d3247
" hi CursorLineNr term=bold cterm=NONE ctermfg=11 gui=bold guifg=#ed9618
" hi NonText term=bold ctermfg=12 gui=bold guifg=#414868
" hi Comment ctermfg=14 guifg=#565f89

" setup colors for man page
" hi Title term=bold ctermfg=225 gui=bold guifg=#bb9af7
" hi Statement term=bold ctermfg=11 gui=bold guifg=#e0af68
" hi Type term=underline ctermfg=121 gui=bold guifg=#9ece6a
" hi Identifier term=underline cterm=bold ctermfg=14 guifg=#7dcfff


