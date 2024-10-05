let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/newwave-launcher
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +82 ~/data/dev/newwave-launcher/pnpm-lock.yaml
badd +10 ~/data/dev/newwave-launcher/package.json
badd +22 ~/data/dev/newwave-launcher/src/renderer/src/lib/login.svelte
badd +41 ~/data/dev/newwave-launcher/electron-builder.yml
badd +7 ~/data/dev/newwave-launcher/src/preload/index.js
badd +157 ~/data/dev/newwave-launcher/src/main/index.js
badd +1 ~/data/dev/newwave-launcher/src/renderer/index.html
badd +1 ~/data/dev/newwave-launcher/src/renderer/src/components/check.svelte
badd +1 ~/data/dev/newwave-launcher/src/renderer/src/components/notify.svelte
badd +42 ~/data/dev/newwave-launcher/src/renderer/src/lib/home.svelte
badd +1 ~/data/dev/newwave-launcher/src/renderer/src/lib/settings.svelte
badd +40 ~/data/dev/newwave-launcher/src/renderer/src/App.svelte
badd +1 ~/data/dev/newwave-launcher/src/renderer/src/main.js
badd +1 ~/data/dev/newwave-launcher/dsada.json
badd +1 ~/data/dev/newwave-launcher/electron.vite.config.1679355516523.mjs
badd +1 ~/data/dev/newwave-launcher/electron.vite.config.1689848563881.mjs
badd +1 ~/data/dev/newwave-launcher/electron.vite.config.1707414296619.mjs
badd +1 ~/data/dev/newwave-launcher/electron.vite.config.1707414300098.mjs
badd +1 ~/data/dev/newwave-launcher/electron.vite.config.mjs
badd +1 ~/data/dev/newwave-launcher/tailwind.config.js
badd +1 ~/data/dev/newwave-launcher/postcss.config.js
badd +1 ~/data/dev/newwave-launcher/src/renderer/src/lib/accounts.svelte
badd +1 ~/data/dev/newwave-launcher/src/renderer/src/lib/Info.svelte
argglobal
%argdel
$argadd NvimTree_1
edit ~/data/dev/newwave-launcher/src/renderer/src/lib/login.svelte
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
balt ~/data/dev/newwave-launcher/src/renderer/src/lib/Info.svelte
let s:l = 31 - ((9 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 31
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
