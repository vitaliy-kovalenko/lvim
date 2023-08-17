-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.relativenumber = true
vim.opt.colorcolumn = "100"
vim.opt.list = true
vim.opt.listchars = { space = "·", tab = " -" }
vim.opt.tabstop = 2

lvim.transparent_window = true
lvim.builtin.lualine = {
  active = true,
  options = {
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
}

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  { command = "eslint", filetypes = { "typescript", "typescriptreact", "vue" }}
})

lvim.plugins = {
  "mbbill/undotree"
}

lvim.builtin.bufferline.active = false
lvim.keys.normal_mode["<leader>bb"] = ":bnext<CR>"
lvim.keys.normal_mode["<leader>bn"] = ":bprev<CR>"

lvim.keys.normal_mode["<leader>pv"] = ":Ex<CR>"
lvim.keys.normal_mode["<leader>u"] = ":UndotreeToggle<CR>"
lvim.keys.normal_mode["<leader>t"] = ":ToggleTerm<CR>"
lvim.keys.normal_mode["<leader>nh"] = ":nohlsearch<CR>"

function Paint_rule()
  vim.cmd([[highlight ColorColumn guibg=#2C3251]])
end

lvim.keys.normal_mode["<leader>pr"] = ":lua Paint_rule()<CR>"
