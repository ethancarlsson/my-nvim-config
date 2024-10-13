local util = require("lspconfig.util")

return {
	default_config = {
		cmd = { "templ", "lsp", "-http=localhost:7474", "-log=/Users/ethancarlsson/templ.log" },
		filetypes = { "templ" },
		root_dir = util.root_pattern("go.mod", ".git"),
		settings = {},
	},
}
