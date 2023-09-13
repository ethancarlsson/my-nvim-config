-- This is a copy of sensible.vim in lua
-- Just doing it to get me started

-- general options
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- window options
vim.wo.colorcolumn = '80'
vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.signcolumn = 'yes'

-- options
vim.o.clipboard = 'unnamedplus'
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.o.termguicolors = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
vim.o.splitright = true

vim.o.wrap = false
