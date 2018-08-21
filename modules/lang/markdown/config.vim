
" Getting Things Down
"
let g:gtdown_cycle_states = ['DONE', 'WIP', 'WAIT', 'HELP', 'TODO']

let g:gtdown_show_progress = 1
let g:gtdown_fold_list_items = 1
let g:gtdown_default_fold_level = 2

augroup md
  autocmd FileType md,markdown,rst :set spell
augroup end
