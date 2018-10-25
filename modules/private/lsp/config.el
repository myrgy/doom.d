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
  :init
  (require 'lsp-imenu)
  (add-hook 'lsp-after-open-hook 'lsp-enable-imenu))

(def-package! lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :init
  ;; include type signature in the child frame
  (setq lsp-ui-doc-include-signature (featurep! +doc))
  ;; show symbol on the right of info
  (setq lsp-ui-sideline-show-symbol (featurep! +sideline)))

(def-package! company-lsp
  :after company
  :init
  (setq company-transformers nil
        company-lsp-async t
        company-lsp-cache-candidates nil))
