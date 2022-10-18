-- fzf
vim.api.nvim_set_keymap('n', "<C-p>", ":FZF<CR>", { noremap = true })
vim.api.nvim_set_keymap('v', "<C-p>", ":FZF<CR>", { noremap = true })

vim.api.nvim_set_keymap('n', "<C-e>", ":History<CR>", { noremap = true })
vim.api.nvim_set_keymap('v', "<C-e>", ":History<CR>", { noremap = true })

vim.api.nvim_set_keymap('n', "<Leader>f", ":Rg<CR>", { noremap = true })
vim.api.nvim_set_keymap('v', "<Leader>f", ":Rg<CR>", { noremap = true })

vim.cmd('let $FZF_DEFAULT_COMMAND="rg --files --hidden"')
