-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.relativenumber = true
vim.opt.colorcolumn = "100"
vim.opt.list = true
vim.opt.listchars = { space = "·", tab = "--" }

--lvim.colorscheme = "projekt0n/github-nvim-theme"

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  { command = "eslint", filetypes = { "typescript", "typescriptreact", "vue" }}
})

lvim.plugins = {
  "mbbill/undotree"
}

lvim.keys.normal_mode["<leader>pv"] = ":Ex<CR>"
lvim.keys.normal_mode["<leader>u"] = ":UndotreeToggle<CR>"
lvim.keys.normal_mode["<leader>t"] = ":ToggleTerm<CR>"

