-- key bindings
local function map(mode, key, binding)
        vim.keymap.set(mode, key, binding, { silent = true })
end

local function normalmap(key, binding) map("n", key, binding) end
normalmap(";", ":")

-- Tab bindings
normalmap("<Tab>e", ":NvimTreeToggle <CR>")
normalmap("<Tab>p", ":PrettierAsync <CR>")
normalmap("<Tab>i", "gg=G")
normalmap("<Tab>c", ":%y+<cr>")
normalmap("<Tab>s", ":vsplit <cr>")
normalmap("<Tab>f", ":FzfLua files previewer=false<cr>")
normalmap("<Tab>o", ":FzfLua builtin <cr>")
normalmap("<Tab>g", ":FzfLua grep<cr>")
normalmap("gd", ":FzfLua lsp_definitions <cr>")
normalmap("gr", ":FzfLua lsp_references <cr>")
normalmap("<Tab>h", ":set hlsearch!<cr>")

normalmap("<Tab><left>", "<C-W>h")
normalmap("<Tab><down>", "<C-W>j")
normalmap("<Tab><up>", "<C-W>k")
normalmap("<Tab><right>", "<C-W>l")

normalmap("<Tab>[", ":bprev<cr>")
normalmap("<Tab>]", ":bnext<cr>")

local function visualmap(key, binding) map("v", key, binding) end
visualmap("d", '"+d')
visualmap("y", '"+y')
visualmap("p", '"+p')

local function insertmap(key, binding) map("i", key, binding) end
insertmap("<leader><cr>", "<C-o>o")
insertmap("[", "[]<Left>")

local keys_shifted = {
  {"`", "~"}, {"1", "!"}, {"2", "@"}, {"3", "#"}, {'4', '$'}, {'5', '%'}, 
  {'6','^'}, {'7', '&'}, {'8', '*'}, {'0', ')'}, {'-', '_'}, {'=', '+'}, {';', ':'}, {"'", '"'}, 
  {',', '<'}, {'.', '>'}, {'/', '?'}, {"]", "}"}, {'9', '()<Left>'}, {'[', '{}<Left>'}
}

for i, v in pairs(keys_shifted) do
  vim.keymap.set({ "n", "i", "c", "v" } , "<leader>" .. v[1], v[2], { noremap = true, silent = true })
end
