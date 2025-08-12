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
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      highlight = { enable = true },
    },
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- optional
      "neovim/nvim-lspconfig",         -- optional
    }
  },

  "mbbill/undotree",
  "nvim-treesitter/nvim-treesitter-context",
  { "ellisonleao/gruvbox.nvim", priority = 1000,   config = true },
  "maxmellon/vim-jsx-pretty",
  "mg979/vim-visual-multi",
  "ibhagwan/fzf-lua",
  { "kylechui/nvim-surround",   event = "VeryLazy" },
  "prettier/vim-prettier",
  "mattn/emmet-vim",
  { "nvim-tree/nvim-tree.lua",          config = true },
  "nvim-lualine/lualine.nvim",

  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },

  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
})

require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "html", "javascript", "svelte", "typescript" },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require("fzf-lua").setup({
  keymaps = {
    ["<S-down>"] = "preview-down",
    ["<S-up>"]   = "preview-up",
  },
  git = {
    commits = {
    },
    bcommits = {
      prompt  = 'BCommits❯ ',
      -- default preview shows a git diff vs the previous commit
      -- if you prefer to see the entire commit you can use:
      --   git show --color {1} --rotate-to={file}
      --   {1}    : commit SHA (fzf field index expression)
      --   {file} : filepath placement within the commands
      cmd     = [[git log --color --pretty=format:"%C(yellow)%h%Creset ]]
          .. [[%Cgreen(%><(12)%cr%><|(12))%Creset %s %C(blue)<%an>%Creset" {file}]],
      preview = "git show --color {1} -- {file}",
    }
  }
})

require("treesitter-context").setup({
  max_lines = 8
})

require("nvim-surround").setup({
  keymaps = {
    visual = 's'
  }
})

-- theming
vim.cmd.colorscheme("gruvbox")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
