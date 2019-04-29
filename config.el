;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq-default
 user-full-name    "Alexander Dalshov"
 user-mail-address "dalshov@gmail.com")

;; (with-eval-after-load "helm"
;;   (defun helm-persistent-action-display-window (&optional split-onewindow)
;;     "Return the window that will be used for persistent action.
;; If SPLIT-ONEWINDOW is non-`nil' window is split in persistent action."
;;     (with-helm-window
;;          (setq helm-persistent-action-display-window (get-mru-window)))))


(with-eval-after-load "projectile"
   (map!
   ;; localleader
   :m "," nil
   (:leader
     (:prefix "p"
         :n "T" #'projectile-test-project
         :n "C" #'projectile-configure-project
     ))))

;; (setq
;;  ;; use gdb-many-windows by default
;;  gdb-many-windows t
;;  ;; Non-nil means display source file containing the main routine at startup
;;  gdb-show-main t
;; )

(setq lsp-haskell-process-path-hie "~/.local/bin/hie-wrapper")
;; (setq lsp-enable-on-type-formatting nil)
;; (setq lsp-enable-indentation nil)
;; (setq lsp-imenu-show-container-name t)

;;(def-package! gdb-mi
;;  :init
;;  (fmakunbound 'gdb)
;;  (fmakunbound 'gdb-enable-debug))
