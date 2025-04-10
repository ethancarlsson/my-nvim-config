return {
	{
		-- Adds git related signs to the gutter, as well as utilities
		-- for managing changes
		"lewis6991/gitsigns.nvim",
		opts = {
			-- See `:help gitsigns.txt`
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
			on_attach = function(bufnr)
				local gitsigns = require("gitsigns")
				vim.keymap.set("n", "<leader>gp", function()
					gitsigns.nav_hunk("prev")
				end, { buffer = bufnr, desc = "[G]o to [P]revious Hunk" })
				vim.keymap.set("n", "<leader>gn", function()
					gitsigns.nav_hunk("next")
				end, { buffer = bufnr, desc = "[G]o to [N]ext Hunk" })
				vim.keymap.set("n", "<leader>ph", gitsigns.preview_hunk, { buffer = bufnr, desc = "[P]review [H]unk" })
				vim.keymap.set("n", "<leader>gb", function()
					gitsigns.blame_line({ full = true })
				end, { buffer = bufnr, desc = "[G]it [B]lame" })
				vim.keymap.set("n", "<leader>gB", gitsigns.blame, { buffer = bufnr, desc = "[G]it [B]lame buffer" })

				vim.keymap.set("n", "<leader>gs", gitsigns.stage_hunk, { buffer = bufnr, desc = "[S]tage Hunk" })
				vim.keymap.set("v", "<leader>gs", function()
					gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, { buffer = bufnr, desc = "[S]tage Hunk" })
				vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, { buffer = bufnr, desc = "[R]eset Hunk" })

				vim.keymap.set("n", "<leader>gS", gitsigns.stage_buffer, { buffer = bufnr, desc = "[S]tage buffer" })
				vim.keymap.set("n", "<leader>gR", gitsigns.stage_buffer, { buffer = bufnr, desc = "[R]eset buffer" })

				vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, { buffer = bufnr, desc = "[P]review hunk" })
				vim.keymap.set(
					"n",
					"<leader>gi",
					gitsigns.preview_hunk,
					{ buffer = bufnr, desc = "Preview hunk [I]nline" }
				)

				vim.keymap.set("n", "<leader>gd", gitsigns.diffthis, { buffer = bufnr, desc = "[G]it [D]iff" })
				vim.keymap.set("n", "<leader>gD", function()
					gitsigns.diffthis("~1")
				end, { buffer = bufnr, desc = "[G]it [D]iff last commit" })
			end,
		},
	},
}
