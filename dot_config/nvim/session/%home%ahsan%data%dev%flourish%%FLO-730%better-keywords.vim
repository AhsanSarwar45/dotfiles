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
badd +1 ~/data/dev/flourish
badd +341 lib/showcase_plugin/src/showcase.dart
badd +105 lib/showcase_plugin/src/showcase_widget.dart
badd +499 lib/showcase_plugin/src/tooltip_widget.dart
badd +150 lib/pages/home/moment/select_type/select_type_logic.dart
badd +350 lib/pages/home/moment/select_type/select_type_view.dart
badd +17 ~/.pub-cache/hosted/pub.dev/get-4.6.6/lib/get_state_manager/src/simple/get_controllers.dart
badd +1166 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityDetails/activity_details_screen.dart
badd +109 ~/data/dev/flourish/lib/pages/home/sevenday/widgets/chat_summary_card.dart
badd +28 ~/data/dev/flourish/lib/pages/activity/activity_post/post/PostActivityScreen.dart
badd +517 ~/data/dev/flourish/lib/pages/activity/activity_post/edit_post_activity/EditActivityToPostScreen.dart
badd +1 ~/data/dev/flourish/lib/pages/home/moment/select_type/select_type_binding.dart
badd +6 ~/data/dev/flourish/lib/model/word_entity.dart
badd +0 ~/data/dev/flourish/lib/pages/openai/chat/chat_view.dart
argglobal
%argdel
$argadd ~/data/dev/flourish
edit ~/data/dev/flourish/lib/pages/openai/chat/chat_view.dart
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
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
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
exe 'vert 2resize ' . ((&columns * 78 + 94) / 188)
exe '3resize ' . ((&lines * 32 + 24) / 49)
exe 'vert 3resize ' . ((&columns * 78 + 94) / 188)
exe '4resize ' . ((&lines * 13 + 24) / 49)
exe 'vert 4resize ' . ((&columns * 157 + 94) / 188)
argglobal
enew
file NvimTree_1
balt lib/pages/home/moment/select_type/select_type_view.dart
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
balt lib/pages/home/moment/select_type/select_type_view.dart
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
let s:l = 119 - ((17 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 119
normal! 0
wincmd w
argglobal
enew
file 327/spectre
setlocal fdm=expr
setlocal fde=spectre#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
if bufexists(fnamemodify("term://~/data/dev/flourish//214074:/usr/bin/fish", ":p")) | buffer term://~/data/dev/flourish//214074:/usr/bin/fish | else | edit term://~/data/dev/flourish//214074:/usr/bin/fish | endif
if &buftype ==# 'terminal'
  silent file term://~/data/dev/flourish//214074:/usr/bin/fish
endif
balt lib/pages/home/moment/select_type/select_type_view.dart
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 051|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 94) / 188)
exe '2resize ' . ((&lines * 32 + 24) / 49)
exe 'vert 2resize ' . ((&columns * 78 + 94) / 188)
exe '3resize ' . ((&lines * 32 + 24) / 49)
exe 'vert 3resize ' . ((&columns * 78 + 94) / 188)
exe '4resize ' . ((&lines * 13 + 24) / 49)
exe 'vert 4resize ' . ((&columns * 157 + 94) / 188)
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
