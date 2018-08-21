" SnipMate's CSS 
au BufRead,BufNewFile *.scss set filetype=scss.css
" Fix function names highlighting 
autocmd FileType scss set iskeyword+=-


" Enable emmet only for html,css files
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:user_emmet_leader_key='<C-e>'
