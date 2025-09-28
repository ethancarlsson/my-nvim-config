[{1 :nvim-neotest/neotest
  :config (fn []
            ((. (require :neotest) :setup) {:adapters [(require :neotest-go)
                                                       ((require :neotest-jest) {:cwd (fn [path]
                                                                                        (vim.fn.getcwd))
                                                                                 :env {:CI true}
                                                                                 :jestCommand "npm test --"
                                                                                 :jestConfigFile :custom.jest.config.ts})]}))
  :dependencies [:nvim-neotest/nvim-nio
                 :nvim-lua/plenary.nvim
                 :antoinemadec/FixCursorHold.nvim
                 :nvim-treesitter/nvim-treesitter
                 :nvim-neotest/neotest-jest
                 :nvim-neotest/neotest-go]}]	
