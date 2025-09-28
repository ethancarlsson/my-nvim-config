[; LSP Configuration & Plugins
 {1 :neovim/nvim-lspconfig
  :dependencies [{1 :williamboman/mason.nvim :config true}
                 :williamboman/mason-lspconfig.nvim
                 {1 :j-hui/fidget.nvim :opts {} :tag :legacy}
                 :folke/neodev.nvim]}
 ; Autocompletion
 {1 :hrsh7th/nvim-cmp
  :dependencies [{1 :L3MON4D3/LuaSnip :version :v2.*}
                 :saadparwaiz1/cmp_luasnip
                 :hrsh7th/cmp-nvim-lsp
                 :rafamadriz/friendly-snippets]
  :opts (fn [_ opts]
          (set opts.sources (or opts.sources {}))
          (table.insert opts.sources {:group_index 0 :name :lazydev}))}
 {1 :folke/lazydev.nvim
  :ft :lua
  :opts {:library [{:path "${3rd}/luv/library" :words ["vim%.uv"]}]}}]
