if status is-interactive
    # Commands to run in interactive sessions can go here

end

set -gx EDITOR nvim
set -gx VISUAL nvim

set -g theme_display_date no
set -g theme_nerd_fonts yes
set --export BUN_INSTALL "$HOME/.bun"
set --export JAVA_HOME "/usr/lib/jvm/java-17-openjdk/"
set --export CHROME_EXECUTABLE "/usr/bin/thorium-shell"
# set -g theme_color_scheme user

fish_add_path -g /opt/flutter/bin/
fish_add_path -g "$BUN_INSTALL/bin/"
fish_add_path -g "$JAVA_HOME/bin"

# bun
nvm use 21 -s

# pnpm
set -gx PNPM_HOME "/home/ahsan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
