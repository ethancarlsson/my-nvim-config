vim.api.nvim_create_user_command(
	"Note",
	function (_) vim.cmd('Neorg workspace notes') end,
	{ desc = "Write a note in the notes workspace" }
)
