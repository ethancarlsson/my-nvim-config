(set vim.g.mapleader " ")

-- general options
(set vim.g.mapleader " ")
(set vim.g.maplocalleader ",")
(set vim.o.autowrite true)

(vim.filetype.add { :extension { :ua "uiua" } })
(vim.filetype.add { :extension { :templ "templ" } })

-- window options
(set vim.wo.colorcolumn "80")
(set vim.wo.relativenumber true)
(set vim.wo.number true)
(set vim.wo.signcolumn "yes")

-- options
(set vim.o.clipboard "unnamedplus")
(set vim.o.ignorecase true)
(set vim.o.smartcase true)

-- Decrease update time
(set vim.o.updatetime 250)
(set vim.o.timeoutlen 300)

-- Set completeopt to have a better completion experience
(set vim.o.completeopt "menuone,noselect")

(set vim.o.termguicolors true)

-- Set completeopt to have a better completion experience
(set vim.o.completeopt "menuone,noselect")
(set vim.o.splitright true)

(set vim.o.wrap false)

(vim.api.nvim_create_autocmd 
  "TextYankPost" 
  {
    :group (vim.api.nvim_create_augroup "highlight_yank" {})
    :desc "Hightlight selection on yank"
    :pattern "*"
    :callback (λ [] (vim.highlight.on_yank { :higroup "IncSearch" :timeout 500 }))
  }
)
