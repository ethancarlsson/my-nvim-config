[{1 "ethancarlsson/conjure"
  :ft [:fennel :go]
  :lazy true
  :init (fn [])
  :dependencies [:PaterJason/cmp-conjure]}
 {1 :PaterJason/cmp-conjure
  :config (fn [] (local cmp (require :cmp)) (local config (cmp.get_config))
            (table.insert config.sources {:name :conjure})
            (cmp.setup config))
  :lazy true}]
