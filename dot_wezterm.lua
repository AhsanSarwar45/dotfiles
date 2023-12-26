-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices



-- For example, changing the color scheme:
config.color_scheme = 'Afterglow (Gogh)'
config.font = wezterm.font_with_fallback {
  'Fira Code Nerd Font',
  'Noto Mono for Powerline',
  'Noto Sans',
  'DengXian',
}
config.window_background_opacity = 1

config.warn_about_missing_glyphs = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.show_tab_index_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font { family = 'SF Pro', weight = 'Bold' },

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 10.0,

  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#363636',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#2D2D2D',
}
-- config.use_fancy_tab_bar = true
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

-- and finally, return the configuration to wezterm
return config
