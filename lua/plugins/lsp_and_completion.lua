-- [nfnl] fnl/plugins/lsp_and_completion.fnl
local function _1_(_, opts)
  opts.sources = (opts.sources or {})
  return table.insert(opts.sources, {group_index = 0, name = "lazydev"})
end
return {{"neovim/nvim-lspconfig", dependencies = {{"williamboman/mason.nvim", config = true}, "williamboman/mason-lspconfig.nvim", {"j-hui/fidget.nvim", opts = {}, tag = "legacy"}, "folke/neodev.nvim"}}, {"hrsh7th/nvim-cmp", dependencies = {{"L3MON4D3/LuaSnip", version = "v2.*"}, "saadparwaiz1/cmp_luasnip", "hrsh7th/cmp-nvim-lsp", "rafamadriz/friendly-snippets"}, opts = _1_}, {"folke/lazydev.nvim", ft = "lua", opts = {library = {{path = "${3rd}/luv/library", words = {"vim%.uv"}}}}}}
