require("ayush.mappings")
require("ayush.plugins")

local g = vim.g
local o = vim.o

g.mapleader = "\\"
g.netrw_banner = 0
g.loaded_netrwPlugin = 1
g.loaded_netrw = 1

o.termguicolors = true
o.background = "dark"
o.number = true
o.expandtab = true

o.ignorecase = true
o.smartcase = true
o.wrap = true
o.tabstop = 2
o.shiftwidth = 0
o.softtabstop = -1
o.smoothscroll = true
o.jumpoptions = "view"
o.scrolloff = 18

vim.cmd.set("nohlsearch")
