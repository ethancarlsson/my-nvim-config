return function(_)
	vim.lsp.buf.format()
	vim.cmd("silent Neoformat")
end
