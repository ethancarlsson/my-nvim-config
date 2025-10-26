[]
; [{1 :nvim-neorg/neorg
;   :build ":Neorg sync-parsers"
;   :config (fn []
;             ((. (require :neorg) :setup) {:load {:core.concealer {}
;                                                  :core.defaults {}
;                                                  :core.dirman {:config {:workspaces {:notes "~/notes"}}}
;                                                  :core.export {}}}))
;   :dependencies [:nvim-lua/plenary.nvim]}]
