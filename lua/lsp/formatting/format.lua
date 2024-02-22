return function(_)
	if vim.bo.filetype == "json" then
		vim.cmd("%!jq '.'")
		return
	end

	vim.lsp.buf.format()
	vim.cmd("silent Neoformat")
end
