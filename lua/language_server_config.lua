-- [nfnl] fnl/language_server_config.fnl
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local mason_lspconfig = require("mason-lspconfig")
local servers = require("lsp/language_servers")
local on_attach = require("lsp/on_attach")
local caps = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
vim.lsp.config("*", {capabilities = caps})
vim.api.nvim_create_autocmd("LspAttach", {callback = on_attach})
mason_lspconfig.setup({automatic_enable = true, ensure_installed = servers})
vim.lsp.config.fennel_ls = {on_attach = on_attach}
vim.lsp.config.ccls = {init_options = {cache = {directory = ".ccls-cache"}}}
vim.lsp.config.templ = {}
vim.lsp.config.bqnlsp = {}
vim.lsp.config.ts_ls = {settings = {typescript = {tsserver = {useSyntaxServer = false}, inlayHints = {includeInlayParameterNameHints = "all", includeInlayParameterNameHintsWhenArgumentMatchesName = true, includeInlayFunctionParameterTypeHints = true, includeInlayVariableTypeHints = true, includeInlayVariableTypeHintsWhenTypeMatchesName = true, includeInlayPropertyDeclarationTypeHints = true, includeInlayFunctionLikeReturnTypeHints = true, includeInlayEnumMemberValueHints = true}}}}
local cmp = require("cmp")
local luasnip = require("luasnip")
local luasnip_loader = require("luasnip.loaders.from_vscode")
luasnip_loader.lazy_load()
luasnip.config.setup({})
local function _1_(args)
  return luasnip.lsp_expand(args.body)
end
local function _2_(fallback)
  if cmp.visible() then
    return cmp.select_next_item()
  else
    return fallback()
  end
end
local function _4_(fallback)
  if cmp.visible() then
    return cmp.select_prev_item()
  else
    return fallback()
  end
end
return cmp.setup({snippet = {expand = _1_}, mapping = cmp.mapping.preset.insert({["<C-n>"] = cmp.mapping.select_next_item(), ["<C-p>"] = cmp.mapping.select_prev_item(), ["<C-u>"] = cmp.mapping.scroll_docs(-4), ["<C-d>"] = cmp.mapping.scroll_docs(4), ["<C-Space>"] = cmp.mapping.complete({}), ["<CR>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = true}), ["<Tab>"] = cmp.mapping(_2_, {"i", "s"}), ["<S-Tab>"] = cmp.mapping(_4_, {"i", "s"})}), sources = {{name = "nvim_lsp"}, {name = "luasnip"}, {name = "nvim_hurl"}}})
