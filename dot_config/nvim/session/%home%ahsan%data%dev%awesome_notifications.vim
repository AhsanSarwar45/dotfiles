let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/awesome_notifications
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 .
badd +16 ~/data/dev/awesome_notifications/lib/src/enumerators/foreground_service_type.dart
badd +54 ~/data/dev/awesome_notifications/lib/src/android_foreground_service/android_foreground_service_core.dart
badd +10 ~/data/dev/awesome_notifications/lib/src/utils/assert_utils.dart
badd +1181 ~/data/dev/awesome_notifications/example/lib/notifications/notifications_util.dart
badd +562 ~/data/dev/awesome_notifications/example/lib/pages/home_page.dart
badd +38 ~/data/dev/awesome_notifications/lib/src/enumerators/android_foreground_service_constants.dart
badd +43 ~/data/dev/awesome_notifications/android/src/main/AndroidManifest.xml
badd +19 ~/data/dev/awesome_notifications/android/src/main/java/me/carda/awesome_notifications/AwesomeNotificationsFlutterExtension.java
badd +29 ~/data/dev/awesome_notifications/android/src/main/java/me/carda/awesome_notifications/AwesomeNotificationsPlugin.java
badd +40 ~/data/dev/awesome_notifications/pubspec.yaml
badd +40 ~/data/dev/awesome_notifications/android/build.gradle
badd +1 ~/data/dev/awesome_notifications/android/settings.gradle
badd +1 ~/data/dev/awesome_notifications/android/.gitignore
badd +1 ~/data/dev/awesome_notifications/awesome_notifications.iml
badd +6 ~/data/dev/awesome_notifications/example/android/settings.gradle
badd +1 ~/data/dev/awesome_notifications/LICENSE
argglobal
%argdel
$argadd .
edit ~/data/dev/awesome_notifications/android/build.gradle
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/data/dev/awesome_notifications/LICENSE
let s:l = 40 - ((16 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 40
normal! 023|
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
