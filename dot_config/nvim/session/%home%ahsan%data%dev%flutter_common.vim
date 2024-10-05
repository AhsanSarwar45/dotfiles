let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/flutter_common
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +3 ~/data/dev/flutter_common/l10n.yaml
badd +760 ~/data/dev/flutter_common/lib/src/l10n/app_en.arb
badd +291 ~/data/dev/flutter_common/lib/src/widgets/time_picker.dart
badd +22 ~/data/dev/flutter_common/lib/src/theme/theme.dart
badd +57 ~/data/dev/flutter_common/lib/src/theme/data/appearance_settings_schema.dart
badd +3 ~/data/dev/flutter_common/lib/src/theme/time_picker.dart
badd +1 ~/data/dev/flutter_common/lib/src/theme/bottom_sheet.dart
badd +1 ~/data/dev/flutter_common/lib/src/theme/switch.dart
badd +1 ~/data/dev/flutter_common/lib/src/theme/toggle_buttons.dart
badd +13 ~/data/dev/flutter_common/lib/src/theme/text.dart
badd +3 ~/data/dev/flutter_common/lib/src/list/types/list_item.dart
badd +1 ~/data/dev/flutter_common/lib/src/settings/data/backup_options.dart
badd +0 ~/data/dev/flutter_common/lib/src/settings/data/accessibility_settings_schema.dart
badd +38 ~/data/dev/flutter_common/lib/src/settings/data/backup_settings_schema.dart
badd +1 ~/data/dev/flutter_common/lib/src/types/time.dart
badd +2 ~/data/dev/flutter_common/lib/src/types/file_item.dart
badd +43 pubspec.yaml
badd +44 ~/data/dev/flutter_common/lib/src/fields/logic/show_select.dart
badd +46 ~/data/dev/flutter_common/lib/src/developer/widgets/log_card.dart
badd +1 ~/data/dev/flutter_common/lib/src/developer/types/log_filter.dart
badd +5 ~/data/dev/flutter_common/lib/src/developer/types/log.dart
badd +40 ~/data/dev/flutter_common/lib/src/developer/types/file_logger_output.dart
badd +1 ~/data/dev/flutter_common/lib/src/fields/types/select_choice.dart
badd +1 ~/data/dev/flutter_common/lib/src/list/types/list_controller.dart
badd +1 ~/data/dev/flutter_common/lib/src/types/json.dart
badd +1 ~/data/dev/flutter_common/lib/src/types/popup_action.dart
badd +1 ~/data/dev/flutter_common/lib/src/theme/border.dart
argglobal
%argdel
$argadd .
edit ~/data/dev/flutter_common/lib/src/settings/data/accessibility_settings_schema.dart
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
exe 'vert 1resize ' . ((&columns * 30 + 63) / 127)
exe 'vert 2resize ' . ((&columns * 96 + 63) / 127)
argglobal
enew
file NvimTree_1
balt ~/data/dev/flutter_common/lib/src/widgets/time_picker.dart
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
balt ~/data/dev/flutter_common/lib/src/settings/data/backup_settings_schema.dart
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
let s:l = 10 - ((9 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 63) / 127)
exe 'vert 2resize ' . ((&columns * 96 + 63) / 127)
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
