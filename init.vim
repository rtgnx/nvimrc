source  $HOME/.config/nvim/base.vim

Module 'nav'
Module 'vcs'
Module 'extras'
Module 'editor'
Module 'lang/go'
Module 'lang/js'
Module 'lang/css'
Module 'lang/html'
Module 'lang/jade'
Module 'lang/toml'
Module 'lang/dart'
Module 'lang/rust'
Module 'lang/latex'
Module 'lang/csharp'
Module 'lang/python'
Module 'lang/linters'
Module 'lang/markdown'
Module 'lang/completion'

call g:Init()

if !isdirectory(expand(g:root.'/plugins'))
  execute 'PlugInstall!'
endif

colorscheme wal
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set cursorline&


if empty($SSH_TTY)
  colorscheme $THEME
endif
