-- [nfnl] fnl/lsp/on_attach.fnl
local function on_attach(ev, _)
  if (ev.buf ~= nil) then
    local bufnr = ev.buf
    local function nmap(keys, func, desc)
      if desc then
        desc = ("LSP: " .. desc)
      else
      end
      return vim.keymap.set("n", keys, func, {buffer = bufnr, desc = desc})
    end
    nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
    nmap("<leader>a", vim.lsp.buf.code_action, "Code [A]ction")
    vim.keymap.set("v", "<leader>a", vim.lsp.buf.code_action, {buffer = bufnr, desc = "Code [A]ction"})
    nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
    nmap("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
    nmap("gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
    nmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")
    nmap("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
    nmap("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")
    nmap("K", vim.lsp.buf.hover, "Hover Documentation")
    nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")
    nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
    nmap("<leader>oa", vim.lsp.buf.add_workspace_folder, "W[o]rkspace [A]dd Folder")
    nmap("<leader>or", vim.lsp.buf.remove_workspace_folder, "W[o]rkspace [R]emove Folder")
    local function _2_()
      return print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end
    nmap("<leader>ol", _2_, "W[o]rkspace [L]ist Folders")
    vim.api.nvim_buf_create_user_command(bufnr, "Format", require("lsp.formatting.format"), {desc = "Format current buffer with LSP"})
    return nmap("<leader>l", "<cmd>Format<CR>", "Format the buffer")
  else
    return nil
  end
end
return on_attach
