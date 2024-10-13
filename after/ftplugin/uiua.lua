local popup = require("plenary.popup")

vim.lsp.start({ name = "uiua_lsp", cmd = { "uiua", "lsp" } })
require("lsp.on_attach")(nil, vim.fn.bufnr())

vim.bo.commentstring = "#%s"

local Uiua_Win_id
local function createUiuaResWindo(res, cb)
	local borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

	Uiua_Win_id = popup.create(res, {
		title = "Uiua",
		highlight = "uiua",
		columns = 3,
		height = 300,
		width = 30,
		pos = "topleft",
		borderchars = borderchars,
		callback = cb,
	})

	local bufnr = vim.api.nvim_win_get_buf(Uiua_Win_id)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>lua CloseUiuaMenu()<CR>", { silent = false })
	vim.api.nvim_buf_set_keymap(bufnr, "n", "j", "<cmd>lua CloseUiuaMenu()<CR>", { silent = false })
	vim.api.nvim_buf_set_keymap(bufnr, "n", "k", "<cmd>lua CloseUiuaMenu()<CR>", { silent = false })
end

function Uiua(cb)
	local command = "uiua run " .. vim.fn.expand("%") .. " --no-format --no-color"
	local f = assert(io.popen(command))

	local res = {}
	for line in f:lines() do
		table.insert(res, line)
	end
	createUiuaResWindo(res, cb)
	f:close()
end

function CloseUiuaMenu()
	if Uiua_Win_id then
		vim.api.nvim_win_close(Uiua_Win_id, true)
	end
end

vim.cmd([[command! Uiua lua Uiua()]])
vim.keymap.set("n", "<leader>w<cr>", Uiua, { buffer = true })
