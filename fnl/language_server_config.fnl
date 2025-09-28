; nvim-cmp supports additional completion capabilities,
; so broadcast that to servers
(local cmp-nvim-lsp (require :cmp_nvim_lsp))
(local mason_lspconfig (require :mason-lspconfig))
(local servers (require :lsp/language_servers))
(local on_attach (require :lsp/on_attach))

(local caps (-> (vim.lsp.protocol.make_client_capabilities)
                (cmp-nvim-lsp.default_capabilities)))

(vim.lsp.config "*" {:capabilities caps})

(vim.api.nvim_create_autocmd :LspAttach {:callback on_attach})

(mason_lspconfig.setup {:automatic_enable true :ensure_installed servers})

; Specific lsp configs
(set vim.lsp.config.fennel_ls {: on_attach})

(set vim.lsp.config.ccls {:init_options {:cache {:directory :.ccls-cache}}})

(set vim.lsp.config.templ {})
(set vim.lsp.config.bqnlsp {})

(set vim.lsp.config.ts_ls
     {:settings {:typescript {:tsserver {:useSyntaxServer false}
                              :inlayHints {:includeInlayParameterNameHints :all
                                           :includeInlayParameterNameHintsWhenArgumentMatchesName true
                                           :includeInlayFunctionParameterTypeHints true
                                           :includeInlayVariableTypeHints true
                                           :includeInlayVariableTypeHintsWhenTypeMatchesName true
                                           :includeInlayPropertyDeclarationTypeHints true
                                           :includeInlayFunctionLikeReturnTypeHints true
                                           :includeInlayEnumMemberValueHints true}}}})

; [[ Configure nvim-cmp ]]
; See `:help cmp`
(local cmp (require :cmp))
(local luasnip (require :luasnip))
(local luasnip-loader (require :luasnip.loaders.from_vscode))

(luasnip-loader.lazy_load)
(luasnip.config.setup {})

(cmp.setup {:snippet {:expand (fn [args] (luasnip.lsp_expand args.body))}
            :mapping (cmp.mapping.preset.insert {:<C-n> (cmp.mapping.select_next_item)
                                                 :<C-p> (cmp.mapping.select_prev_item)
                                                 :<C-u> (cmp.mapping.scroll_docs -4)
                                                 :<C-d> (cmp.mapping.scroll_docs 4)
                                                 :<C-Space> (cmp.mapping.complete {})
                                                 :<CR> (cmp.mapping.confirm {:behavior cmp.ConfirmBehavior.Replace
                                                                             :select true})
                                                 :<Tab> (cmp.mapping (fn [fallback]
                                                                       (if (cmp.visible)
                                                                           (cmp.select_next_item)
                                                                           (fallback)))
                                                                     [:i :s])
                                                 :<S-Tab> (cmp.mapping (fn [fallback]
                                                                         (if (cmp.visible)
                                                                             (cmp.select_prev_item)
                                                                             (fallback)))
                                                                       [:i :s])})
            :sources [{:name :nvim_lsp} {:name :luasnip} {:name :nvim_hurl}]})
