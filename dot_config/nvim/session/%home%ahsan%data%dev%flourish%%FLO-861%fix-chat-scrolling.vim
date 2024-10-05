let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/flourish
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +72 ~/data/dev/flourish/lib/pages/openai/chat/chat_view.dart
badd +265 ~/data/dev/flourish/lib/pages/openai/chat/chat_logic.dart
badd +1 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityChat/ActivityChatScreen.dart
badd +1 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityChat/ActivityChatBinding.dart
badd +271 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityChat/ActivityChatLogic.dart
badd +26 ~/data/dev/flourish/lib/pages/openai/chat/chat_utils.dart
badd +1 ~/data/dev/flourish/lib/pages/openai/chat/chat_binding.dart
badd +150 ~/data/dev/flourish/lib/pages/openai/openai_logic.dart
argglobal
%argdel
$argadd NvimTree_1
edit ~/data/dev/flourish/lib/pages/home/nativeActivity/activityChat/ActivityChatLogic.dart
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 94) / 188)
exe '2resize ' . ((&lines * 32 + 24) / 49)
exe 'vert 2resize ' . ((&columns * 157 + 94) / 188)
exe '3resize ' . ((&lines * 13 + 24) / 49)
exe 'vert 3resize ' . ((&columns * 157 + 94) / 188)
argglobal
enew
file NvimTree_1
balt ~/data/dev/flourish/lib/pages/openai/chat/chat_view.dart
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
balt ~/data/dev/flourish/lib/pages/home/nativeActivity/activityChat/ActivityChatBinding.dart
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 271 - ((15 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 271
normal! 01|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/data/dev/flourish//149217:/usr/bin/fish", ":p")) | buffer term://~/data/dev/flourish//149217:/usr/bin/fish | else | edit term://~/data/dev/flourish//149217:/usr/bin/fish | endif
if &buftype ==# 'terminal'
  silent file term://~/data/dev/flourish//149217:/usr/bin/fish
endif
balt ~/data/dev/flourish/lib/pages/home/nativeActivity/activityChat/ActivityChatLogic.dart
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 42 - ((12 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 42
normal! 052|
wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 94) / 188)
exe '2resize ' . ((&lines * 32 + 24) / 49)
exe 'vert 2resize ' . ((&columns * 157 + 94) / 188)
exe '3resize ' . ((&lines * 13 + 24) / 49)
exe 'vert 3resize ' . ((&columns * 157 + 94) / 188)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
