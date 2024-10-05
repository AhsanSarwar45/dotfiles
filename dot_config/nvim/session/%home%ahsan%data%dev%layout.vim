let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/data/dev/layout
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +18 ~/data/dev/layout/.gitignore
badd +40 ~/data/dev/layout/src/lib/components/navbar/profile-dropdown-icons.svelte
badd +34 ~/data/dev/layout/src/lib/components/navbar/profile-dropdown.svelte
badd +1 ~/data/dev/layout/.storybook/main.ts
badd +1 ~/data/dev/layout/.storybook/preview.ts
badd +1 ~/data/dev/layout/src/stories/ActionDropdown.stories.ts
badd +1 ~/data/dev/layout/src/stories/brand-dropdown.stories.ts
badd +52 ~/data/dev/layout/src/stories/Configure.mdx
badd +1 ~/data/dev/layout/src/stories/sidebar-menu.stories.ts
badd +43 ~/data/dev/layout/src/lib/components/navbar/link-help.svelte
badd +5 ~/data/dev/layout/src/stories/link-help.stories.ts
badd +1 ~/data/dev/layout/src/stories/video-quote.stories.ts
badd +5 ~/data/dev/layout/src/stories/theme-trigger.stories.ts
badd +1 ~/data/dev/layout/src/stories/Onboarding.stories.ts
badd +1 ~/data/dev/layout/src/stories/sidebar.stories.ts
badd +23 ~/data/dev/layout/src/stories/profile-dropdown.stories.ts
badd +1 ~/data/dev/layout/src/stories/data/defaults.ts
argglobal
%argdel
$argadd .
edit ~/data/dev/layout/src/stories/profile-dropdown.stories.ts
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
balt ~/data/dev/layout/src/stories/link-help.stories.ts
let s:l = 23 - ((22 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 011|
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
