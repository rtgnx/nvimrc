augroup HTML
  autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType html :set spell
augroup end

let g:syntastic_html_checkers=['tidy', 'jshint']
