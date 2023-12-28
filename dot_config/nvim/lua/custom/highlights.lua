-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

M.ui = {
  changed_themes = {
    onedark = {
      base_16 = {
        base0F = "pink",
      },
      base_30 = {
        red = "#mycol",
        white = "#mycol",
      },
    },
  },
}

return M
