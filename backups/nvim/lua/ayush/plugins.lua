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

  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',

  -- vsnip users
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
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

