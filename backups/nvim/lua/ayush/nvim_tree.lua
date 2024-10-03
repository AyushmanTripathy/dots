local gheight = vim.api.nvim_list_uis()[1].height
local gwidth = vim.api.nvim_list_uis()[1].width
local height = 30
local width = 50

local tree_api = require("nvim-tree.api")
vim.keymap.set("n", "<ESC>", tree_api.tree.close)
require("nvim-tree").setup({
  diagnostics = {
    enable = true,
  },
  view = {
    float = {
      enable = true,
      open_win_config = {
        height = height,
        width = width,
        row = (gheight - height) * 0.5,
        col = (gwidth - width) * 0.8,
      }
    }
  },
  renderer = {
    add_trailing = true,
    root_folder_label = false,
    icons = {
      git_placement = "signcolumn",
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        modified = false,
        diagnostics = true,
        git = true,
        bookmarks = false,
      },
      glyphs = {
        git = {
          untracked = "✗",
        }
      },
    }
  }
})
