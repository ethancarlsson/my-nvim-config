[:rhysd/reply.vim
 :tpope/vim-surround
 :tpope/vim-sleuth
 {1 :folke/which-key.nvim :opts {}}
 {1 :nvim-lualine/lualine.nvim
  :opts {:options {:component_separators "|"
                   :icons_enabled false
                   :section_separators ""}}}
 {1 :lukas-reineke/indent-blankline.nvim
  :opts {:char "┊"
         :char_highlight_list [:IndentBlanklineIndent1
                               :IndentBlanklineIndent2
                               :IndentBlanklineIndent3
                               :IndentBlanklineIndent4
                               :IndentBlanklineIndent5
                               :IndentBlanklineIndent6]
         :show_current_context true
         :show_end_of_line true
         :space_char_blankline " "}
  :version :v2.20.8}
 {1 :numToStr/Comment.nvim
  :opts {:extra {:above :<space>/O :below :<space>/o :eol :<space>/a}
         :opleader {:block :<space>? :line :<space>/}
         :toggler {:block :<space>? :line :<space>/}}}
 {1 :brianhuster/autosave.nvim :enabled true :event :InsertEnter :opts {}}]
