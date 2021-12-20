call plug#begin()
"
" After adding a git plugin below, run: ":PlugInstall"
"
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'nathanaelkane/vim-indent-guides'

" Below plugin causing weird chars on end of some tf lines
" Plug 'juliosueiras/vim-terraform-completion'
call plug#end()

let g:rainbow_active = 1
set laststatus=2

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
set ts=2 sw=2 et
let g:indent_guides_start_level = 2

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
" let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
" let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
" let g:terraform_registry_module_completion = 0

" Open .hcl files as terraform (for pretty colours)
autocmd BufNewFile,BufRead *.hcl set syntax=terraform

set hlsearch

