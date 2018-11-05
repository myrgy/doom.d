;;; lsp/config.el -*- lexical-binding: t; -*-

;; (def-package! lsp-mode
;;   :commands (lsp-mode lsp-define-stdio-client))
;; (def-package! lsp-ui
;;   :hook (lsp-mode . lsp-ui-mode)
;;   :config
;;   (set! :lookup 'lsp-ui-mode
;;     :definition #'lsp-ui-peek-find-definitions
;;     :references #'lsp-ui-peek-find-references)
;;   (setq lsp-ui-doc-max-height 8
;;         lsp-ui-doc-max-width 35
;;         lsp-ui-sideline-ignore-duplicate t))
;; (def-package! company-lsp
;;   :after lsp-mode
;;   :config
;;   (set! :company-backend 'lsp-mode '(company-lsp))
;;   (setq company-lsp-enable-recompletion t))


(def-package! lsp-mode
  ;; :init (setq lsp--json-array-use-vector t)
  ;; :commands (lsp-mode lsp-define-stdio-client)
  :after xref
  :init
  (require 'lsp-imenu)
  (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)
  (setq xref-prompt-for-identifier '(not xref-find-definitions
                                         xref-find-definitions-other-window
                                         xref-find-definitions-other-frame
                                         xref-find-references))
  :config
  (progn
    (evil-set-command-property 'lsp-goto-type-definition :jump t)
    (evil-set-command-property 'lsp-goto-implementation :jump t))
  )

(def-package! lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :config

  (evil-collection-lsp-ui-imenu-setup)

  (map! :map lsp-ui-peek-mode-map
        "h" 'lsp-ui-peek--select-prev-file
        "j" 'lsp-ui-peek--select-next
        "k" 'lsp-ui-peek--select-prev
        "l" 'lsp-ui-peek--select-next-file)
  (map!
   ;; localleader
   :m "," nil
   (:leader
     (:desc "lsp" :prefix "l"
       :n "=" #'lsp-format-buffer
       :n "a" #'lsp-execute-code-action
       :n "e" #'lsp-ui-flycheck-list
       :n "i" #'lsp-ui-imenu
       :n "r" #'lsp-rename
       :n "R" #'lsp-restart-workspace
       :n "w" #'lsp-ui-peek-find-workspace-symbol
       (:desc "toggle" :prefix "t"
         :n "l" #'lsp-ui-sideline-mode
         :n "d" #'lsp-ui-doc-mode
         ))
     ))
  ;; (set! :lookup 'lsp-ui-mode
  ;;   :definition #'lsp-ui-peek-find-definitions
  ;;   :references #'lsp-ui-peek-find-references)
  ;; (setq lsp-ui-doc-max-height 8
  ;;       lsp-ui-doc-max-width 35
  ;;       lsp-ui-sideline-ignore-duplicate t)


  :init
  (setq
   ;; include type signature in the child frame
   lsp-ui-doc-enable (featurep! +doc)
   lsp-ui-doc-include-signature (featurep! +doc)
   ;; show symbol on the right of info
   lsp-ui-sideline-enable (featurep! +sideline)
   lsp-ui-sideline-show-symbol (featurep! +sideline)
   ))


(def-package! company-lsp
  :after lsp-mode
  :config
  (set! :company-backend 'lsp-mode '(company-lsp))
  (setq company-lsp-enable-recompletion t)
  (setq company-transformers nil
        company-lsp-async t
        company-lsp-cache-candidates nil))
