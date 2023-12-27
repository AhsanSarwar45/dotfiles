if status is-interactive
    # Commands to run in interactive sessions can go here

end

set -gx EDITOR nvim
set -gx VISUAL nvim

set -g theme_display_date no
set -g theme_nerd_fonts yes


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
