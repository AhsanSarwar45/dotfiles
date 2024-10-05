let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/chrono
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/data/dev/chrono
badd +1 ~/data/dev/chrono/lib/stopwatch/logic/stopwatch_notification.dart
badd +37 ~/data/dev/chrono/lib/notifications/logic/alarm_notifications.dart
badd +79 ~/data/dev/chrono/lib/notifications/logic/notification_callbacks.dart
badd +35 ~/data/dev/chrono/lib/main.dart
badd +127 ~/data/dev/chrono/lib/common/widgets/list/persistent_list_view.dart
badd +12 ~/data/dev/chrono/lib/clock/logic/timezone_database.dart
badd +110 ~/data/dev/chrono/pubspec.yaml
badd +10 ~/data/dev/chrono/lib/database.dart
badd +84 ~/data/dev/chrono/lib/settings/logic/initialize_settings.dart
badd +1 ~/data/dev/chrono/lib/settings/logic/get_setting_widget.dart
badd +115 ~/data/dev/chrono/lib/common/utils/list_storage.dart
badd +318 ~/data/dev/chrono/lib/database.g.dart
badd +7 term://~/data/dev/chrono//232259:/usr/bin/fish
badd +41 ~/data/dev/chrono/lib/alarm/logic/update_alarms.dart
badd +29 ~/.pub-cache/git/drift-ab93107224d59ee1fab75c1a2d632224fb6457ce/drift/lib/src/runtime/query_builder/expressions/variables.dart
badd +253 ~/.pub-cache/git/drift-ab93107224d59ee1fab75c1a2d632224fb6457ce/drift/lib/src/runtime/query_builder/expressions/expression.dart
badd +215 ~/.pub-cache/git/drift-ab93107224d59ee1fab75c1a2d632224fb6457ce/drift/lib/src/runtime/data_class.dart
badd +0 ~/.pub-cache/hosted/pub.dev/timezone-0.9.4/lib/data/latest_all.dart
argglobal
%argdel
$argadd ~/data/dev/chrono
edit ~/.pub-cache/hosted/pub.dev/timezone-0.9.4/lib/data/latest_all.dart
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 1resize ' . ((&columns * 30 + 47) / 95)
exe 'vert 2resize ' . ((&columns * 64 + 47) / 95)
argglobal
enew
file NvimTree_1
balt ~/data/dev/chrono/lib/common/widgets/list/persistent_list_view.dart
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
balt ~/data/dev/chrono/lib/main.dart
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
let s:l = 22 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 22
normal! 018|
wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 47) / 95)
exe 'vert 2resize ' . ((&columns * 64 + 47) / 95)
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
