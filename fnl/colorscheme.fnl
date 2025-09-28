(local gb (require :gruvbox))
(gb.setup {:terminal_colors true
           :undercurl true
           :underline true
           :bold true
           :italic {:strings true
                    :emphasis true
                    :comments true
                    :operators false
                    :folds true}
           :strikethrough true
           :invert_selection false
           :invert_signs false
           :invert_tabline false
           :invert_intend_guides false
           :inverse true
           :contrast ""
           :palette_overrides {}
           :overrides {}
           :dim_inactive false
           :transparent_mode true})

(set vim.o.background :light)
(vim.cmd "colorscheme gruvbox")

(vim.cmd "highlight NeotestPassed guifg=#98971a
\thighlight NeotestFailed guifg=#cc241d
\thighlight NeotestRunning guifg=#d79921
\thighlight NeotestSkipped guifg=#468588")
