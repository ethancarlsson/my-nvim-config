(local fterm (require "FTerm"))

(vim.keymap.set "n" "\\\\"
    (fn [] (fterm:toggle))
)


(local lazy_git (fterm:new { :ft "lazy_git" :cmd "lazygit" }))

(vim.keymap.set "n" "\\g"
    (fn [] (lazy_git:toggle))
)

(vim.keymap.set "t" "<C-w>"
    (fn [] (lazy_git:close)
        (fterm:close)
    )
)
