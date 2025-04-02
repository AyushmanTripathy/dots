-- key bindings
local function map(mode, key, binding)
  vim.keymap.set(mode, key, binding, { noremap = true })
end

local function normalmap(key, binding) map("n", key, binding) end
normalmap(";", ":")

-- Tab bindings
normalmap("<Tab>e", ":NvimTreeToggle <CR>")
normalmap("<Tab>u", ":UndotreeToggle <CR>")
normalmap("<Tab>i", "gg=G")
normalmap("<Tab>c", ":%y+<cr>")
normalmap("<Tab>s", ":vsplit <cr>")
normalmap("<Tab>h", ":set hlsearch!<cr>")
normalmap("<Tab>p", ":PrettierAsync <CR>")

-- FzfLua
normalmap("<Tab>f", ":FzfLua files previewer=false<cr>")
normalmap("<Tab>c", ":FzfLua git_bcommits winopts.fullscreen=true winopts.border=none winopts.preview.border=none winopts.preview.vertical='down:85%' winopts.preview.layout=vertical <cr>")
normalmap("<Tab>o", ":FzfLua builtin <cr>")
normalmap("<Tab>w", ":FzfLua buffers <cr>")
normalmap("<Tab>g", ":FzfLua live_grep<cr>")

vim.keymap.set('n', 'gf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = { buffer = event.buf }

    normalmap("gd", ":FzfLua lsp_definitions <cr>")
    normalmap("gr", ":FzfLua lsp_references <cr>")
    normalmap("<Tab>a", ":FzfLua lsp_code_actions <cr>")
    normalmap("<Tab>l", ":FzfLua diagnostics_document <cr>")
    vim.keymap.set('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<Tab>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  end,
})

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

-- move block in visual mode
visualmap("j", ":m '>+1<CR>gv=gv")
visualmap("k", ":m '<-2<CR>gv=gv")

local function insertmap(key, binding) map("i", key, binding) end
insertmap("<leader><cr>", "<C-o>o")
insertmap("<leader>f", "<C-x><C-f>")

local keys_shifted = {
  { "`", "~" }, { "1", "!" }, { "2", "@" }, { "3", "#" }, { '4', '$' }, { '5', '%' },
  { '6', '^' }, { '7', '&' }, { '8', '*' }, { '0', ')' }, { '-', '_' }, { '=', '+' }, { ';', ':' }, { "'", '"' },
  { ',', '<' }, { '.', '>' }, { '/', '?' }, { "]", "}" }, { '9', '()<Left>' }, { '[', '{}<Left>' }
}

for i, v in pairs(keys_shifted) do
  vim.keymap.set({ "n", "i", "c", "v" }, "<leader>" .. v[1], v[2], { noremap = true })
end
