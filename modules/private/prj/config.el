;;; private/prj/config.el -*- lexical-binding: t; -*-

(def-package! helm-make
  :after helm
  :config
    (map!
   ;; localleader
   :m "," nil
   (:leader
     (:desc "lsp" :prefix "c"
       :n "c" #'helm-make-projectile
       )))
  )

(def-package! helm-ctest
  :after helm)
