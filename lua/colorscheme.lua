require('catppuccin').setup({
    flavour = 'mocha', -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = 'latte',
        dark = 'mocha',
    },
    transparent_background = true, -- disables setting the background color.
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = 'dark',
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { 'italic' }, -- Change the style of comments
        conditionals = { 'italic' },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = function(colors)
        return {
            Comment = { fg = colors.teal },
            LineNr = { fg = colors.yellow },
            CmpBorder = { fg = colors.surface2 },
            Pmenu = { bg = colors.none },
        }
    end,
    integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        telescope = {
            enabled = true,
        },
    },
})

-- setup must be called before loading
vim.cmd.colorscheme 'catppuccin'


vim.cmd [[highlight IndentBlanklineIndent1 guifg=green gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=teal gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=yellow gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=peach gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=maroon gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=red gui=nocombine]]
