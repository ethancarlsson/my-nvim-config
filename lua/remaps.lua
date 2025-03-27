vim.keymap.set("n", "-", ":Explore<CR>")
-- Save
vim.keymap.set({ "n" }, " w", "<ESC>:w<CR>")

-- stay in visual mode when indenting
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- centre
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {
	desc = "Go to previous diagnostic message",
})

vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {
	desc = "Go to next diagnostic message",
})
vim.keymap.set("n", "<leader>m", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Formatting
vim.keymap.set({ "n", "v" }, "<leader>l", "<cmd>Format<CR>")

-- Source current file
vim.keymap.set("n", "<leader>ss", "<cmd>source %<CR>")

-- neotest

vim.keymap.set(
	"n",
	"<leader>tr",
	"<cmd>lua require('neotest').run.run_last()<CR>",
	{ desc = "Run last neotest command again" }
)

vim.keymap.set("n", "<leader>tt", "<cmd>lua require('neotest').run.run()<CR>", { desc = "Run closest test" })

vim.keymap.set(
	"n",
	"<leader>tf",
	"<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>",
	{ desc = "Run closest test" }
)

vim.keymap.set(
	"n",
	"<leader>to",
	'<cmd>lua require("neotest").output.open({ enter = false, last_run = true})<CR>',
	{ desc = "View output of previous run of test file" }
)

vim.keymap.set(
	"n",
	"<leader>ti",
	'<cmd>lua require("neotest").output.open({ enter = true })<CR>',
	{ desc = "View output of previous run of test file" }
)
