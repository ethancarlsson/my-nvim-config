vim.keymap.set('n', '<leader>hy', '<cmd>HurlYank<CR>',
    { desc = 'Run hurl file in buffer and yank contents to the register "*"' })
vim.keymap.set('n', '<leader>hr', '<cmd>HurlRun<CR>',
    { desc = 'Run hurl file in buffer and paste it\'s content into a split window' })
vim.keymap.set('n', '<leader>hv', '<cmd>HurlRunVerbose<CR>',
    { desc = 'Run hurl file and get additional meta info along with it' })
vim.keymap.set('n', '<leader>hh', '<cmd>CurlGoFromCursor<CR>',
    { desc = 'Run a curl request from the url under the cursor' })
vim.keymap.set('n', '<leader>hc', '<cmd>Hurlcv<CR>',
    { desc = 'Clear all --variable options from your next Hurl command' })
