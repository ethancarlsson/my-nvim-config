-- [nfnl] fnl/plugins/sql.fnl
local function _1_()
  vim.g.db_ui_use_nerd_fonts = 1
  return nil
end
return {"kristijanhusak/vim-dadbod-ui", cmd = {"DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer"}, dependencies = {{"tpope/vim-dadbod", lazy = true}, {"kristijanhusak/vim-dadbod-completion", ft = {"sql", "mysql", "plsql"}, lazy = true}}, init = _1_}
