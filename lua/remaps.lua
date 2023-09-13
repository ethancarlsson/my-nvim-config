vim.keymap.set('n', '-', ':Explore<CR>')
-- Save on escape
vim.keymap.set({ 'n', 'i' }, '<ESC>', '<ESC>:w<CR>')

-- stay in visual mode when indenting
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Remap for dealing with word wrap
vim.keymap.set(
    'n',
    'k',
    "v:count == 0 ? 'gk' : 'k'",
    { expr = true, silent = true }
)
vim.keymap.set(
    'n',
    'j',
    "v:count == 0 ? 'gj' : 'j'",
    { expr = true, silent = true }
)

-- centre
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')



-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {
    desc = 'Go to previous diagnostic message'
})

vim.keymap.set('n', ']d',
    vim.diagnostic.goto_next, {
    desc = 'Go to next diagnostic message'
})
vim.keymap.set(
    'n',
    '<leader>m',
    vim.diagnostic.open_float,
    { desc = 'Open floating diagnostic message' }
)
vim.keymap.set(
    'n',
    '<leader>q',
    vim.diagnostic.setloclist,
    { desc = 'Open diagnostics list' }
)


-- Formatting
vim.keymap.set({ 'n', 'v' }, '<leader>l', vim.lsp.buf.format)

-- Source current file
vim.keymap.set('n', '<leader>ss', '<cmd>source %<CR>')
