;;; private/prj/config.el -*- lexical-binding: t; -*-

(def-package! helm-make
  :after helm
  :config (setq helm-mode-fuzzy-match t)
  ;; :config
  ;;   (map!
  ;;  ;; localleader
  ;;  :m "," nil
  ;;  (:leader
  ;;    (:desc "lsp" :prefix "c"
  ;;      :n "c" #'helm-make-projectile
  ;;      )))
  )

(def-package! helm-ctest
  :after helm)

(def-package! multi-compile
  :after helm)

(def-package! helm-make
  :when (featurep! :completion helm)
  :config (setq helm-make-completion-method 'helm))

(def-package! helm-make
  :when (featurep! :completion ivy)
  :config (setq helm-make-completion-method 'ivy))

(with-eval-after-load "projectile"
   (map!
   ;; localleader
   :m "," nil
   (:leader
     (:prefix "p"
         :n "c" #'helm-make-projectile
         :n "C" #'multi-compile-run
     ))))
