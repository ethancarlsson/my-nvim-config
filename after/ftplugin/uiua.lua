vim.lsp.start({ name = "uiua_lsp", cmd = { "uiua", "lsp" } })
require("lsp.on_attach")(nil, vim.fn.bufnr())

vim.bo.commentstring = "#%s"

function Uiua()
	local command = "uiua run " .. vim.fn.expand("%") .. " --no-format --no-color"
	local f = assert(io.popen(command))

	local res = {}
	for line in f:lines() do
		table.insert(res, line)
	end
	print(table.concat(res, "\n"))
	f:close()
end

vim.keymap.set("n", "<leader>w<cr>", ":lua Uiua()<cr>", { buffer = true })
