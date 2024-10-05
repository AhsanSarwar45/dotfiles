let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/designerpro
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/data/dev/designerpro/src/routes/(designer)/d/arts/requests/\[id]/Card.svelte
badd +17 ~/data/dev/designerpro/src/routes/(designer)/d/arts/requests/\[id]/Art.svelte
badd +40 ~/data/dev/designerpro/src/routes/(client)/arts/in-progress/Card.svelte
badd +13 ~/data/dev/designerpro/src/routes/(client)/arts/in-progress/+page.server.ts
badd +77 ~/data/dev/designerpro/src/routes/(client)/arts/request/+page.server.ts
badd +104 ~/data/dev/designerpro/src/routes/(designer)/d/arts/requests/+page.server.ts
badd +1 ~/data/dev/designerpro/src/routes/(designer)/d/arts/requests/+page.svelte
badd +56 ~/data/dev/designerpro/src/routes/(designer)/d/arts/requests/Card.svelte
badd +4 ~/data/dev/designerpro/src/lib/types/Art.ts
badd +16 src/routes/(client)/arts/in-progress/\[id]/Art.svelte
badd +129 src/lib/server/db.ts
badd +31 src/routes/(client)/arts/in-progress/\[id]/Card.svelte
badd +85 src/routes/(client)/arts/in-progress/\[id]/+page.server.ts
badd +28 src/routes/(client)/arts/archive/+page.server.ts
badd +25 src/lib/client/emailjs.ts
badd +22 .env.production
badd +115 src/routes/(client)/arts/request/1TypeSearch.svelte
badd +134 src/routes/(client)/arts/request/assistant/multiple-art/5Text.svelte
badd +32 src/routes/(client)/arts/request/FinalReview.svelte
badd +37 src/routes/(client)/arts/request/Review.svelte
badd +1 src/routes/(client)/arts/in-progress/+page.svelte
badd +1 src/lib/client/status.ts
badd +3 51/spectre
badd +85 ~/data/dev/designerpro/src/routes/(landing-page)/request-details/+page.svelte
badd +16 ~/data/dev/designerpro/src/routes/(designer)/d/arts/done/\[id]/Art.svelte
badd +17 ~/data/dev/designerpro/src/routes/(designer)/d/arts/done/\[id]/revisions/Art.svelte
badd +21 ~/data/dev/designerpro/src/routes/(client)/arts/archive/\[id]/Art.svelte
badd +24 ~/data/dev/designerpro/src/routes/(client)/arts/archive/\[id]/revisions/Art.svelte
badd +16 ~/data/dev/designerpro/src/routes/(client)/arts/archive/\[id]/edit/Art.svelte
badd +1 ~/data/dev/designerpro/src/routes/(client)/arts/request/Request.svelte
badd +1 ~/data/dev/designerpro/src/routes/(client)/arts/request/+page.svelte
badd +498 ~/data/dev/designerpro/src/lib/client/dimensions.ts
badd +1 ~/data/dev/designerpro/src/routes/(designer)/d/arts/requests/\[id]/+page.server.ts
badd +1 ~/data/dev/designerpro/src/routes/(client)/arts/request/EditableGroup.svelte
badd +98 ~/data/dev/designerpro/node_modules/.pnpm/@sveltejs+kit@1.30.4_svelte@4.2.18_vite@4.5.3/node_modules/@sveltejs/kit/src/runtime/app/forms.js
badd +22 ~/data/dev/designerpro/.env.development
badd +1 ~/data/dev/designerpro/firebase-debug.log
badd +1 ~/data/dev/designerpro/firebase.json
badd +1 ~/data/dev/designerpro/firestore.indexes.json
badd +1 ~/data/dev/designerpro/src/lib/client/app.ts
badd +11 ~/data/dev/designerpro/src/lib/client/auth.ts
badd +31 ~/data/dev/designerpro/emulator-config/auth_export/accounts.json
badd +1 ~/data/dev/designerpro/emulator-config/auth_export/config.json
badd +1 ~/data/dev/designerpro/emulator-config/firestore_export/firestore_export.overall_export_metadata
badd +1 ~/data/dev/designerpro/emulator-config/firestore_export/all_namespaces/all_kinds/all_namespaces_all_kinds.export_metadata
badd +1 ~/data/dev/designerpro/emulator-config/firestore_export/all_namespaces/all_kinds/output-0
badd +12 ~/data/dev/designerpro/src/lib/types/ArtRequest.ts
badd +74 ~/data/dev/designerpro/src/routes/(designer)/d/arts/done/\[id]/+page.svelte
badd +68 ~/data/dev/designerpro/src/routes/(client)/arts/archive/\[id]/+page.svelte
argglobal
%argdel
$argadd .
edit ~/data/dev/designerpro/src/routes/(client)/arts/archive/\[id]/+page.svelte
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
balt src/routes/(client)/arts/archive/+page.server.ts
let s:l = 68 - ((12 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 68
normal! 038|
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
