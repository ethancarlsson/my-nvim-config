-- Configuration
vim.g.neoformat_try_node_exe = 1

-- Function override for when custom formatting is needed or wanted
return function(_)
	if vim.bo.filetype == "json" then
		local curr_pos = vim.api.nvim_win_get_cursor(vim.api.nvim_get_current_win())
		vim.cmd("%!jq '.'")
		vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), curr_pos)
		return
	end

	if vim.bo.filetype == "uiua" then
		local curr_pos = vim.api.nvim_win_get_cursor(vim.api.nvim_get_current_win())
		vim.cmd("%!uiua fmt --io")
		vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), curr_pos)
		return
	end

	vim.cmd("silent Neoformat")
end


