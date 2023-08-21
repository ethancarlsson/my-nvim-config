vim.keymap.set('n', '<leader>hy', '<cmd>HurlYank<CR>',
    { desc = 'Run hurl file in buffer and yank contents to the register "*"' })
vim.keymap.set('n', '<leader>hr', '<cmd>HurlRun<CR>',
    { desc = 'Run hurl file in buffer and paste it\'s content into a split window' })
vim.keymap.set('n', '<leader>hj', '<cmd>HurlRunJson<CR>',
    { desc = 'Run hurl file in buffer and paste it\'s content into a split window as json' })

