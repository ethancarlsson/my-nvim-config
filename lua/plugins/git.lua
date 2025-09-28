-- [nfnl] fnl/plugins/git.fnl
local function _1_(bufnr)
  local gitsigns = require("gitsigns")
  local function _2_()
    return gitsigns.nav_hunk("prev")
  end
  vim.keymap.set("n", "<leader>gp", _2_, {buffer = bufnr, desc = "[G]o to [P]revious Hunk"})
  local function _3_()
    return gitsigns.nav_hunk("next")
  end
  vim.keymap.set("n", "<leader>gn", _3_, {buffer = bufnr, desc = "[G]o to [N]ext Hunk"})
  vim.keymap.set("n", "<leader>ph", gitsigns.preview_hunk, {buffer = bufnr, desc = "[P]review [H]unk"})
  local function _4_()
    return gitsigns.blame_line({full = true})
  end
  vim.keymap.set("n", "<leader>gb", _4_, {buffer = bufnr, desc = "[G]it [B]lame"})
  vim.keymap.set("n", "<leader>gB", gitsigns.blame, {buffer = bufnr, desc = "[G]it [B]lame buffer"})
  vim.keymap.set("n", "<leader>gs", gitsigns.stage_hunk, {buffer = bufnr, desc = "[S]tage Hunk"})
  local function _5_()
    return gitsigns.stage_hunk({vim.fn.line("."), vim.fn.line("v")})
  end
  vim.keymap.set("v", "<leader>gs", _5_, {buffer = bufnr, desc = "[S]tage Hunk"})
  vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, {buffer = bufnr, desc = "[R]eset Hunk"})
  vim.keymap.set("n", "<leader>gS", gitsigns.stage_buffer, {buffer = bufnr, desc = "[S]tage buffer"})
  vim.keymap.set("n", "<leader>gR", gitsigns.stage_buffer, {buffer = bufnr, desc = "[R]eset buffer"})
  vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, {buffer = bufnr, desc = "[P]review hunk"})
  vim.keymap.set("n", "<leader>gi", gitsigns.preview_hunk, {buffer = bufnr, desc = "Preview hunk [I]nline"})
  vim.keymap.set("n", "<leader>gd", gitsigns.diffthis, {buffer = bufnr, desc = "[G]it [D]iff"})
  local function _6_()
    return gitsigns.diffthis("~1")
  end
  return vim.keymap.set("n", "<leader>gD", _6_, {buffer = bufnr, desc = "[G]it [D]iff last commit"})
end
return {{"lewis6991/gitsigns.nvim", opts = {on_attach = _1_, signs = {add = {text = "+"}, change = {text = "~"}, changedelete = {text = "~"}, delete = {text = "_"}, topdelete = {text = "\226\128\190"}}}}}
