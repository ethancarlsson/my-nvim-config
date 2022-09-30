require("plugins")

require("mason").setup()

vim.g.mapleader = " "

-- wrap
vim.cmd("set nowrap")

-- numbers
vim.cmd("set rnu")
vim.cmd("set nu")

-- tabs
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=0")
vim.cmd("set expandtab")


-- colorscheme
vim.cmd("colorscheme seoul256")

vim.cmd("let g:seoul256_background = 234")
vim.cmd("colo seoul256")

-- save and format on escape key press
vim.api.nvim_set_keymap('i', '<ESC>', '<ESC>:lua vim.lsp.buf.formatting_sync(nil, 10000)<CR>:w<CR>', { noremap = true })

-- same on normal mode for convenience
vim.api.nvim_set_keymap('n', '<ESC>', '<ESC>:lua vim.lsp.buf.formatting_sync(nil, 10000)<CR>:w<CR>', { noremap = true })

-- open file tree to the side
vim.api.nvim_set_keymap('n', '<Leader>o', ':Vex<CR>', { noremap = true })

-- open file tree full screen
vim.api.nvim_set_keymap('n', '<Leader>O', ':Rex<CR>', { noremap = true })

-- full screen current buffer, write all open buffers, and close them
vim.api.nvim_set_keymap('n', '<Leader><Leader>', ':%bd|e#<CR><CR>', { noremap = true })

-- floattterm
vim.api.nvim_set_keymap('n', "<leader>\\", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ", { noremap = true })
vim.api.nvim_set_keymap('n', "\\", ":FloatermToggle myfloat<CR>", { noremap = true })
vim.api.nvim_set_keymap('t', "<Esc>", "<C-\\><C-n>:q<CR>", { noremap = true })


-- repeat previous command
vim.api.nvim_set_keymap('n', "<leader>r", ":<Up><CR>", { noremap = true })


-- auto-close
vim.api.nvim_set_keymap('i', "{<CR>", "{<CR>}<ESC>O", { noremap = true })



vim.cmd('autocmd TextChanged,TextChangedI . silent write')


-- fzf
vim.api.nvim_set_keymap('n', "<C-p>", ":FZF<CR>", { noremap = true })
vim.api.nvim_set_keymap('i', "<C-p>", ":FZF<CR>", { noremap = true })
vim.api.nvim_set_keymap('v', "<C-p>", ":FZF<CR>", { noremap = true })


-- language specific
local rt = {
    server = {
        settings = {
            on_attach = function(_, bufnr)
                -- Hover actions
                vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })

                -- Code action groups
                vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                require 'illuminate'.on_attach(client)
            end,
            ["rust-analyzer"] = {
                checkOnSave = {
                    command = "clippy"
                }, 
            },
        }
    },
}

require('rust-tools').setup(rt)

-- Treesitter Plugin Setup 
require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "rust", "toml", "go"},
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting=false,
  },
  ident = { enable = true }, 
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

-- LSP Diagnostics Options Setup 
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = '✗'})
sign({name = 'DiagnosticSignWarn', text = '⚠'})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})

-- Completion Plugin Setup
local cmp = require'cmp'
cmp.setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },
  -- Installed sources:
  sources = {
    { name = 'path' },                              -- file paths
    { name = 'nvim_lsp', keyword_length = 3 },      -- from language server
    { name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized
    { name = 'nvim_lua', keyword_length = 2},       -- complete neovim's Lua runtime API such vim.lsp.*
    { name = 'buffer', keyword_length = 2 },        -- source current buffer
    { name = 'vsnip', keyword_length = 2 },         -- nvim-cmp source for vim-vsnip 
    { name = 'calc'},                               -- source for math calculation
  },
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
  formatting = {
      fields = {'menu', 'abbr', 'kind'},
      format = function(entry, item)
          local menu_icon ={
              nvim_lsp = 'λ',
              vsnip = '⋗',
              buffer = 'Ω',
              path = '🖫',
          }
          item.menu = menu_icon[entry.source.name]
          return item
      end,
  },
})

-- Imported mapping
require("lsp_config")

-- netrw
vim.cmd("let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'")
vim.cmd("autocmd FileType netrw setl bufhidden=delete") -- https://github.com/tpope/vim-vinegar/issues/13#issuecomment-47133890

-- comments
require('Comment').setup({
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
        ---Line-comment toggle keymap
        line = '<space>/',
        ---Block-comment toggle keymap
        block = '<space>?',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = '<space>/',
        ---Block-comment keymap
        block = '<space>?',
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = '<space>/O',
        ---Add comment on the line below
        below = '<space>/o',
        ---Add comment at the end of line
        eol = '<space>/a',
    },
})
