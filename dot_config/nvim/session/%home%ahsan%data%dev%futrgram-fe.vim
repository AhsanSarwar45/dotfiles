let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/futrgram-fe
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +46 ~/data/dev/futrgram-fe/src/routes/(app)/app/components/CameraButton.svelte
badd +122 ~/data/dev/futrgram-fe/src/routes/(app)/app/components/MessageStep.svelte
badd +43 ~/data/dev/futrgram-fe/src/routes/(app)/app/components/Gallery.svelte
badd +6 src/routes/(app)/app/components/PickFilesButton.svelte
badd +2 src/lib/types/attachmentPreview.ts
badd +9 ~/data/dev/futrgram-fe/src/lib/utils/media.ts
argglobal
%argdel
$argadd NvimTree_1
argglobal
enew
file NvimTree_1
balt ~/data/dev/futrgram-fe/src/routes/(app)/app/components/CameraButton.svelte
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
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
