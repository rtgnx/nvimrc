" === Mappings ===
nmap \ :NERDTreeToggle<cr>

" === CtrlP ===
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP .'

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules|vendor|bin|lib|include)$'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|vendor|bin|lib|include|dist)|(\.(swp|swo|pyc|ico|git|svn))$'


" === Tagbar === "
let g:tagbar_autofocus = 1
nnoremap <F6> :TagbarToggle<CR>
inoremap <F6> <ESC>:TagbarToggle<CR>
nnoremap <Leader>tt :TagbarToggle<CR>
let g:tagbar_sort = 0

" === Rooter === "
let g:rooter_targets = "/,*"
let g:rooter_patterns = ["composer.json", ".git", "Makefile", "Pipfile", "Dockerfile"]

let g:ackprg = 'ag --nogroup --nocolor --column'
