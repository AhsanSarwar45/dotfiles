let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/chesseru
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/data/dev/chesseru
badd +46 ~/data/dev/chesseru/src/routes/+page.svelte
badd +1 ~/data/dev/chesseru/src/routes/+layout.svelte
badd +47 ~/data/dev/chesseru/src/routes/components/PlayRandomModal.svelte
badd +11 ~/data/dev/chesseru/src/routes/game/\[id]/components/RoundResultModal.svelte
badd +43 ~/data/dev/chesseru/src/routes/components/PlayFriendModal.svelte
badd +19 src/lib/components/Navbar.svelte
badd +79 src/server/modules/game.ts
badd +863 ~/data/dev/chesseru/src/routes/game/\[id]/+page.svelte
badd +1 ~/data/dev/chesseru/src/routes/game/\[id]/components/PlayerInfoCard.svelte
badd +7 ~/data/dev/chesseru/src/routes/game/\[id]/components/Timer.svelte
badd +26 ~/data/dev/chesseru/src/routes/game/\[id]/components/MatchResultModal.svelte
badd +20 ~/data/dev/chesseru/tailwind.config.cjs
argglobal
%argdel
$argadd NvimTree_1
edit src/server/modules/game.ts
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
balt ~/data/dev/chesseru/src/routes/game/\[id]/components/MatchResultModal.svelte
let s:l = 79 - ((22 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 79
normal! 026|
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
