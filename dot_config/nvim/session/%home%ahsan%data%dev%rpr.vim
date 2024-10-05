let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/rpr
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +9 ~/data/dev/rpr/package.json
badd +1 ~/data/dev/rpr/storage/app/.gitignore
badd +40 ~/data/dev/rpr/.env.example
badd +45 ~/data/dev/rpr/.env
badd +1 ~/data/dev/rpr/storage/logs/laravel.log
badd +1 ~/data/dev/rpr/storage/logs/.gitignore
badd +1 ~/data/dev/rpr/composer.lock
badd +30 ~/data/dev/rpr/composer.json
badd +1 ~/data/dev/rpr/public/index.php
badd +1 ~/data/dev/rpr/vite.config.js
badd +1 ~/data/dev/rpr/pnpm-lock.yaml
badd +1 ~/data/dev/rpr/artisan
badd +1 ~/data/dev/rpr/phpunit.xml
argglobal
%argdel
$argadd .
edit ~/data/dev/rpr/vite.config.js
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
balt ~/data/dev/rpr/phpunit.xml
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
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
