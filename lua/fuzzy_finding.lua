-- [nfnl] fnl/fuzzy_finding.fnl
local telescope = require("telescope")
telescope.setup({defaults = {mappings = {i = {["<C-d>"] = false, ["<C-u>"] = false}}}})
local function with_builtin(f)
  return f(require("telescope.builtin"))
end
local function _1_(b)
  return b.oldfiles
end
vim.keymap.set("n", "<leader>e", with_builtin(_1_), {desc = "[?] Find recently opened files"})
local function _2_(b)
  return b.buffers
end
vim.keymap.set("n", "<leader><space>", with_builtin(_2_), {desc = "[ ] Find existing buffers"})
local function _3_(b)
  return b.git_files
end
vim.keymap.set("n", "<leader>gf", with_builtin(_3_), {desc = "Search [G]it [F]iles"})
local function _4_(b)
  return b.find_files
end
vim.keymap.set("n", "<leader>sf", with_builtin(_4_), {desc = "[S]earch [F]iles"})
local function _5_(b)
  local function _6_()
    return b.find_files({cwd = vim.fn.expand("%:p:h")})
  end
  return _6_
end
vim.keymap.set("n", "<leader>s-", with_builtin(_5_), {desc = "[S]earch Files in buffer directory"})
local function _7_(b)
  local function _8_()
    return b.find_files({cwd = vim.fn.expand("%:p:h:h")})
  end
  return _8_
end
vim.keymap.set("n", "<leader>s=", with_builtin(_7_), {desc = "[S]earch Files 2 directories up from buffer directory"})
local function _9_(b)
  return b.help_tags
end
vim.keymap.set("n", "<leader>sh", with_builtin(_9_), {desc = "[S]earch [H]elp"})
local function _10_(b)
  return b.grep_string
end
vim.keymap.set("n", "<leader>sw", with_builtin(_10_), {desc = "[S]earch current [W]ord"})
local function _11_(b)
  return b.live_grep
end
vim.keymap.set("n", "<leader>sg", with_builtin(_11_), {desc = "[S]earch by [G]rep"})
local function _12_(b)
  return b.diagnostics
end
return vim.keymap.set("n", "<leader>sd", with_builtin(_12_), {desc = "[S]earch [D]iagnostics"})
