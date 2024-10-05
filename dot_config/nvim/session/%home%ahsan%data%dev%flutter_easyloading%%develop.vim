let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/flutter_easyloading
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/data/dev/flutter_easyloading/pubspec.yaml
badd +1 ~/data/dev/flutter_easyloading/lib/flutter_easyloading.dart
badd +467 ~/data/dev/flutter_easyloading/lib/src/easy_loading.dart
badd +37 ~/data/dev/flutter_easyloading/lib/src/theme.dart
badd +44 ~/data/dev/flutter_easyloading/lib/src/animations/scale_animation.dart
badd +19 ~/data/dev/flutter_easyloading/lib/src/animations/opacity_animation.dart
badd +19 ~/data/dev/flutter_easyloading/lib/src/animations/animation.dart
badd +133 ~/data/dev/flutter_easyloading/lib/src/widgets/container.dart
badd +42 ~/data/dev/flutter_easyloading/lib/src/widgets/overlay_entry.dart
badd +1 ~/data/dev/flutter_easyloading/lib/src/widgets/progress.dart
badd +54 ~/data/dev/flutter_easyloading/lib/src/widgets/loading.dart
argglobal
%argdel
$argadd NvimTree_1
edit ~/data/dev/flutter_easyloading/lib/src/widgets/progress.dart
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
exe 'vert 1resize ' . ((&columns * 30 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 49 + 40) / 80)
argglobal
enew
file NvimTree_1
balt ~/data/dev/flutter_easyloading/pubspec.yaml
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
balt ~/data/dev/flutter_easyloading/lib/src/widgets/overlay_entry.dart
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
let s:l = 118 - ((5 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 118
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 49 + 40) / 80)
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
