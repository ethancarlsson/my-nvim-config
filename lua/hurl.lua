vim.keymap.set('n', '<leader>hy', '<cmd>HurlYank<CR>',
    { desc = 'Run hurl file in buffer and yank contents to the register "*"' })
vim.keymap.set('n', '<leader>hr', '<cmd>HurlRun<CR>',
    { desc = 'Run hurl file in buffer and paste it\'s content into a split window' })
vim.keymap.set('n', '<leader>hf', '<cmd>HurlRunFull<CR>',
    { desc = 'Run hurl file with full output even on large files' })
vim.keymap.set('n', '<leader>hj', '<cmd>HurlRunFull json<CR>',
    { desc = 'Run hurl file with and set the scratch file to json' })
vim.keymap.set('n', '<leader>hv', '<cmd>HurlRunVerbose<CR>',
    { desc = 'Run hurl file and get additional meta info along with it' })
