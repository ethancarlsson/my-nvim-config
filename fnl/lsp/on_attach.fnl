;  This function gets run when an LSP connects to a particular buffer.
(fn on-attach [ev _]
  (when (not= ev.buf nil)
    (local bufnr ev.buf)

    (fn nmap [keys func desc]
      (when desc (set-forcibly! desc (.. "LSP: " desc)))
      (vim.keymap.set :n keys func {:buffer bufnr : desc}))

    (nmap :<leader>rn vim.lsp.buf.rename "[R]e[n]ame")
    (nmap :<leader>a vim.lsp.buf.code_action "Code [A]ction")
    (vim.keymap.set :v :<leader>a vim.lsp.buf.code_action
                    {:buffer bufnr :desc "Code [A]ction"})
    (nmap :gd vim.lsp.buf.definition "[G]oto [D]efinition")
    (nmap :gr (. (require :telescope.builtin) :lsp_references)
          "[G]oto [R]eferences")
    (nmap :gI vim.lsp.buf.implementation "[G]oto [I]mplementation")
    (nmap :<leader>D vim.lsp.buf.type_definition "Type [D]efinition")
    (nmap :<leader>ds (. (require :telescope.builtin) :lsp_document_symbols)
          "[D]ocument [S]ymbols")
    (nmap :<leader>ws (. (require :telescope.builtin)
                         :lsp_dynamic_workspace_symbols)
          "[W]orkspace [S]ymbols") ; See `:help K` for why this keymap
    (nmap :K vim.lsp.buf.hover "Hover Documentation")
    (nmap :<C-k> vim.lsp.buf.signature_help "Signature Documentation") ; Lesser used LSP functionality
    (nmap :gD vim.lsp.buf.declaration "[G]oto [D]eclaration")
    (nmap :<leader>oa vim.lsp.buf.add_workspace_folder
          "W[o]rkspace [A]dd Folder")
    (nmap :<leader>or vim.lsp.buf.remove_workspace_folder
          "W[o]rkspace [R]emove Folder")
    (nmap :<leader>ol
          (fn []
            (print (vim.inspect (vim.lsp.buf.list_workspace_folders))))
          "W[o]rkspace [L]ist Folders") ; Create a command `:Format` local to the LSP buffer

    (vim.api.nvim_buf_create_user_command bufnr :Format
                                          (require :lsp.formatting.format)
                                          {:desc "Format current buffer with LSP"})
    (nmap :<leader>l :<cmd>Format<CR> "Format the buffer")
    ))

on-attach
