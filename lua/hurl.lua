vim.keymap.set(
	"n",
	"<leader>hy",
	"<cmd>HurlYank<CR>",
	{ desc = 'Run hurl file in buffer and yank contents to the register "*"' }
)
vim.keymap.set(
	"n",
	"<leader>hr",
	"<cmd>HurlRun<CR>",
	{ desc = "Run hurl file in buffer and paste it's content into a split window" }
)
vim.keymap.set(
	"n",
	"<leader>hv",
	"<cmd>HurlRunVerbose<CR>",
	{ desc = "Run hurl file and get additional meta info along with it" }
)
vim.keymap.set(
	"n",
	"<leader>hh",
	"<cmd>CurlGoFromCursor<CR>",
	{ desc = "Run a curl request from the url under the cursor" }
)
vim.keymap.set(
	"n",
	"<leader>hc",
	"<cmd>Hurlcv<CR>",
	{ desc = "Clear all --variable options from your next Hurl command" }
)

vim.keymap.set(
	"v",
	"<leader>hy",
	":'<,'>HurlYank<CR>",
	{ desc = 'Run hurl file in buffer and yank contents to the register "*"' }
)
vim.keymap.set(
	"v",
	"<leader>hr",
	":'<,'>HurlRun<CR>",
	{ desc = "Run hurl file in buffer and paste it's content into a split window" }
)
vim.keymap.set(
	"v",
	"<leader>hv",
	":'<,'>HurlRunVerbose<CR>",
	{ desc = "Run hurl file and get additional meta info along with it" }
)


---@param spec string
---@param ... string
function ResetHurlFile(spec, ...)
	vim.cmd("%!openapi-to-hurl " .. spec .. " -i " .. vim.fn.expand("%:t:r") .. " " .. table.concat({ ... }, " "))
end

vim.cmd([[ command! -nargs=+ HurlReset lua ResetHurlFile(<f-args>)]])
