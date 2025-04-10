vim.api.nvim_create_user_command(
	"No",
	function (_) vim.cmd('Neorg workspace notes') end,
	{ desc = "Write a note in the notes workspace" }
)

vim.api.nvim_create_user_command(
	"Jo",
	function (_) vim.cmd('Neorg journal today') end,
	{ desc = "Write a journal entry" }
)
