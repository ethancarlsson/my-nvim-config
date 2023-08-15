local fterm = require('FTerm')

vim.keymap.set(
    'n',
    '\\\\',
    function ()
        fterm:toggle()
    end
)


local lazy_git = fterm:new({ ft = 'lazy_git', cmd = "lazygit" })

vim.keymap.set(
    'n',
    '\\g',
    function ()
        lazy_git:toggle()
    end
)

vim.keymap.set(
    't',
    '<C-w>',
    function ()
        lazy_git:close()
        fterm:close()
    end
)
