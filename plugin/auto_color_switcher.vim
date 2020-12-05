let s:save_cpo = &cpo
set cpo&vim

if exists('g:loaded_auto_color_switcher')
  finish
endif

if exists('g:auto_color_switcher_binary_path')
  let s:exe = g:auto_color_switcher_binary_path
else
  finish
endif

function! s:CallBack(ch, msg)
  if a:msg == "light"
    set background=light
  else
    set background=dark
  endif
  redraw
endfunction

let job = job_start(s:exe, {"out_cb": function('s:CallBack')})

let g:loaded_auto_color_switcher = 1
let &cpo = s:save_cpo
unlet s:save_cpo