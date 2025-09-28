-- [nfnl] fnl/plugins/notes.fnl
local function _1_()
  return require("neorg").setup({load = {["core.concealer"] = {}, ["core.defaults"] = {}, ["core.dirman"] = {config = {workspaces = {notes = "~/notes"}}}, ["core.export"] = {}}})
end
return {{"nvim-neorg/neorg", build = ":Neorg sync-parsers", config = _1_, dependencies = {"nvim-lua/plenary.nvim"}}}
