
nmap <Leader>en <Plug>(ale_next)
nmap <Leader>ep <Plug>(ale_previous)

let g:syntastic_error_symbol='✹'
let g:syntastic_warning_symbol='✴'
let g:syntastic_aggregate_errors=1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <Leader>ts :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
