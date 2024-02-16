---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [">"] = { "V>gv", "Indent" },
    -- ["<"] = { "V<gv", "Unindent" },
    [";"] = { ":", "Enter command mode", opts = { nowait = true } },
    ["<A-k>"] = { "ddkP", "Move line up" },
    ["<A-j>"] = { "ddp", "Move line down" }

  },
  v = {
    [">"] = { ">gv", "indent" },
    ["<"] = { "<gv", "indent" },

  },
}

M.session = {
  n = {
    ["<leader>S"] = { '<cmd> lua require("persistence").load() <CR>', "Restore session" },
  },
}

M.spectre = {
  n = {
    ["<leader>F"] = { '<cmd> lua require("spectre").toggle() <CR>', "Toggle spectre" },
    ["<leader>fc"] = {
      '<cmd> lua require("spectre").open_visual({select_word=true}) <CR>',
      "Find current word in all files",
    },
  },
  v = {
    ["<leader>fc"] = { '<esc><cmd>lua require("spectre").open_visual()<CR>', "Find current word in all files" },
  },
}

M.lazygit = {
  n = {
    ["<leader>gg"] = { '<cmd> LazyGit <CR>', "Open lazygit" },
  },
}

-- more keybinds!

return M
