" Misc.  "{{{1
function! s:select_a()
  " To easily back to the last position after a command.
  " For example: yae<C-o>
  mark '

  keepjumps normal! gg0
  let start_pos = getpos('.')

  keepjumps normal! G$
  let end_pos = getpos('.')

  return ['V', start_pos, end_pos]
endfunction

function! s:select_i()
  " To easily back to the last position after a command.
  " For example: yie<C-o>
  mark '

  keepjumps normal! gg0
  call search('^.', 'cW')
  let start_pos = getpos('.')

  keepjumps normal! G$
  call search('^.', 'bcW')
  normal! $
  let end_pos = getpos('.')

  return ['V', start_pos, end_pos]
endfunction

" Public interface {{{1

function! textobj#entire#select_i() abort
  return s:select_i()
endfunction

function! textobj#entire#select_a() abort
  return s:select_a()
endfunction

" vim: foldmethod=marker
