-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'One Dark (Gogh)'
config.font = wezterm.font_with_fallback({
	"Fira Code Nerd Font",
	"Noto Mono for Powerline",
	"Noto Sans",
	"DengXian",
})
config.window_background_opacity = 1

config.warn_about_missing_glyphs = false

-- config.window_padding = {
--   left = 0,
--   right = 0,
--   top = 0,
--   bottom = 0,
-- }
config.show_tab_index_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_frame = {
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	-- fallback fonts you may have used there.
	font = wezterm.font({ family = "SF Pro", weight = "Bold" }),

	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 10.0,

	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = "#363636",

	-- The overall background color of the tab bar when
	-- the window is not focused
	inactive_titlebar_bg = "#2D2D2D",
}

config.default_cursor_style = "BlinkingBar"

config.colors = {
	-- The default text color
	foreground = "silver",
	-- The default background color
	background = "#11121D",

	-- Overrides the cell background color when the current cell is occupied by the
	-- cursor and the cursor style is set to Block
	cursor_bg = "#5e99f1",
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = "black",
	-- Specifies the border color of the cursor when the cursor style is set to Block,
	-- or the color of the vertical or horizontal bar when the cursor style is set to
	-- Bar or Underline.
	cursor_border = "#5e99f1",

	-- the foreground color of selected text
	selection_fg = "#dddddd",
	-- the background color of selected text
	selection_bg = "#2f3142",

	-- The color of the scrollbar "thumb"; the portion that represents the current viewport
	scrollbar_thumb = "#222222",

	-- The color of the split lines between panes
	split = "#444444",

	ansi = {
		"black",
		"#ef596e",
		"#89ca79",
		"#e5c07b",
		"#5e99f1",
		"#de63ee",
		"#56e2ef",
		"silver",
	},
	brights = {
		"grey",
		"#ef596e",
		"#89ca79",
		"#e5c07b",
		"#5e99f1",
		"#de63ee",
		"#56e2ef",
		"white",
	},

	-- Arbitrary colors of the palette in the range from 16 to 255
	-- indexed = { [136] = "#af8700" },

	-- Since: 20220319-142410-0fcdea07
	-- When the IME, a dead key or a leader key are being processed and are effectively
	-- holding input pending the result of input composition, change the cursor
	-- to this color to give a visual cue about the compose state.
	-- compose_cursor = "orange",

	-- Colors for copy_mode and quick_select
	-- available since: 20220807-113146-c2fee766
	-- In copy_mode, the color of the active text is:
	-- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
	-- 2. selection_* otherwise
	-- copy_mode_active_highlight_bg = { Color = "#000000" },
	-- use `AnsiColor` to specify one of the ansi color palette values
	-- (index 0-15) using one of the names "Black", "Maroon", "Green",
	--  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
	-- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
	-- copy_mode_active_highlight_fg = { AnsiColor = "Black" },
	-- copy_mode_inactive_highlight_bg = { Color = "#52ad70" },
	-- copy_mode_inactive_highlight_fg = { AnsiColor = "White" },
	--
	-- quick_select_label_bg = { Color = "peru" },
	-- quick_select_label_fg = { Color = "#ffffff" },
	-- quick_select_match_bg = { AnsiColor = "Navy" },
	-- quick_select_match_fg = { Color = "#ffffff" },
}
-- config.use_fancy_tab_bar = true
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

-- and finally, return the configuration to wezterm
return config
