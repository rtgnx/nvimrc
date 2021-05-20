let g:root = $HOME.'/.config/nvim'
let g:tmux =  !empty($TMUX)

let g:plugins = []
let g:modules = []
let g:source = []
let g:plug_home = g:root.'/plugins/'

function! g:Load(path) abort
	if filereadable(expand(a:path))
		execute 'source ' . fnameescape(a:path)
	else
		echo '[Error]: '. a:path . ' does not exists'
	endif
endfunction

function! g:AddModule(name, ...)
	if isdirectory(expand(g:root.'/modules/' . a:name))
		call add(g:modules, a:name)
		return 1
	endif

	echo "ERROR: Module does not exists"
	return 0
endfunction

function! g:AddPlugin(...)
	if a:0 == 0
		return 'Plugin name required'
	elseif a:0 == 1
		call add(g:plugins, { 'name': a:1, 'opts': {}})
	elseif a:0 == 2
	  call add(g:plugins, { 'name': a:1, 'opts': a:2})
  else
		return 'Too many arguments for PL command'
	endif
endfunction

command! -nargs=+ -bar PL call g:AddPlugin(<args>)
command! -nargs=+ -bar Module call g:AddModule(<args>)
"command! -nargs=0 -bar Status call s:status()
"command! -nargs=0 -bar Update call s:update()

function! s:load_modules()
	for l:mod in g:modules
		let l:path = g:root.'/modules/'.l:mod

		"Add to source list
		if !empty(glob(l:path.'/config.vim'))
			call add(g:source, l:path.'/config.vim')
		endif

		"Load plugins file
		if !empty(glob(l:path.'/plugins.vim'))
			call Load(l:path.'/plugins.vim')
		endif
	endfor
endfunction

function! s:post_init()
	for l:src in g:source
		call g:Load(l:src)
	endfor
endfunction

function! g:Init()
	let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
	if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif

	call s:load_modules()
	call plug#begin(g:plug_home)
	for l:plugin in g:plugins
		call plug#(l:plugin.name, l:plugin.opts)
	endfor
	call plug#end()
	call s:post_init()
endfunction
