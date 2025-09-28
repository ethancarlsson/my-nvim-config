-- [nfnl] fnl/plugins/conjure.fnl
local function _1_()
end
local function _2_()
  local cmp = require("cmp")
  local config = cmp.get_config()
  table.insert(config.sources, {name = "conjure"})
  return cmp.setup(config)
end
return {{"Olical/conjure", ft = {"fennel"}, lazy = true, init = _1_, dependencies = {"PaterJason/cmp-conjure"}}, {"PaterJason/cmp-conjure", config = _2_, lazy = true}}
