-- [nfnl] fnl/plugins/fuzzy_finding.fnl
local function _1_()
  return (vim.fn.executable("make") == 1)
end
return {{"nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = {"nvim-lua/plenary.nvim", {"nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = _1_}}}}
