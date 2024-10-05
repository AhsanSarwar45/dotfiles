let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/NewWaveLauncher
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +16 ~/data/dev/NewWaveLauncher/package.json
badd +19 ~/data/dev/NewWaveLauncher/app/assets/js/authmanager.js
badd +40 ~/data/dev/NewWaveLauncher/app/landing.ejs
badd +4 ~/data/dev/NewWaveLauncher/app/overlay.ejs
badd +91 ~/data/dev/NewWaveLauncher/app/assets/js/scripts/login.js
badd +1 ~/data/dev/NewWaveLauncher/app/assets/js/isdev.js
badd +1 ~/data/dev/NewWaveLauncher/app/assets/js/ipcconstants.js
badd +1 ~/data/dev/NewWaveLauncher/app/assets/js/dropinmodutil.js
badd +1 ~/data/dev/NewWaveLauncher/app/assets/js/distromanager.js
badd +22 ~/data/dev/NewWaveLauncher/app/assets/js/discordwrapper.js
badd +1 ~/data/dev/NewWaveLauncher/app/assets/js/configmanager.js
badd +1 ~/data/dev/NewWaveLauncher/app/assets/js/processbuilder.js
badd +1 ~/data/dev/NewWaveLauncher/app/assets/js/serverstatus.js
badd +1 ~/data/dev/NewWaveLauncher/app/assets/lang/_custom.toml
badd +39 ~/data/dev/NewWaveLauncher/app/settings.ejs
badd +41 ~/data/dev/NewWaveLauncher/app/assets/js/preloader.js
badd +22 ~/data/dev/NewWaveLauncher/app/assets/js/langloader.js
badd +22 ~/data/dev/NewWaveLauncher/electron-builder.yml
badd +1 ~/data/dev/NewWaveLauncher/dev-app-update.yml
badd +1 ~/data/dev/NewWaveLauncher/pnpm-lock.yaml
badd +205 ~/data/dev/NewWaveLauncher/index.js
badd +1 ~/data/dev/NewWaveLauncher/app/assets/js/scripts/welcome.js
badd +1 ~/data/dev/NewWaveLauncher/app/assets/js/scripts/settings.js
badd +55 ~/data/dev/NewWaveLauncher/app/assets/js/scripts/overlay.js
badd +352 ~/data/dev/NewWaveLauncher/app/assets/js/scripts/uibinder.js
badd +25 ~/data/dev/NewWaveLauncher/app/frame.ejs
badd +22 ~/data/dev/NewWaveLauncher/app/app.ejs
badd +1 ~/data/dev/NewWaveLauncher/app/assets/js/scripts/loginOptions.js
badd +1 ~/data/dev/NewWaveLauncher/app/loginOptions.ejs
badd +1 ~/data/dev/NewWaveLauncher/app/welcome.ejs
argglobal
%argdel
$argadd NvimTree_1
edit ~/data/dev/NewWaveLauncher/app/assets/js/scripts/uibinder.js
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
balt ~/data/dev/NewWaveLauncher/app/assets/js/ipcconstants.js
let s:l = 374 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 374
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
