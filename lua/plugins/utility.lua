return {
	"rhysd/reply.vim",
	"tpope/vim-surround",
	"tpope/vim-sleuth",
	-- Useful plugin to show you pending keybinds.
	{ "folke/which-key.nvim", opts = {} },
	{
		-- Set lualine as statusline
		"nvim-lualine/lualine.nvim",
		-- See `:help lualine.txt`
		opts = {
			options = {
				icons_enabled = false,
				component_separators = "|",
				section_separators = "",
			},
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		version = "v2.20.8",
		opts = {
			char = "┊",
			show_end_of_line = true,
			show_current_context = true,
			space_char_blankline = " ",
			char_highlight_list = {
				"IndentBlanklineIndent1",
				"IndentBlanklineIndent2",
				"IndentBlanklineIndent3",
				"IndentBlanklineIndent4",
				"IndentBlanklineIndent5",
				"IndentBlanklineIndent6",
			},
		},
	},
	-- "gc" to comment visual regions/lines
	{
		"numToStr/Comment.nvim",
		opts = {
			toggler = {
				---Line-comment toggle keymap
				line = "<space>/",
				---Block-comment toggle keymap
				block = "<space>?",
			},
			---LHS of operator-pending mappings in NORMAL and VISUAL mode
			opleader = {
				---Line-comment keymap
				line = "<space>/",
				---Block-comment keymap
				block = "<space>?",
			},
			---LHS of extra mappings
			extra = {
				---Add comment on the line above
				above = "<space>/O",
				---Add comment on the line below
				below = "<space>/o",
				---Add comment at the end of line
				eol = "<space>/a",
			},
		},
	},
	{ "echasnovski/mini.nvim", version = "*" },
	{
		"brianhuster/autosave.nvim",
		event = "InsertEnter",
		opts = {}, -- Configuration here
	},
}
