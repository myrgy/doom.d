;;; private/lsp/autoload.el -*- lexical-binding: t; -*-


;; (defun +advice/xref-set-jump (&rest args)
;;   (lsp-ui-peek--with-evil-jumps (evil-set-jump)))
;; (advice-add '+lookup/definition :before #'+advice/xref-set-jump)
;; (advice-add '+lookup/references :before #'+advice/xref-set-jump)



;;   (defun xref--show-xrefs (xrefs display-action &optional always-show-list)
;;     ;; PATCH
;;     (lsp-ui-peek--with-evil-jumps (evil-set-jump))

;;     ;; PATCH Jump to the first candidate
;;     (if (not (cdr xrefs))
;;         (xref--pop-to-location (car xrefs) display-action)
;;       (funcall xref-show-xrefs-function xrefs
;;                `((window . ,(selected-window))))
;;       ))
;; )
