-- [nfnl] fnl/lsp/formatting/format.fnl
vim.g.neoformat_try_node_exe = 1
print("testing")
local function _1_(_)
  local _2_ = vim.bo.filetype
  if (_2_ == "json") then
    local function _3_()
      local curr_pos = vim.api.nvim_win_get_cursor(vim.api.nvim_get_current_win())
      vim.cmd("%!jq '.'")
      return vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), curr_pos)
    end
    return _3_()
  elseif (_2_ == "uiua") then
    local function _4_()
      local curr_pos = vim.api.nvim_win_get_cursor(vim.api.nvim_get_current_win())
      vim.cmd("%!jq '.'")
      return vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), curr_pos)
    end
    return _4_()
  else
    local _0 = _2_
    return vim.cmd("silent Neoformat")
  end
end
return _1_
