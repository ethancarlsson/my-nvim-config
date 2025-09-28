; [[ Configure Telescope ]]
; See `:help telescope` and `:help telescope.setup()`
(local telescope (require :telescope))
(telescope.setup {:defaults {:mappings {:i {:<C-u> false :<C-d> false}}}})

; See `:help telescope.builtin`

(fn with-builtin [f] (f (require :telescope.builtin)))

(vim.keymap.set :n :<leader>e (with-builtin (fn [b] b.oldfiles))
                {:desc "[?] Find recently opened files"})

(vim.keymap.set :n :<leader><space> (with-builtin (fn [b] b.buffers))
                {:desc "[ ] Find existing buffers"})

(vim.keymap.set :n :<leader>gf (with-builtin (fn [b] b.git_files))
                {:desc "Search [G]it [F]iles"})

(vim.keymap.set :n :<leader>sf (with-builtin (fn [b] b.find_files))
                {:desc "[S]earch [F]iles"})

(vim.keymap.set :n :<leader>s-
                (with-builtin (fn [b]
                                (fn []
                                  (b.find_files {:cwd (vim.fn.expand "%:p:h")}))))
                {:desc "[S]earch Files in buffer directory"})

(vim.keymap.set :n :<leader>s=
                (with-builtin (fn [b]
                                (fn []
                                  (b.find_files {:cwd (vim.fn.expand "%:p:h:h")}))))
                {:desc "[S]earch Files 2 directories up from buffer directory"})

(vim.keymap.set :n :<leader>sh (with-builtin (fn [b] b.help_tags))
                {:desc "[S]earch [H]elp"})

(vim.keymap.set :n :<leader>sw (with-builtin (fn [b] b.grep_string))
                {:desc "[S]earch current [W]ord"})

(vim.keymap.set :n :<leader>sg (with-builtin (fn [b] b.live_grep))
                {:desc "[S]earch by [G]rep"})

(vim.keymap.set :n :<leader>sd (with-builtin (fn [b] b.diagnostics))
                {:desc "[S]earch [D]iagnostics"})
