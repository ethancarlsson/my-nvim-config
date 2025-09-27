-- [nfnl] fnl/colorscheme.fnl
local gb = require("gruvbox")
gb.setup({terminal_colors = true, undercurl = true, underline = true, bold = true, italic = {strings = true, emphasis = true, comments = true, folds = true, operators = false}, strikethrough = true, inverse = true, contrast = "", palette_overrides = {}, overrides = {}, transparent_mode = true, dim_inactive = false, invert_intend_guides = false, invert_selection = false, invert_signs = false, invert_tabline = false})
vim.o.background = "light"
vim.cmd("colorscheme gruvbox")
return vim.cmd("highlight NeotestPassed guifg=#98971a\n\9highlight NeotestFailed guifg=#cc241d\n\9highlight NeotestRunning guifg=#d79921\n\9highlight NeotestSkipped guifg=#468588")
