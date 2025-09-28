{1 :kristijanhusak/vim-dadbod-ui
 :cmd [:DBUI :DBUIToggle :DBUIAddConnection :DBUIFindBuffer]
 :dependencies [{1 :tpope/vim-dadbod :lazy true}
                {1 :kristijanhusak/vim-dadbod-completion
                 :ft [:sql :mysql :plsql]
                 :lazy true}]
 :init (fn [] (set vim.g.db_ui_use_nerd_fonts 1))}
