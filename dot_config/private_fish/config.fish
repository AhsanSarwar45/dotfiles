if status is-interactive
    # Commands to run in interactive sessions can go here

end

set -gx EDITOR nvim
set -gx VISUAL nvim

set -g theme_display_date no
set -g theme_nerd_fonts yes
set --export BUN_INSTALL "$HOME/.bun"
# set -g theme_color_scheme user

fish_add_path -g /opt/flutter/bin/
fish_add_path -g ~/.bun/bin/
# bun
nvm use 21 -s
