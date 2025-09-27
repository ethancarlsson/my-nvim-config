-- [nfnl] fnl/floatterm.fnl
local fterm = require("FTerm")
local function _1_()
  return fterm:toggle()
end
vim.keymap.set("n", "\\\\", _1_)
local lazy_git = fterm:new({ft = "lazy_git", cmd = "lazygit"})
local function _2_()
  return lazy_git:toggle()
end
vim.keymap.set("n", "\\g", _2_)
local function _3_()
  lazy_git:close()
  return fterm:close()
end
return vim.keymap.set("t", "<C-w>", _3_)
