let s:save_cpo = &cpo
set cpo&vim

if exists('g:loaded_auto_color_switcher')
  finish
endif

if exists('g:auto_color_switcher#disable')
  if g:auto_color_switcher#disable == v:true
    finish
  endif
else
  let g:auto_color_switcher#disable = v:false
endif

if exists('g:auto_color_switcher#binary_path')
  let s:exe = g:auto_color_switcher#binary_path
else
  let s:exe = expand('<sfile>:p:h:h')..'/bin/auto_color_switcher'
  if s:exe == expand('<sfile>:p:h:h')
    echo "auto_color_switcher : couldn't find binary"
    finish
  endif
endif

if exists('g:auto_color_switcher#command')
else
  let g:auto_color_switcher#command = {
        \ 'light': 'set background=light',
        \ 'dark' : 'set background=dark'
        \}
endif


function! s:CallBack(ch, msg)
  if g:auto_color_switcher#disable == v:true
    return
  endif
  if a:msg == "light"
    call execute(g:auto_color_switcher#command['light'])
  else
    call execute(g:auto_color_switcher#command['dark'])
  endif
  redraw
endfunction

function! s:CallBackNeoVim(j, d, e)
  call s:CallBack(a:j, a:d[0])
endfunction

" s:jobはデバグ用です
if has('nvim')
  let s:job = jobstart(s:exe, {"on_stdout": function('s:CallBackNeoVim')})
else
  let s:job = job_start(s:exe, {"out_cb": function('s:CallBack')})
endif

let g:loaded_auto_color_switcher = 1
let &cpo = s:save_cpo
unlet s:save_cpo
