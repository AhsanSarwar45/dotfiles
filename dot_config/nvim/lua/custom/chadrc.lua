---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  -- Pmenu = { bg = "white" },

  changed_themes = {
    onedark = {
      base_16 = {
        base0F = "#999999",
        -- bbase03 = "pink",
        base00 = "#0F0F17",
        base02 = "#212130",
        base05 = "#ffffff",
        base08 = "#EF596E",
        base09 = "#D19A66",
        base0A = "#E5C07B",
        base0B = "#89CA79",
        base0D = "#5e99f1",
        -- base0C = "#33DAE6",
        base0E = "#de63ee",
        -- base01 = "pink",

        -- base09
      },
      base_30 = {
        pmenu_bg = "#5e99f1",
        lightbg = "#161826",
        black2 = "#13131B",
        folder_bg = "#5e99f1",
        statusline_bg = "#13131B",
        one_bg2 = "#13131B",
        darker_black = "#13131B",
        one_bg3 = "#13131B",
        one_bg = "#161826",
        red = "#EF596E",
        yellow = "#E5C07B",
        orange = "#D19A66",
        cyan = "#56e2ef",
        purple = "#de63ee",
        green = "#89CA79",
        blue = "#5e99f1",
        black = "#0F0F17",
      },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
