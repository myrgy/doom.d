;;; private/lsp/autoload.el -*- lexical-binding: t; -*-


;; (defun +advice/xref-set-jump (&rest args)
;;   (lsp-ui-peek--with-evil-jumps (evil-set-jump)))
;; (advice-add '+lookup/definition :before #'+advice/xref-set-jump)
;; (advice-add '+lookup/references :before #'+advice/xref-set-jump)

;; ;;; Override
;; ;; This function is transitively called by xref-find-{definitions,references,apropos}
;; (after! xref
;;   ;; This is required to make `xref-find-references' not give a prompt.
;;   ;; `xref-find-references' asks the identifier (which has no text property)
;;   ;; and then passes it to `lsp-mode', which requires the text property at
;;   ;; point to locate the references.
;;   ;; https://debbugs.gnu.org/cgi/bugreport.cgi?bug=29619
;;   (setq xref-prompt-for-identifier '(not xref-find-definitions
;;                                          xref-find-definitions-other-window
;;                                          xref-find-definitions-other-frame
;;                                          xref-find-references))

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
