(set vim.g.neoformat_try_node_exe 1)

(fn [_]
  (case vim.bo.filetype
   :json ((fn []
             (local curr-pos
                    (vim.api.nvim_win_get_cursor (vim.api.nvim_get_current_win)))
             (vim.cmd "%!jq '.'")
             (vim.api.nvim_win_set_cursor (vim.api.nvim_get_current_win)
                                          curr-pos)))
    :uiua ((fn []
             (local curr-pos
                    (vim.api.nvim_win_get_cursor (vim.api.nvim_get_current_win)))
             (vim.cmd "%!jq '.'")
             (vim.api.nvim_win_set_cursor (vim.api.nvim_get_current_win)
                                          curr-pos)))
    _ (vim.cmd "silent Neoformat")))
