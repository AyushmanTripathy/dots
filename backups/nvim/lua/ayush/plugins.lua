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
    main = 'nvim-treesitter.config',
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
  { 'nvim-mini/mini.nvim', version = '*' },
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

require('nvim-treesitter.config').setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "html", "javascript", "svelte", "typescript" },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  -- sync_install = false,
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
  grep = {
    resume = true,
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

require('mini.surround').setup({
  -- Add custom surroundings to be used on top of builtin ones. For more
  -- information with examples, see `:h MiniSurround.config`.
  custom_surroundings = nil,

  -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
  highlight_duration = 500,

  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    add = 's', -- Add surrounding in Normal and Visual modes
    delete = 'ds', -- Delete surrounding
    find = 'cf', -- Find surrounding (to the right)
    find_left = 'sF', -- Find surrounding (to the left)
    highlight = 'sh', -- Highlight surrounding
    replace = 'cs', -- Replace surrounding

    suffix_last = 'l', -- Suffix to search with "prev" method
    suffix_next = 'n', -- Suffix to search with "next" method
  },

  -- Number of lines within which surrounding is searched
  n_lines = 20,

  -- Whether to respect selection type:
  -- - Place surroundings on separate lines in linewise mode.
  -- - Place surroundings on each line in blockwise mode.
  respect_selection_type = false,

  -- How to search for surrounding (first inside current line, then inside
  -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
  -- 'cover_or_nearest', 'next', 'prev', 'nearest'. For more details,
  -- see `:h MiniSurround.config`.
  search_method = 'cover',

  -- Whether to disable showing non-error feedback
  -- This also affects (purely informational) helper messages shown after
  -- idle time if user input is required.
  silent = false,
})

require("treesitter-context").setup({
  max_lines = 8
})

-- theming
vim.cmd.colorscheme("gruvbox")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
