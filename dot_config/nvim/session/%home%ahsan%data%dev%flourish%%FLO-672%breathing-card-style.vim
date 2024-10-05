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
badd +27 lib/pages/home/nativeActivity/breathActivity/breath_screen.dart
badd +145 ~/data/dev/flourish/lib/main.dart
badd +77 ~/data/dev/flourish/lib/app.dart
badd +796 ~/data/dev/flourish/lib/model/NativeActivity.dart
badd +11 ~/data/dev/flourish/lib/model/homepage_entity.dart
badd +524 lib/routes/app_pages.dart
badd +28 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityDetails/activity_details_logic.dart
badd +585 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityDetails/activity_details_screen.dart
badd +1 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityDetails/widgets/activity_completion_card.dart
badd +135 lib/pages/home/nativeActivity/breathActivity/breath_logic.dart
badd +915 ~/data/dev/flourish/lib/pages/home/sevenday/seven_day_view.dart
badd +145 ~/data/dev/flourish/lib/pages/home/sevenday/seven_day_logic.dart
badd +1 ~/data/dev/flourish/lib/pages/home/nativeActivity/activityDetails/activity_details_binding.dart
badd +261 ~/data/dev/flourish/lib/repository/native_activity_repository.dart
argglobal
%argdel
$argadd .
edit ~/data/dev/flourish/lib/pages/home/sevenday/seven_day_view.dart
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
wincmd =
argglobal
enew
file NvimTree_1
balt lib/pages/home/nativeActivity/breathActivity/breath_screen.dart
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
balt ~/data/dev/flourish/lib/pages/home/nativeActivity/activityDetails/widgets/activity_completion_card.dart
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let &fdl = &fdl
let s:l = 915 - ((23 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 915
normal! 034|
wincmd w
2wincmd w
wincmd =
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
