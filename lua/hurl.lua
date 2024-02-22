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

---@return string[]
local function explode(div,str)
    if (div=='') then return {} end
    local pos,arr = 0,{}
    for st,sp in function() return string.find(str,div,pos,true) end do
        table.insert(arr,string.sub(str,pos,st-1))
        pos = sp + 1
    end
    table.insert(arr,string.sub(str,pos))
    return arr
end


function ResetHurlFile(spec)
	local operation_name = vim.fn.expand("%:t:r")
	local handle = io.popen("openapi-to-hurl " .. spec .. " --output-to console -i " .. operation_name)

	if handle == nil then
		return
	end

	local result = handle:read("*a")

	local curr_buf = vim.api.nvim_get_current_buf()
	local line_count = vim.api.nvim_buf_line_count(curr_buf)

	vim.api.nvim_buf_set_lines(curr_buf, 0, line_count, false, explode("\n", result))
	handle:close()
end

vim.cmd([[ command! -nargs=1 HurlReset lua ResetHurlFile(<f-args>)]])
