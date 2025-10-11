[]
; [{1 :zbirenbaum/copilot.lua
;   :cmd :Copilot
;   :config (fn []
;             ((. (require :copilot) :setup) {}))
;   :event :InsertEnter}
;  {1 :CopilotC-Nvim/CopilotChat.nvim
;   :build "make tiktoken"
;   :config {:mappings {:reset {:callback (fn []
;                                           ((. (require :CopilotChat) :reset)))
;                               :insert :<C-r>
;                               :normal :<C-r>}}}
;   :dependencies [[:github/copilot.vim]
;                  {1 :nvim-lua/plenary.nvim :branch :master}]}]
