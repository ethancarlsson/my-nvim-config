-- [nfnl] fnl/defaults.fnl
vim.g.mapleader = " "
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.o.autowrite = true
vim.filetype.add({extension = {ua = "uiua"}})
vim.filetype.add({extension = {templ = "templ"}})
vim.wo.colorcolumn = "80"
vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.signcolumn = "yes"
vim.o.clipboard = "unnamedplus"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = "menuone,noselect"
vim.o.termguicolors = true
vim.o.completeopt = "menuone,noselect"
vim.o.splitright = true
vim.o.wrap = false
local function _1_()
  return vim.highlight.on_yank({higroup = "IncSearch", timeout = 500})
end
return vim.api.nvim_create_autocmd("TextYankPost", {group = vim.api.nvim_create_augroup("highlight_yank", {}), desc = "Hightlight selection on yank", pattern = "*", callback = _1_})
