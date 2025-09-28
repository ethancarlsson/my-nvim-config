[{1 :nvim-telescope/telescope.nvim
  :branch :0.1.x
  :dependencies [:nvim-lua/plenary.nvim
                 {1 :nvim-telescope/telescope-fzf-native.nvim
                  :build :make
                  :cond (fn [] (= (vim.fn.executable :make) 1))}]}]
