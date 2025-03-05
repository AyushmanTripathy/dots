-- for lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- for emmet 
vim.g.user_emmet_leader_key = ','
vim.g.user_emmet_settings = {
  javascript = {
    extends = "jsx"
  }
}

require("lazy").setup({
  "mbbill/undotree",
  "nvim-treesitter/nvim-treesitter-context",
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true },
  "maxmellon/vim-jsx-pretty",
  "mg979/vim-visual-multi",
  "ibhagwan/fzf-lua",
  { "kylechui/nvim-surround", event = "VeryLazy" },
  "prettier/vim-prettier",
  "mattn/emmet-vim",
  { "nvim-tree/nvim-tree.lua", config = true },
  "nvim-lualine/lualine.nvim",

  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},

  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
})

require("treesitter-context").setup()

require("nvim-surround").setup({
  keymaps = {
    visual = 's'
  }
})

-- theming
vim.cmd.colorscheme("gruvbox")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

