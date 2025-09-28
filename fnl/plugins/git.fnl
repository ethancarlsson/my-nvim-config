[; Adds git related signs to the gutter, as well as utilities
 ; for managing changes
 {1 :lewis6991/gitsigns.nvim
  :opts {:on_attach (fn [bufnr]
                      (local gitsigns (require :gitsigns))
                      (vim.keymap.set :n :<leader>gp
                                      (fn [] (gitsigns.nav_hunk :prev))
                                      {:buffer bufnr
                                       :desc "[G]o to [P]revious Hunk"})
                      (vim.keymap.set :n :<leader>gn
                                      (fn [] (gitsigns.nav_hunk :next))
                                      {:buffer bufnr
                                       :desc "[G]o to [N]ext Hunk"})
                      (vim.keymap.set :n :<leader>ph gitsigns.preview_hunk
                                      {:buffer bufnr :desc "[P]review [H]unk"})
                      (vim.keymap.set :n :<leader>gb
                                      (fn [] (gitsigns.blame_line {:full true}))
                                      {:buffer bufnr :desc "[G]it [B]lame"})
                      (vim.keymap.set :n :<leader>gB gitsigns.blame
                                      {:buffer bufnr
                                       :desc "[G]it [B]lame buffer"})
                      (vim.keymap.set :n :<leader>gs gitsigns.stage_hunk
                                      {:buffer bufnr :desc "[S]tage Hunk"})
                      (vim.keymap.set :v :<leader>gs
                                      (fn []
                                        (gitsigns.stage_hunk [(vim.fn.line ".")
                                                              (vim.fn.line :v)]))
                                      {:buffer bufnr :desc "[S]tage Hunk"})
                      (vim.keymap.set :n :<leader>gr gitsigns.reset_hunk
                                      {:buffer bufnr :desc "[R]eset Hunk"})
                      (vim.keymap.set :n :<leader>gS gitsigns.stage_buffer
                                      {:buffer bufnr :desc "[S]tage buffer"})
                      (vim.keymap.set :n :<leader>gR gitsigns.stage_buffer
                                      {:buffer bufnr :desc "[R]eset buffer"})
                      (vim.keymap.set :n :<leader>gp gitsigns.preview_hunk
                                      {:buffer bufnr :desc "[P]review hunk"})
                      (vim.keymap.set :n :<leader>gi gitsigns.preview_hunk
                                      {:buffer bufnr
                                       :desc "Preview hunk [I]nline"})
                      (vim.keymap.set :n :<leader>gd gitsigns.diffthis
                                      {:buffer bufnr :desc "[G]it [D]iff"})
                      (vim.keymap.set :n :<leader>gD
                                      (fn [] (gitsigns.diffthis "~1"))
                                      {:buffer bufnr
                                       :desc "[G]it [D]iff last commit"}))
         :signs {:add {:text "+"}
                 :change {:text "~"}
                 :changedelete {:text "~"}
                 :delete {:text "_"}
                 :topdelete {:text "‾"}}}}]
