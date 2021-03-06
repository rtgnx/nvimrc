let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_fmt_fail_silently = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1

autocmd BufWritePost *.go :GoTest

let g:syntastic_go_checkers=['golint']
