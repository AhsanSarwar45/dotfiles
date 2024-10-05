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
badd +38 ~/data/dev/flourish/lib/pages/home/TabBarView.dart
badd +283 ~/data/dev/flourish/lib/pages/home/sevenday/seven_day_view.dart
badd +70 ~/data/dev/flourish/lib/app.dart
badd +19 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityDetails/activity_details_logic.dart
badd +237 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityDetails/activity_details_screen.dart
badd +30 ~/data/dev/flourish/lib/pages/home/nativeActivity/breathActivity/breath_screen.dart
badd +7 ~/data/dev/flourish/lib/pages/home/nativeActivity/breathActivity/breath_logic.dart
badd +707 ~/data/dev/flourish/lib/pages/home/sevenday/seven_day_logic.dart
badd +0 ~/data/dev/flourish/lib/pages/onboarding/widgets/_music_button.dart
badd +157 ~/data/dev/flourish/lib/pages/onboarding/onboarding_page_logic.dart
badd +113 ~/data/dev/flourish/lib/routes/app_routes.dart
badd +506 ~/data/dev/flourish/lib/routes/app_pages.dart
badd +1 ~/data/dev/flourish/lib/pages/home/nativeActivity/breathActivity/breath_binding.dart
badd +1 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityDetails/activity_details_binding.dart
badd +1 ~/data/dev/flourish/android/build.gradle
badd +56 ~/data/dev/flourish/android/app/build.gradle
badd +378 ~/.pub-cache/hosted/pub.dev/get-4.6.6/lib/get_rx/src/rx_types/rx_core/rx_impl.dart
badd +171 ~/data/dev/flourish/lib/pages/onboarding/onboarding_page_view.dart
badd +1 ~/data/dev/flourish/pubspec.lock
badd +1 ~/data/dev/flourish/.metadata
badd +19 ~/data/dev/flourish/analysis_options.yaml
badd +1 ~/data/dev/flourish/devtools_options.yaml
badd +61 ~/data/dev/flourish/package_config.json
badd +59 ~/.pub-cache/hosted/pub.dev/get-4.6.6/lib/get_rx/src/rx_workers/rx_workers.dart
badd +17 ~/data/dev/flourish/.git/config
badd +0 ~/data/dev/flourish/.git/description
argglobal
%argdel
$argadd .
edit ~/data/dev/flourish/.git/config
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
let s:l = 23 - ((22 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 0
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
