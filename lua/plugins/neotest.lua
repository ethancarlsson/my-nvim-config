-- [nfnl] fnl/plugins/neotest.fnl
local function _1_()
  local function _2_(path)
    return vim.fn.getcwd()
  end
  return require("neotest").setup({log_level = 0, adapters = {require("neotest-golang"), require("neotest-jest")({cwd = _2_, env = {CI = true}, jestCommand = "npm test --", jestConfigFile = "custom.jest.config.ts"})}})
end
return {{"nvim-neotest/neotest", config = _1_, dependencies = {"nvim-neotest/nvim-nio", "nvim-lua/plenary.nvim", "antoinemadec/FixCursorHold.nvim", "nvim-treesitter/nvim-treesitter", "nvim-neotest/neotest-jest", "ethancarlsson/neotest-golang"}}}
